////////////////////////////////////////////////////////////////////////////////
//
// University of Michigan
//
// stonyman_2.c
//  Stonyman linux device driver (LKM).
////////////////////////////////////////////////////////////////////////////////

// includes
#include "stonyman_2.h"
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/interrupt.h>
#include <linux/spinlock.h>
#include <linux/slab.h>
#include <asm/uaccess.h>

typedef unsigned int  uint32;
typedef unsigned char uint8;

#define NUM_CAMS           (2)
//TODO: Chosen arbitrarily, maybe put some thought into this...?
#define NUM_BUFFER_FRAMES  (3)
#define RESOLUTION         (112*112)

// Device registers
// For register map, see imager_apb_interface.v
#define CAM_BASE_ADDR       (0x40060000)
#define CAM_DEV_OFFSET      (0x00000080)
#define CAM_DEV_WIDTH       (0x00000010)
#define CAM_DEV_ADDR(id)    (CAM_BASE_ADDR+CAM_DEV_OFFSET+CAM_DEV_WIDTH*id)

#define REG_R_GLOB_STATUS   (*((volatile uint32*)(CAM_BASE_ADDR+0x00)))
#define REG_W_GLOB_START    (*((volatile uint32*)(CAM_BASE_ADDR+0x00)))
#define REG_W_GLOB_RESET    (*((volatile uint32*)(CAM_BASE_ADDR+0x04)))
#define REG_W_GLOB_TIMING   (*((volatile uint32*)(CAM_BASE_ADDR+0x08)))

#define REG_R_CAM_STATUS(id)    (*((volatile uint32*)(CAM_DEV_ADDR(id)+0x00)))
#define REG_R_CAM_PXDATA(id)    (*((volatile uint32*)(CAM_DEV_ADDR(id)+0x04)))
#define REG_W_CAM_FRAMEMASK(id) (*((volatile uint32*)(CAM_DEV_ADDR(id)+0x00)))
#define REG_W_CAM_SETTINGS1(id) (*((volatile uint32*)(CAM_DEV_ADDR(id)+0x04)))
#define REG_W_CAM_SETTINGS2(id) (*((volatile uint32*)(CAM_DEV_ADDR(id)+0x08)))

// GPIO registers
#define GPIO_BASE_ADDR           (0x40013000)
#define GPIO_PIN_ADDR(pin)       (GPIO_BASE_ADDR+(pin*sizeof(uint32)))
#define GPIO_IRQ_OFFSET          (0x80)
#define GPIO_IRQ_ADDR            (GPIO_BASE_ADDR+GPIO_IRQ_OFFSET)
#define REG_W_GPIO_PIN_CFG(pin)  (*((volatile uint32*)(GPIO_PIN_ADDR(pin)+0x00)))
#define GPIO_PIN_FRAME_DONE(id)  (2*(id))
#define GPIO_PIN_AFULL(id)       (2*(id)+1)

#define REG_W_GPIO_IRQ             (*((volatile uint32*)(GPIO_IRQ_ADDR)))
#define GPIO_IRQ_NUM(pin)           ((pin)+32)
#define GPIO_IRQ_NUM_FRAME_DONE(id) GPIO_IRQ_NUM(GPIO_PIN_FRAME_DONE(id))
#define GPIO_IRQ_NUM_AFULL(id)      GPIO_IRQ_NUM(GPIO_PIN_AFULL(id))

// kernel definitions
#define DEVICE_NAME        ("stonyman")
#define DEVICE_NAME_IDX    ("stonyman%d")
#define DEVICE_CLASS_NAME  ("imaging")
#define MINOR_START        (0)

// Inlineable function that configures and enables interrupts on GPIO
static inline void gpio_enable_irq(uint8 pin) {
   // Herein I explain the magic from top to bottom:
   //    interrupt type set to positive edge triggered (neg edge is 3)
   //    interrupt enabled
   //    output buffer disabled
   //    input enabled
   //    output disabled

   REG_W_GPIO_PIN_CFG(pin) = (((2 & 0x07) << 5) |
                              ((1 & 0x01) << 3) |
                              ((0 & 0x01) << 2) |
                              ((1 & 0x01) << 1) |
                              ((0 & 0x01) << 0));
}

