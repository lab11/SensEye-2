//******************************************************************************
// senseye_client.c
//
// Reads packets from the senseye device and displays images
//******************************************************************************



// includes
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include "senseye_defs.h"

// opencv sources
#include <opencv/cv.h>
#include <opencv/highgui.h>

// defines / constants
#define INSIGHT_SERV_ADDR     ("141.212.11.131")
#define INSIGHT_SERV_PORT     (80)
const char REQUEST[] = "GET\r\n";

#define NS_PER_SEC      (1000*1000*1000)
#define SCALINGVAL      (4)

#define KEY_ESC         (27)
#define KEY_QUIT        ('q')
#define KEY_MASK        ('m')



// Mask files
#include "stonymask_nomask.h"
#include "mask_5v_breadboard.h"
#include "mask_left.h"
#include "mask_right.h"
//const char* MASK_ARRAY[NUM_CAMS] = {mask_right, mask_5v_breadboard};
const char* MASK_ARRAY[NUM_CAMS] = {stonymask_nomask, stonymask_nomask};
//const unsigned char* MASK_ARRAY[NUM_CAMS] = {mask_left, stonymask_nomask};

// local function prototypes
static void get_frame (int sd, uint8_t* recv_buf, uint16_t frame_size, uint8_t** frame_buf, uint8_t cam_id);
static void terminate(int signum);

// main
int main(int argc, char** argv) {
   int i, j;

   int ret;
   int send_len_ret;
   uint8_t recv_buf[256*1024];    // huge because I am a lazy man
   uint8_t* frame_buf [NUM_CAMS];

   struct timespec time, timeprevious;
   double fpsinstant, fpsmin, fpsmax;

   // initialize the frames
   IplImage* framedouble = NULL;
   IplImage* framedoublescaledup = NULL;
   framedouble = cvCreateImage(cvSize(ROW_PIXELS*2, COL_PIXELS), IPL_DEPTH_8U, 1);
   framedoublescaledup = cvCreateImage(cvSize(ROW_PIXELS*SCALINGVAL*2, COL_PIXELS*SCALINGVAL), IPL_DEPTH_8U, 1);

   //TODO: add the ability to save frames

   // print numcams on stdout for pipe interface
   /* TODO
   printf("%c", SYMBOL_SOF);
   printf("%c", OPCODE_NUM_CAMS);
   printf("%c", NUM_CAMS);
   fflush(stdout);
   */

   // we want to gracefully close the connection
   signal(SIGHUP, terminate);
   signal(SIGINT, terminate);
   signal(SIGABRT, terminate);
   signal(SIGQUIT, terminate);
   signal(SIGTERM, terminate);
   signal(SIGPIPE, terminate);

   // setup connection to server
   int sd;
   struct sockaddr_in sockaddr_server;
   sd = socket(AF_INET, SOCK_STREAM, 0);
   if (sd < 0) {
      perror("Could not open socket");
      terminate(0);
   }

   memset(&sockaddr_server, 0, sizeof(sockaddr_server));
   sockaddr_server.sin_family = AF_INET;
   sockaddr_server.sin_port = htons(INSIGHT_SERV_PORT);
   inet_aton(INSIGHT_SERV_ADDR, &sockaddr_server.sin_addr);

   ret = connect(sd, (struct sockaddr*)(&sockaddr_server), sizeof(sockaddr_server));
   if (ret < 0) {
      perror("Could not connect");
      terminate(0);
   }

   // send a simple GET request to the server
   send_len_ret = send(sd, (const void*)(&REQUEST), sizeof(REQUEST), 0);
   if (send_len_ret != sizeof(REQUEST)) {
      perror("Could not sent GET request");
      terminate(0);
   }

   // malloc space for the frames
   for (i=0; i<NUM_CAMS; i++) {
      frame_buf[i] = (uint8_t*)malloc(MAX_FRAME_SIZE*sizeof(uint8_t));
      if (frame_buf[i] == NULL) {
         perror("Malloc of frame buffer failed");
         exit(1);
      }
      memset(frame_buf[i], 0x00, MAX_FRAME_SIZE);
   }

   uint8_t  cam_id = 0;
   uint8_t  opcode = 0;
   uint16_t frame_size = 0;

   while (1) {
      // Get header
      int recv_len_total = 0;
      while (recv_len_total < HEADER_SIZE) {
         int recv_len = recv(sd, (void*)(&(recv_buf[recv_len_total])), HEADER_SIZE-recv_len_total, 0);
         if (recv_len < 0) {
            if (errno != EAGAIN) {
               perror("Failed to receive header");
               terminate(0);
            }
         } else {
            recv_len_total += recv_len;
         }
      }

      // Repeat until we have found a valid header
      if (recv_buf[SYMBOL_INDEX] != SYMBOL_SOF) {
         fprintf(stderr, "Invalid header\n");
         continue;
      }

      // Parse out cam_id and opcode
      cam_id = ((recv_buf[OPCODE_INDEX] >> 4) & 0x0F);
      opcode = ((recv_buf[OPCODE_INDEX] >> 0) & 0x0F);
      if (cam_id > NUM_CAMS || opcode > MAX_OPCODE) {
         // header is invalid
         fprintf(stderr, "Invalid header values\n");
         continue;
      }

      // Get frame size
      frame_size = (((recv_buf[SIZE_MSB_INDEX] << 8) & 0xFF00) |
                    ((recv_buf[SIZE_LSB_INDEX] << 0) & 0x00FF));

      switch (opcode) {
         case OPCODE_FRAME:
            get_frame(sd, recv_buf, frame_size, frame_buf, cam_id);
            break;
         case OPCODE_MASK:
            //TODO: MASKSssssss
            break;
         case OPCODE_EXIT:
            fprintf(stderr, "Received exit command\n");
            terminate(0);
            break;
         default:
            // Invalid opcode
            fprintf(stderr, "Invalid opcode value\n");
            continue;
            break;
      }

      //TODO: Calculate FPS information

      // Display frames
      for(i=0; i<ROW_PIXELS; i++) {
         uchar* framedoubleloc1 = (uchar*)(framedouble->imageData + (i*framedouble->widthStep));
         uchar* framedoubleloc2 = (uchar*)(framedouble->imageData + (i*framedouble->widthStep) + (framedouble->widthStep/2));
         for(j=0; j<COL_PIXELS; j++) {
            uint32_t offset = (MAX_FRAME_SIZE-i*ROW_PIXELS-1*ROW_PIXELS)+(COL_PIXELS-j-1);
            // world on the left
            framedoubleloc1[j] = frame_buf[1][offset];
            // eye on the right
            framedoubleloc2[j] = frame_buf[0][offset];
         }
      }

      // create scaled up image
      cvResize(framedouble,framedoublescaledup, CV_INTER_LINEAR);

      // display images
      cvShowImage("CamCapDoubleWide", framedoublescaledup);
      cvShowImage("CamCapDoubleWideSmall", framedouble);
      char cc = cvWaitKey(1);

      // check for key presses
      if (cc == KEY_QUIT || cc == KEY_ESC) {
         printf("Quitting\n");
         terminate(0);
      } else if (cc == KEY_MASK) {
         printf("Saving mask file\n");

          // Only create a mask for the first camera
          FILE* mask_left_file = fopen("mask_left.h", "w");
          FILE* mask_right_file = fopen("mask_right.h", "w");
          if(0 == mask_left_file || 0 == mask_right_file)
          {
             fprintf(stderr, "Could not open mask file\n");
             exit(1);
          }

          // Output initial c code
          fprintf(mask_left_file, "const char mask_left[112*112]={");
          fprintf(mask_right_file, "const char mask_right[112*112]={");

         // Output pixel data
         int i, j;
         for(i=0; i<ROW_PIXELS; ++i) {
            for(j=0; j<COL_PIXELS; ++j) {
               uint32_t offset = (MAX_FRAME_SIZE-i*ROW_PIXELS-1*ROW_PIXELS)+(COL_PIXELS-j-1);
               // world on the left
               fprintf(mask_left_file, "%u", (unsigned char)frame_buf[1][offset]);
               // eye on the right
               fprintf(mask_right_file, "%u", (unsigned char)frame_buf[0][offset]);

               if (j == COL_PIXELS-1 && i == ROW_PIXELS-1) {
                  fprintf(mask_left_file, "};\n");
                  fprintf(mask_right_file, "};\n");
               } else {
                  fprintf(mask_left_file, ",");
                  fprintf(mask_right_file, ",");
               }
            }
         }
      }
   }
}

