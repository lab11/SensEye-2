#ifndef STONYMAN_2_H
#define STONYMAN_2_H

////////////////////////////////////////////////////////////////////////////////
//
// University of Michigan
//
// stonyman_2.h
//  Stonyman linux device driver (LKM).
////////////////////////////////////////////////////////////////////////////////


// includes
#include <asm/ioctl.h>

// ioctl defines
#define STONYMAN_IOC_MAGIC          (0xBB) // arbitrarily chosen (unused in ioctl-number.txt)
#define STONYMAN_IOC_START_CAPTURE  _IO(STONYMAN_IOC_MAGIC, 0)
#define STONYMAN_IOC_STOP_CAPTURE   _IO(STONYMAN_IOC_MAGIC, 1)
#define STONYMAN_IOC_RESET_IMAGER   _IO(STONYMAN_IOC_MAGIC, 2)
#define STONYMAN_IOC_GLOBAL_START   _IO(STONYMAN_IOC_MAGIC, 3)
#define STONYMAN_IOC_STATISTICS     _IO(STONYMAN_IOC_MAGIC, 4)
#define STONYMAN_IOC_CMD_CNT        (5)

// configuration defines (determined empirically)
#define IMG_TRACK_COUNTS 16
#define IMG_PULSE_COUNTS 1
#define IMG_VREF    40
#define IMG_CONFIG  17
#define IMG_NBIAS   55
#define IMG_AOBIAS  55
#define IMG_VSW     0
#define IMG_HSW     0

#endif