// Inlineable function that disables interrupts on GPIO
static inline void gpio_disable_irq(uint8 pin) {
   // Herein I explain the magic from top to bottom:
   //    interrupt type set to positive edge triggered (neg edge is 3)
   //    interrupt disabled
   //    output buffer disabled
   //    input enabled
   //    output disabled

   REG_W_GPIO_PIN_CFG(pin) = (((2 & 0x07) << 5) |
                              ((0 & 0x01) << 3) |
                              ((0 & 0x01) << 2) |
                              ((1 & 0x01) << 1) |
                              ((0 & 0x01) << 0));
}

// Inlineable function that clears interrupts on GPIO
static inline void gpio_clear_irq(uint8 pin) {
   REG_W_GPIO_IRQ |= (1 << pin);
}

// Inlineable function that applies settings to a camera
static inline void apply_settings(uint8 cam_id, uint8 vref, uint8 config,
         uint8 nbias, uint8 aobias, uint8 vsw, uint8 hsw) {

   REG_W_CAM_SETTINGS1(cam_id) = (((vref   & 0x3F) << 24) |
                                  ((config & 0x3F) << 16) |
                                  ((nbias  & 0x3F) <<  8) |
                                  ((aobias & 0x3F) <<  0));

   REG_W_CAM_SETTINGS2(cam_id) = (((vsw & 0xFF) << 8) |
                                  ((hsw & 0xFF) << 0));
}

// Inlineable function that applies timing settings to the verilog controller
static inline void apply_timing(uint8 track_counts, uint8 pulse_counts) {
   REG_W_GLOB_TIMING = (((track_counts & 0xFF) << 8) |
                        ((pulse_counts & 0xFF) << 0));
}

// local function prototypes
static int         stonyman_init(void);
static void        stonyman_exit(void);
static int         stonyman_open(struct inode* inode, struct file* filp);
static int         stonyman_release(struct inode* inode, struct file* filp);
static int         stonyman_ioctl(struct inode* inode, struct file* filp,
                                   unsigned int cmd, unsigned long arg);
static ssize_t     stonyman_read(struct file* filp, char __user* buff,
                                    size_t count, loff_t* offp);
static ssize_t     stonyman_write(struct file* filp, const char __user* buff, 
                                    size_t count, loff_t* offp);
static irqreturn_t stonyman_interrupt(int irq, void* dev_id, struct pt_regs* regs);

// kernel variables
static const struct file_operations stonyman_fops = {
   .read=stonyman_read,
   .write=stonyman_write,
   .open=stonyman_open,
   .release=stonyman_release,
   .ioctl=stonyman_ioctl
};
static unsigned char    initialization_status;
static uint8            irq_count;
static dev_t            stonyman_dev_num;
static struct cdev      stonyman_cdev;
static struct class*    stonyman_class;
static struct device*   stonyman_device [NUM_CAMS];

// device variables
// buffer for holding image data. Stores multiple frames for each camera
static spinlock_t* img_buf_lock;
static uint8* img_buf [NUM_CAMS][NUM_BUFFER_FRAMES];
static uint8  img_buf_has_data [NUM_CAMS][NUM_BUFFER_FRAMES];
static uint32 img_buf_head_pos [NUM_CAMS];
static uint32 img_buf_tail_pos [NUM_CAMS];
static uint32 img_buf_head_idx [NUM_CAMS];
static uint32 img_buf_tail_idx [NUM_CAMS];
static uint8 imager_capturing [NUM_CAMS];
static uint32 frames_captured;
static uint32 frames_read;
static uint32 frames_overrun;

