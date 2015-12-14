////////////////////////////////////////////////////////////////////////////////
// senseye_serv_2.c
//
// University of Michigan
//
// Serves data from the stonyman imagers up to the host pc
////////////////////////////////////////////////////////////////////////////////

// includes
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include "stonyman_2.h"
#include "senseye_defs.h"

// Internal definitions
#define STONY_DEVICE_FILENAME     ("/dev/stonyman")

// Function prototypes
int  request_data();
void transmit_data();
void send_mask(uint8_t cam_id);
void send_frame(uint8_t cam_id);
void terminate(int signum);

// Global vars
static uint8_t* img_buf;
static uint16_t frame_resolution [NUM_CAMS];
static int      stony_fd [NUM_CAMS];
static int      sd;

int main( ) {

   // Initialize descriptors
   int i;
   sd = -1;
   for (i=0; i<NUM_CAMS; i++) {
      stony_fd[i] = -1;
   }

   // Install signal handler
   signal(SIGINT, terminate);

   // start up the tcp socket
   sd = socket(AF_INET, SOCK_STREAM, 0);
   if (sd < 0) {
      perror("Socket creation failed");
      exit(1);
   }

   // set socket options
   int optval = 1;
   if (setsockopt(sd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)) < 0) {
      perror("Could not set socket options");
      exit(1);
   }

   // fill in socket details
   struct sockaddr_in saddr;
   memset(&saddr, 0, sizeof(saddr));
   saddr.sin_family      = AF_INET;
   saddr.sin_addr.s_addr = htonl(INADDR_ANY);
   saddr.sin_port        = htons(SENSEYE_PORT);

   // bind
   if (bind(sd, (struct sockaddr*)&saddr, sizeof(saddr)) < 0) {
      perror("Could not bind listening socket");
      exit(1);
   }

   // listen
   fprintf(stderr, "Listening...\n");
   if (listen(sd, 1) < 0) {
      perror("Listen call failed");
      exit(1);
   }

   // malloc space for the image buffer, which holds a command plus a frame
   img_buf = (uint8_t*)malloc((HEADER_SIZE+MAX_FRAME_SIZE)*sizeof(uint8_t));
   if (img_buf == NULL) {
      perror("Malloc of image buffer failed");
      exit(1);
   }

   // Accept connection
   fprintf(stderr, "Accepting...\n");
   socklen_t addrlen = sizeof(saddr);
   sd = accept(sd, (struct sockaddr*)&saddr, &addrlen);
   if (sd < 0) {
      perror("Accept of socket failed");
      exit(1);
   }

   // Request an arbitrary amount of bytes larger than the GET packet
   fprintf(stderr, "Waiting for recv\n");
   int ret_val = recv(sd, (void*)(&img_buf[0]), MAX_FRAME_SIZE, 0);
   if (ret_val < 0) {
      perror("Recv GET packet failed");
      exit(1);
   }

   // Null terminate the string
   img_buf[MAX_FRAME_SIZE] = '\0';

   // Search for the GET request
   uint8_t* ret_str = strstr(img_buf, "GET");
   if (ret_str != NULL) {
      // GET request was found
      fprintf(stderr, "Good Request!\n");
      transmit_data();
   }

   // How did we get here? This is an error
   return -1;
}

void transmit_data( ) {

   // Open and start camera devices
   int i;
   fprintf(stderr, "Opening devices...\n");
   for (i=0; i<NUM_CAMS; i++) {

      // Set device filename
      uint8_t dev_name [15];
      sprintf(dev_name, "%s%d", STONY_DEVICE_FILENAME, i);
      dev_name[14] = '\0'; // for safety

      // Open device
      stony_fd[i] = open(dev_name, O_RDWR, NULL);
      if (stony_fd[i] < 0) {
         perror("Couldn't open stonyman device");
         exit(1);
      }

      // Set mask values
      send_mask(i);
   }

   // Start the camera
   fprintf(stderr, "Starting cameras\n");
   if (ioctl(stony_fd[0], STONYMAN_IOC_GLOBAL_START) < 0) {
      perror("Could not start stonyman driver");
      exit(1);
   }

   // Read from both cameras and transmit data to client
   while (1) {
      //Shows how many frames are sent
      fprintf(stderr, "Sending frames before\n");

      send_frame(0);
      fprintf(stderr, "Sent frames 0\n");
      
      //commented out because both cameras are not connected
      send_frame(1);
      fprintf(stderr, "Sent frames 1\n");

   }
}