static void get_frame (int sd, uint8_t* recv_buf, uint16_t frame_size, uint8_t** frame_buf, uint8_t cam_id) {
   int i;
   int recv_len_total = 0;

   // Receive a frame from the socket
   while (recv_len_total < frame_size) {
      int recv_len = recv(sd, (void*)(&(recv_buf[recv_len_total])), frame_size-recv_len_total, 0);
      if (recv_len < 0) {
         if (errno != EAGAIN) {
            perror("Failed to receive frame");
            terminate(0);
         }
      } else {
         recv_len_total += recv_len;
      }
   }

   //TODO: rewrite this to incorporate frame mask
   // Remove pixel mask
   for (i=0; i<frame_size; i++) {
      uint8_t mask_val = MASK_ARRAY[cam_id][i];
      if (recv_buf[i] < mask_val) {
         frame_buf[cam_id][i] = 0;
      } else {
         frame_buf[cam_id][i] = recv_buf[i] - mask_val;
      }
   }
}

// terminate: signal handler to cleanup the camera connection and exit
static void terminate(int xx) {

   // Close display
   //if (framedouble != NULL) {
   //   cvReleaseImage(&framedouble);
   //}
   //if (framedoublescaledup != NULL) {
   //   cvReleaseImage(&framedoublescaledup);
   //}
   cvDestroyWindow("CamCapDoubleWide");
   cvDestroyWindow("CamCapDoubleWideSmall");

   exit(1);
}