static int stonyman_init(void) {
   int i, j;
   int error_code;

   frames_captured = 0;
   frames_read = 0;
   frames_overrun = 0;

   initialization_status = 0;
   printk(KERN_INFO "stonyman: loading...\n");

   // dynamic device number allocation
   error_code = alloc_chrdev_region(&stonyman_dev_num, MINOR_START, NUM_CAMS, DEVICE_NAME);
   if (error_code < 0) {
      printk(KERN_ALERT "stonyman: could not allocate a major number\n");
      return error_code;
   }
   initialization_status++;

   // create device class
   stonyman_class = class_create(THIS_MODULE, DEVICE_CLASS_NAME);
   if (stonyman_class == NULL) {
      printk(KERN_ALERT "stonyman: cound not create device class \"%s\"\n", DEVICE_CLASS_NAME);
      stonyman_exit();
      return -1;
   }
   initialization_status++;

   // create devices
   for (i=0; i<NUM_CAMS; i++) {
      stonyman_device[i] = NULL;
   }
   initialization_status++;
   for (i=0; i<NUM_CAMS; i++) {
      stonyman_device[i] = device_create(stonyman_class, NULL,
            MKDEV(MAJOR(stonyman_dev_num), MINOR(stonyman_dev_num)+i),
            NULL, DEVICE_NAME_IDX, i);

      if (stonyman_device[i] == NULL) {
         printk(KERN_ALERT "stonyman: could not create device for cam%d\n", i);
         stonyman_exit();
         return -1;
      }
   }

   // initialize buffer status
   spin_lock_init(img_buf_lock);
   for (i=0; i<NUM_CAMS; i++) {
      imager_capturing[i] = 0;
      img_buf_head_pos[i] = 0;
      img_buf_tail_pos[i] = 0;
      img_buf_head_idx[i] = 0;
      img_buf_tail_idx[i] = 0;
      for (j=0; j<NUM_BUFFER_FRAMES; j++) {
         img_buf[i][j] = NULL;
         img_buf_has_data[i][j] = 0;
      }
   }

   // malloc buffer space
   initialization_status++;
   for (i=0; i<NUM_CAMS; i++) {
      for (j=0; j<NUM_BUFFER_FRAMES; j++) {
         img_buf[i][j] = (uint8*)kmalloc(RESOLUTION*sizeof(uint8), GFP_KERNEL);
         if (img_buf[i][j] == NULL) {
            printk(KERN_ALERT "stonyman: couldn't malloc bytes for the image buffer\n");
            stonyman_exit();
            return -1;
         }
      }
   }

   // apply timing configuration to imager
   apply_timing(IMG_TRACK_COUNTS, IMG_PULSE_COUNTS);

   // apply configuration settings to cameras
   for (i=0; i<NUM_CAMS; i++) {
      // currently assumes that all cameras can use the same settings
      apply_settings(i, IMG_VREF, IMG_CONFIG, IMG_NBIAS, IMG_AOBIAS, IMG_VSW, IMG_HSW);
   }

   // restart the stonyman controller
   for (i=0; i<NUM_CAMS; i++) {
      REG_W_GLOB_RESET = (1 << i);
   }
   
   // do not continue until the restart is complete
   while (REG_R_GLOB_STATUS != 0);

   // install frame_done handlers
   irq_count = 0;
   initialization_status++;
   for (i=0; i<NUM_CAMS; i++) {
      error_code = request_irq(GPIO_IRQ_NUM_FRAME_DONE(i),
            (irq_handler_t)stonyman_interrupt, 0, DEVICE_NAME, NULL);

      if (error_code < 0) {
         printk(KERN_ALERT "stonyman: could not install frame_done handler for cam%d\n", i);
         stonyman_exit();
         return -1;
      }
      irq_count++;
   }

   // install almost_full handlers
   irq_count = 0;
   initialization_status++;
   for (i=0; i<NUM_CAMS; i++) {
      error_code = request_irq(GPIO_IRQ_NUM_AFULL(i),
            (irq_handler_t)stonyman_interrupt, 0, DEVICE_NAME, NULL);

      if (error_code < 0) {
         printk(KERN_ALERT "stonyman: could not install almost_full handler for cam%d\n", i);
         stonyman_exit();
         return -1;
      }
      irq_count++;
   }

   // enable interrupts
   for (i=0; i<NUM_CAMS; i++) {
      // enable frame done and almost full interrupts. Note that memory-mapped
      //    io writes dont' fail
      gpio_enable_irq(GPIO_PIN_FRAME_DONE(i));
      gpio_enable_irq(GPIO_PIN_AFULL(i));
   }

   // register device
   cdev_init(&stonyman_cdev, &stonyman_fops);
   stonyman_cdev.owner = THIS_MODULE;
   // THIS ROUTINE SHOULD BE CALLED LAST (cdev_add)
   error_code = cdev_add(&stonyman_cdev, stonyman_dev_num, NUM_CAMS);
   if (error_code < 0) {
      printk(KERN_ALERT "stonyman: could not register device\n");
      stonyman_exit();
      return -1;
   }
   initialization_status++;

   // Successfully initialized!
   printk(KERN_INFO "stonyman: ...loaded\n");
   return 0;
}