void send_mask(uint8_t cam_id) {
   //TODO: Set mask values in controller

   // Save expected resolution
   frame_resolution[cam_id] = (112*112);

   //TODO: Send mask values to client
}

static int send0_counts = 0;
static int send1_counts = 0;

void send_frame(uint8_t cam_id) {
   // Read data from the device
   fprintf(stderr, "Reading frame from cam[%d], fd=%d\n", cam_id, stony_fd[cam_id]);
   int px_read = 0;
   while (px_read < frame_resolution[cam_id]) {

      int ret_val = read(stony_fd[cam_id], &(img_buf[HEADER_SIZE]), frame_resolution[cam_id]);
      if (ret_val < 0) {
         perror("Couldn't read from stonyman device");

         // Shut down cameras and exit
         terminate(0);
      }
      //fprintf(stderr, "%d ,", img_buf[HEADER_SIZE + 1] );
      //fprintf(stderr, "%d , ", img_buf[HEADER_SIZE + 150] );
      //fprintf(stderr, "%d ,", img_buf[HEADER_SIZE + 1000] );
      //fprintf(stderr, "%d \n", img_buf[HEADER_SIZE + 8000] );
      px_read += ret_val;

      //fprintf(stderr, "Px_read val: %d, ", px_read);
      //fprintf(stderr, "Ret val: %d, ", ret_val);
      //fprintf(stderr, "frame_res: %d, \n", frame_resolution[cam_id]);

   }

if (cam_id == 0) {
   fprintf(stderr, "Cam 0 id increment\n");   
   send0_counts++;
} else {
   fprintf(stderr, "Cam 1 id increment\n");
   send1_counts++;
}

   // Setup frame header
   img_buf[SYMBOL_INDEX] = SYMBOL_SOF;
   img_buf[OPCODE_INDEX] = CTL_CAMX_FRAME(cam_id);
   img_buf[SIZE_MSB_INDEX] = ((frame_resolution[cam_id] >> 8) & 0xFF);
   img_buf[SIZE_LSB_INDEX] = ((frame_resolution[cam_id] >> 0) & 0xFF);

   // Transmit data to client
   fprintf(stderr, "Sending frame\n");
   int ret_val = send(sd, (void*)img_buf, (HEADER_SIZE+MAX_FRAME_SIZE), MSG_NOSIGNAL);
   if (ret_val != (HEADER_SIZE+MAX_FRAME_SIZE)) {
      if (ret_val < 0 && errno == EPIPE) {
         fprintf(stderr, "Socket closed\n");
         fprintf(stderr, "Cam[0]: %d\tCam[1]: %d\n", send0_counts, send1_counts);
         terminate(0);
      } else {
         perror("Send to client failed");
         fprintf(stderr, "Cam[0]: %d\tCam[1]: %d\n", send0_counts, send1_counts);
         terminate(0);
      }
   }
}

void terminate(int signum) {
   int i;

   // Stop driver
   if (stony_fd[0] != -1) {
      ioctl(stony_fd[0], STONYMAN_IOC_GLOBAL_STOP);
   }

   // Print off statistics
   ioctl(stony_fd[0], STONYMAN_IOC_STATISTICS);

   // Close descriptors
   for (i=0; i<NUM_CAMS; i++) {
      if (stony_fd[i] != -1) {
         close(stony_fd[i]);
      }
      stony_fd[i] = -1;
   }

   // Close socket
   if (sd != -1) {
      close(sd);
   }
   sd = -1;

   exit(1);
}