static void stonyman_exit(void) {
   int i;

   //XXX: Currently kernel panics??

   //NOTE: this function is modularized so that it may be called from any point
   // in initialization and clean up whatever has so far been created

   if (initialization_status > 6) {
      cdev_del(&stonyman_cdev);
      irq_count = NUM_CAMS; // So all of the almost_full handlers get removed
   }

   // enable interrupts. This can always be run
   for (i=0; i<NUM_CAMS; i++) {
      // disable frame done and almost full interrupts. Note that memory-mapped
      //    io writes dont' fail
      gpio_disable_irq(GPIO_PIN_FRAME_DONE(i));
      gpio_disable_irq(GPIO_PIN_AFULL(i));
   }

   // free almost_full handlers
   if (initialization_status > 5) {
      for (i=0; i<NUM_CAMS; i++) {
         if (irq_count > i) {
            free_irq(GPIO_IRQ_NUM_AFULL(i), NULL);
         }
      }
      irq_count = NUM_CAMS; // So all of the frame_done handlers get removed
   }

   // free frame_done handlers
   if (initialization_status > 4) {
      for (i=0; i<NUM_CAMS; i++) {
         if (irq_count > i) {
            free_irq(GPIO_IRQ_NUM_FRAME_DONE(i), NULL);
         }
      }
   }

   // free buffer space
   if (initialization_status > 3) {
      int j;
      for (i=0; i<NUM_CAMS; i++) {
         imager_capturing[i] = 0;
         img_buf_head_pos[i] = 0;
         img_buf_tail_pos[i] = 0;
         img_buf_head_idx[i] = 0;
         img_buf_tail_idx[i] = 0;
         for (j=0; j<NUM_BUFFER_FRAMES; j++) {
            if (img_buf[i][j] != NULL) {
               kfree(img_buf[i][j]);
               img_buf[i][j] = NULL;
               img_buf_has_data[i][j] = 0;
            }
         }
      }
   }

   // destroy devices
   if (initialization_status > 2) {
      for (i=0; i<NUM_CAMS; i++) {
         if (stonyman_device[i] != NULL) {
            device_destroy(stonyman_class, MKDEV(MAJOR(stonyman_dev_num), MINOR(stonyman_dev_num)+i));
            stonyman_device[i] = NULL;
         }
      }
   }

   // destroy device class
   if (initialization_status > 1) {
      class_destroy(stonyman_class);
      stonyman_class = NULL;
   }

   // free device number
   if (initialization_status > 0) {
      unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
   }

   printk(KERN_INFO "stonyman: unloaded\n");
}

static int stonyman_open(struct inode* inode, struct file* filp) {

   // record device id
   if (filp->private_data == NULL) {
      filp->private_data = (void*)kmalloc(sizeof(uint8), GFP_KERNEL);
      if (filp->private_data == NULL) {
         printk(KERN_ALERT "stonyman: ERROR could not allocate memory for open\n");
         return -1;
      }

      *(uint8*)(filp->private_data) = (uint8)MINOR(inode->i_rdev);
   }

   //XXX: REMOVE
   // increment use count for device
   //MOD_INC_USE_COUNT;

   // success
   return 0;
}

static int stonyman_release(struct inode* inode, struct file* filp) {

   // free private data
   if (filp->private_data != NULL) {
      kfree(filp->private_data);
      filp->private_data = NULL;
   }

   //XXX: REMOVE
   // decrement device use
   //MOD_DEC_USE_COUNT;

   return 0;
}

static int stonyman_ioctl(struct inode* inode, struct file* filp,
      unsigned int cmd, unsigned long arg) {

   int i, j;
   uint8 cam_id = 0;
   unsigned long irq_flags = 0;

   // check cmd parameter
   if((STONYMAN_IOC_MAGIC != _IOC_TYPE(cmd)) || (STONYMAN_IOC_CMD_CNT <= _IOC_NR(cmd))) {
      // NOT A TYPEWRITER
      return -ENOTTY;
   }

   // no currently implemented commands require data transfer
   if(0 != _IOC_DIR(cmd)) {
      return -EFAULT;
   }

   // get device number
   if (filp->private_data != NULL) {
      cam_id = (uint8)(*(uint8*)(filp->private_data));
   }

   switch(cmd) {
      case STONYMAN_IOC_START_CAPTURE:
         //printk(KERN_INFO "stonyman: ioctl start capture\n");
         if (imager_capturing[cam_id]) {
            //printk(KERN_ALERT "stonyman: ERROR already capturing\n");
            return -EALREADY;
         }

         if ((REG_R_GLOB_STATUS & (1 << cam_id)) != 0) {
            printk(KERN_ALERT "stonyman: ERROR busy\n");
            return -EBUSY;
         }
         
         imager_capturing[cam_id] = 1;

         // start the cameras
         REG_W_GLOB_START = (1 << cam_id);
         break;

      case STONYMAN_IOC_STOP_CAPTURE:
         //printk(KERN_INFO "stonyman: ioctl stop capture\n");
         imager_capturing[cam_id] = 0;

         // do not return until they are finished with the current frame
         while ((REG_R_GLOB_STATUS & (1 << cam_id)) != 0);

         // wait for any running interrupt to complete
         spin_lock_irqsave(img_buf_lock, irq_flags);

         // reset buffer status
         img_buf_head_pos[cam_id] = 0;
         img_buf_tail_pos[cam_id] = 0;
         img_buf_head_idx[cam_id] = 0;
         img_buf_tail_idx[cam_id] = 0;
         for (i=0; i<NUM_CAMS; i++) {
            for (j=0; j<NUM_BUFFER_FRAMES; j++) {
               img_buf_has_data[i][j] = 0;
            }
         }

         // unlock
         spin_unlock_irqrestore(img_buf_lock, irq_flags);
         break;

      case STONYMAN_IOC_RESET_IMAGER:
         //printk(KERN_INFO "stonyman: ioctl reset\n");

         // restart the stonyman controller immediately
         REG_W_GLOB_RESET = (1 << cam_id);

         // wait for any running interrupt to complete
         spin_lock_irqsave(img_buf_lock, irq_flags);

         // reset buffer status
         imager_capturing[cam_id] = 0;
         img_buf_head_pos[cam_id] = 0;
         img_buf_tail_pos[cam_id] = 0;
         img_buf_head_idx[cam_id] = 0;
         img_buf_tail_idx[cam_id] = 0;
         for (i=0; i<NUM_CAMS; i++) {
            for (j=0; j<NUM_BUFFER_FRAMES; j++) {
               img_buf_has_data[i][j] = 0;
            }
         }

         // do not return until they are finished resetting
         while ((REG_R_GLOB_STATUS & (1 << cam_id)) != 0);

         // unlock
         spin_unlock_irqrestore(img_buf_lock, irq_flags);
         break;

      case STONYMAN_IOC_GLOBAL_START:
         //printk(KERN_INFO "stonyman: ioctl global start capture\n");
        
         for (i=0; i<NUM_CAMS; i++) {
            if (imager_capturing[cam_id]) {
               //printk(KERN_ALERT "stonyman: ERROR already capturing\n");
               return -EALREADY;
            }

            if ((REG_R_GLOB_STATUS & (1 << cam_id)) != 0) {
               printk(KERN_ALERT "stonyman: ERROR busy\n");
               return -EBUSY;
            }

            imager_capturing[i] = 1;
         }

         // start all cameras
         REG_W_GLOB_START = 0xFFFFFFFF;
         break;

      case STONYMAN_IOC_STATISTICS:
         printk(KERN_INFO "\nCaptured: %d\tRead: %d\tOverrun: %d\n", frames_captured,
               frames_read, frames_overrun);
         break;

      default:
         return -ENOTTY;
         break;
   }

   // Success
   //printk(KERN_INFO "stonyman: ioctl complete\n");
   return 0;
}

static ssize_t stonyman_read(struct file* filp, char __user* buff,
         size_t count, loff_t* offp) {

   ssize_t return_count = 0;
   unsigned long irq_flags;

   // get device number
   uint8 cam_id = 0;
   if (filp->private_data != NULL) {
      cam_id = (*(uint8*)(filp->private_data));
   }

   if (RESOLUTION - img_buf_tail_pos[cam_id] < count) {
      // too many bytes requested from this frame, advance
      printk(KERN_ALERT "stonyman: ERROR too many bytes requested\n");
      img_buf_tail_idx[cam_id] = ((img_buf_tail_idx[cam_id]+1) % NUM_BUFFER_FRAMES);
      img_buf_tail_pos[cam_id] = 0;
      return -EINVAL;
   }

   // lock buffer, disable interrupts
   spin_lock_irqsave(img_buf_lock, irq_flags);

   if (img_buf_has_data[cam_id][img_buf_tail_idx[cam_id]]) {
      return_count = count;
   } else {
      frames_overrun++; // actually means time spent waiting...
      return_count = 0;
   }

   if (return_count != 0) {
      int error_code = copy_to_user(buff,
            (const void*)(&img_buf[cam_id][img_buf_tail_idx[cam_id]][img_buf_tail_pos[cam_id]]),
            return_count);

      if (error_code < 0) {
         printk(KERN_ALERT "stonyman: ERROR copy_to_user returns %d\n", error_code);
         return_count = -EFAULT;
      } else {

         // restart the stonyman controller if it was waiting on us
         if ((REG_R_GLOB_STATUS & (1 << cam_id)) == 0 &&
               imager_capturing[cam_id] == 1 &&
               img_buf_has_data[cam_id][img_buf_head_idx[cam_id]]) {

            REG_W_GLOB_START = (1 << cam_id);
         }

         // advance frame
         frames_read++;
         img_buf_has_data[cam_id][img_buf_tail_idx[cam_id]] = 0;
         img_buf_tail_idx[cam_id] = ((img_buf_tail_idx[cam_id]+1) % NUM_BUFFER_FRAMES);
         img_buf_tail_pos[cam_id] = 0;
      }
   }

   // unlock buffer, enable interrupts
   spin_unlock_irqrestore(img_buf_lock, irq_flags);

   // Successfully read all requested bytes
   return return_count;
}

static ssize_t stonyman_write(struct file* filp, const char __user* buff, 
         size_t count, loff_t* offp) {

   // get device number
   uint8 cam_id = 0;
   if (filp->private_data != NULL) {
      cam_id = (*(uint8*)(filp->private_data));
   }

   //TODO: Implement frame masks!

   // Sucessfully wrote all requested bytes
   return count;
}

irqreturn_t stonyman_interrupt(int irq, void* dev_id, struct pt_regs* regs) {

   // 32,33 are camera 0. 34,35 are camera 1. etc.
   int cam_id = ((irq-32)/2);
   unsigned long irq_flags;

   // lock buffer, disable interrupts
   spin_lock_irqsave(img_buf_lock, irq_flags);

   // read from pixel fifo
   while ((REG_R_CAM_STATUS(cam_id) & 0x01) == 0) {
      uint32 tmpdata = REG_R_CAM_PXDATA(cam_id);
      img_buf[cam_id][img_buf_head_idx[cam_id]][img_buf_head_pos[cam_id]+0] = ((tmpdata >>  0) & 0xFF);
      img_buf[cam_id][img_buf_head_idx[cam_id]][img_buf_head_pos[cam_id]+1] = ((tmpdata >>  8) & 0xFF);
      img_buf[cam_id][img_buf_head_idx[cam_id]][img_buf_head_pos[cam_id]+2] = ((tmpdata >> 16) & 0xFF);
      img_buf[cam_id][img_buf_head_idx[cam_id]][img_buf_head_pos[cam_id]+3] = ((tmpdata >> 24) & 0xFF);
      img_buf_head_pos[cam_id] += 4;
   }

   // check if capture is complete
   if ((REG_R_GLOB_STATUS & (1 << cam_id)) == 0) {
      // record buffer read
      frames_captured++;

      // move to next frame buffer
      img_buf_has_data[cam_id][img_buf_head_idx[cam_id]] = 1;
      img_buf_head_idx[cam_id] = ((img_buf_head_idx[cam_id]+1) % NUM_BUFFER_FRAMES);
      img_buf_head_pos[cam_id] = 0;

      // restart controller if this buffer is available, otherwise, the reader
      //    can restart us after it's done with this frame
      if (img_buf_has_data[cam_id][img_buf_head_idx[cam_id]] == 0) {
         // only restart if we are allowed to
         if (imager_capturing[cam_id] == 1) {
            REG_W_GLOB_START = (1 << cam_id);
         }
      }
   }

   // Clear the interrupts
   gpio_clear_irq(GPIO_PIN_FRAME_DONE(cam_id));
   gpio_clear_irq(GPIO_PIN_AFULL(cam_id));

   // unlock buffer, enable interrupts
   spin_unlock_irqrestore(img_buf_lock, irq_flags);

   return IRQ_HANDLED;
}

// lkm boilerplate
//
module_init(stonyman_init);
module_exit(stonyman_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Branden Ghena");
MODULE_DESCRIPTION("Stonyman imager driver");
