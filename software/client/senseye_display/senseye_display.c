//**************************************************************************************************
// senseye_display.c
//
// Russ Bielawski
// 2012-10-29: created as captureStreamDual.c
// 2012-11-12: split out front end display and save functionality
// 2013-06-26: split out from frontdisplayandsave.c (this is getting sloppy)
// 2013-06-26: removed a bunch of old unused stuff (like normalization completely)
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

// opencv sources
#include <opencv/cv.h>
#include <opencv/highgui.h>

#include "glasses.h"
#include "senseye_defs.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (3)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
#define OUTPATH_MAX_LEN         (PATH_MAX_LEN)
#define KEY_MASK                ('m')


//**************************************************************************************************
// globals
//
static FILE     *gOutfilefps;
static char     gOutpath[OUTPATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static unsigned gFlagUserCliModeSelected;
static unsigned gFlagNoWriteVideo;


//**************************************************************************************************
// local function prototypes
//
static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);
static void terminate(int xx);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   int ii,jj,xx,yy;
   char cc;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   unsigned numcams;

   IplImage *frame, *framescaledup;
   uchar *frameloc;
   uchar framevalmin, framevalmax;
   IplImage *frame2, *frame2scaledup;
   uchar *frame2loc;
   uchar frame2valmin, frame2valmax;
   IplImage *frame3, *frame3scaledup;
   uchar *frame3loc;
   uchar frame3valmin, frame3valmax;

   // double wide!
   IplImage *framedouble, *framedoublescaledup;
   uchar *framedoubleloc1, *framedoubleloc2;

   // triple wide!
   IplImage *frametrip, *frametripscaledup;
   uchar *frametriploc1, *frametriploc2, *frametriploc3;

   IplImage *gridoverlay;

   struct timespec time, timeprevious;
   double fpsinstant;
   double fpsmin;
   double fpsmax;

   struct stat outpathst = {0};
   char outfilenameprefix[2*OUTPATH_MAX_LEN];
   char outfilenamefps[2*OUTPATH_MAX_LEN];
   char outfilenameframe[2*OUTPATH_MAX_LEN];
   unsigned int frameidx;

   /* TODO russ: can't get writing video to work yet!
   CvVideoWriter *vidout;*/


   // appease the compiler
   gOutfilefps = 0;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagUserCliModeSelected=0;
   gFlagNoWriteVideo=0;
   if(0 != parseargs(argc,argv))
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 == gFlagUserCliValid)
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 != gFlagUserCliHelp)
   {
      printhelp(argv[0]);
      exit(0);
   }
   if(0 == gFlagNoWriteVideo)
   {
      if(0 == stat(gOutpath,&outpathst))
      {
         fprintf(stderr,"ERROR: path %s already exists!\n",gOutpath);
         printusage(argv[0]);
         exit(1);
      }
   }


   if(0 != gFlagNoWriteVideo)
   {
      printf("quiet mode: video will not be saved\n");
   }
   else
   {
      getdeepestdirname(gOutpath,outfilenameprefix);
      mkdir_p(gOutpath);

      snprintf(outfilenamefps,2*OUTPATH_MAX_LEN,"%s/%s_fps.txt",gOutpath,outfilenameprefix);
      printf("video path: %s\n",gOutpath);

      gOutfilefps = fopen(outfilenamefps,"w");
      if(0 == gOutfilefps)
      {
         fprintf(stderr, "Could not open %s for writing capture FPS values\n",outfilenamefps);
         exit(1);
      }

      // close our open file in case of some terminating signal
      signal(SIGHUP, terminate);
      signal(SIGINT, terminate);
      signal(SIGABRT, terminate);
      signal(SIGQUIT, terminate);
      signal(SIGTERM, terminate);
      // broken pipe
      signal(SIGPIPE, terminate);

      /* TODO russ: can't get writing video to work yet!
      fprintf(stderr,"%s\n",vidoutname);
      vidout = cvCreateVideoWriter( vidoutname,
                                    CV_FOURCC('F','M','P','4'),
                                    10, // placehold FPS
                                    cvSize(FRAME_X_Y,FRAME_X_Y),
                                    0 );
      assert(vidout);*/
   }

   frameidx=0;


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                         FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frame2 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2scaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frame3 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame3scaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   framedouble = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framedoublescaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frametrip = cvCreateImage(cvSize(FRAME_X_Y*3,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frametripscaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*3,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   gridoverlay = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                       FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 3);
   // appease the compiler
   frame2loc = 0;
   frame3loc = 0;
   framedoubleloc1 = framedoubleloc2 = 0;
   frametriploc1 = frametriploc2 = frametriploc3 = 0;


   time.tv_sec = time.tv_nsec = timeprevious.tv_sec = timeprevious.tv_nsec = 0;
   fpsinstant = fpsmin = fpsmax = -1;


   readuntilchar(stdin,SYMBOL_SOF);
   indat[0] = readchar(stdin);
   assert(OPCODE_NUM_CAMS == (unsigned char)indat[0]);
   numcams = (unsigned)readchar(stdin);
   assert((0 < numcams) && (MAX_CAMS >= numcams));
   printf("Num cameras: %d\n", numcams);


   while(1)
   {
      readuntilchar(stdin,SYMBOL_SOF);
      indat[0] = readchar(stdin);
      assert( (OPCODE_FRAME == (unsigned char)indat[0]) ||
              (OPCODE_EXIT  == (unsigned char)indat[0]) );
      if(OPCODE_EXIT == (unsigned char)indat[0])
      {
         break;
      }

      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*numcams > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*numcams)-totallen,stdin);
         totallen+=readcnt;
         indatloc+=readcnt;
      }
      *indatloc = '\0';
      //fprintf(stderr,"received %d bytes\n",totallen);


      // calculate FPS
      // TODO: should be a function?
      timeprevious = time;
      (void)clock_gettime(CLOCK_MONOTONIC,&time);
      fpsinstant = (NS_PER_SEC) / (double)( (NS_PER_SEC)*(time.tv_sec - timeprevious.tv_sec)
                                            + time.tv_nsec - timeprevious.tv_nsec );
      if((0 < fpsmin) || (fpsinstant < fpsmin))
      {
         fpsmin = fpsinstant;
      }
      if((0 < fpsmax) || (fpsinstant > fpsmax))
      {
         fpsmax = fpsinstant;
      }

      //printf("\n");
      // russ: a "frame" for fps calc is from both cameras
      printf("[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

      if(3==numcams)
      {
         for(ii=0; ii<FRAME_X_Y; ++ii)
         {
            frametriploc1 = (uchar*)(frametrip->imageData + (ii*frametrip->widthStep));
            frametriploc2 = (uchar*)( frametrip->imageData
                                          + (ii*frametrip->widthStep)
                                          + (frametrip->widthStep/3) );
            frametriploc3 = (uchar*)( frametrip->imageData
                                          + (ii*frametrip->widthStep)
                                          + 2*(frametrip->widthStep/3) );
            for(jj=0; jj<FRAME_X_Y; ++jj)
            {
               frametriploc1[jj]=(unsigned char)indat[0*FRAME_LEN*2 + ii*FRAME_X_Y+jj];
               frametriploc2[jj]=(unsigned char)indat[1*FRAME_LEN*2 + ii*FRAME_X_Y+jj];
               frametriploc3[jj]=(unsigned char)indat[2*FRAME_LEN*2 + ii*FRAME_X_Y+jj];
            }
         }
         // create scaled up image
         cvResize(frametrip,frametripscaledup,CV_INTER_LINEAR);
      }
      else if(2==numcams)
      {
         /*
         for(ii=0; ii<FRAME_X_Y; ++ii)
         {
            framedoubleloc1 = (uchar*)(framedouble->imageData + (ii*framedouble->widthStep));
            framedoubleloc2 = (uchar*)(framedouble->imageData + (ii*framedouble->widthStep) + (framedouble->widthStep/2));
            for(jj=0; jj<FRAME_X_Y; ++jj)
            {
               //framedoubleloc1[jj]=(unsigned char)indat[0*FRAME_X_Y + ii*FRAME_X_Y+jj];
               framedoubleloc1[jj]=(unsigned char)indat[0*FRAME_LEN + ii*FRAME_X_Y+jj];
               //framedoubleloc2[jj]=(unsigned char)indat[1*FRAME_X_Y + ii*FRAME_X_Y+jj];
               framedoubleloc2[jj]=(unsigned char)indat[1*FRAME_LEN + ii*FRAME_X_Y+jj];
            }
         }
         */

         // Reverse X and Reverse Y so the image is aligned as you would expect
         for(ii=0; ii<FRAME_X_Y; ++ii) {
            framedoubleloc1 = (uchar*)(framedouble->imageData + (ii*framedouble->widthStep));
            framedoubleloc2 = (uchar*)(framedouble->imageData + (ii*framedouble->widthStep) + (framedouble->widthStep/2));
            for(jj=0; jj<FRAME_X_Y; ++jj) {
               // world on the left
               framedoubleloc1[jj]=(unsigned char)indat[1*FRAME_LEN + (FRAME_X_Y*FRAME_X_Y-ii*FRAME_X_Y-1*FRAME_X_Y)+(FRAME_X_Y-jj-1)];
               // eye on the right
               framedoubleloc2[jj]=(unsigned char)indat[0*FRAME_LEN + (FRAME_X_Y*FRAME_X_Y-ii*FRAME_X_Y-1*FRAME_X_Y)+(FRAME_X_Y-jj-1)];
            }
         }

         // create scaled up image
         cvResize(framedouble,framedoublescaledup,CV_INTER_LINEAR);
      }
      else
      {
         assert(1==numcams);
         // not actually implemented!
      }

      // display picture on screen
      if(3==numcams)
      {
         cvShowImage("CamCapTripleWide", frametripscaledup);
         cvShowImage("CamCapTripleWideSmall", frametrip);
      }
      else if(2==numcams)
      {
         cvShowImage("CamCapDoubleWide", framedoublescaledup);
         cvShowImage("CamCapDoubleWideSmall", framedouble);
      }
      else
      {
         cvShowImage("CamCap", framescaledup);
         cvShowImage("CamCapSmall", frame);
      }


      // save the frame as a BMP file
      // TODO: should be a function?
      // TODO: save as video instead
      if(0 == gFlagNoWriteVideo)
      {
         snprintf( outfilenameframe,2*OUTPATH_MAX_LEN,"%s/%s_%06d.bmp",gOutpath,
                   outfilenameprefix,frameidx );
         fprintf(gOutfilefps,"[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

         if(3 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,frametrip,0);
         }
         if(2 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,framedouble,0);
         }
         else
         {
            (void)cvSaveImage(outfilenameframe,frame,0);
         }
      }

      ++frameidx;


      // let the user kill the program with ESC
      // there is a tradeoff here: longer is better for step mode, shorter better for stream mode.
      // the choice of 9 ms delay means this program can't do much faster than ~110 fps
      cc = cvWaitKey(9);
      // look for ESC key
      if(KEY_QUIT == cc)
      {
         break;
      }

      // let the user save a mask file for each camera
      if(KEY_MASK == cc)
      {
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
         for(i=0; i<FRAME_X_Y; ++i) {
            for(j=0; j<FRAME_X_Y; ++j) {
               // world on the left
               fprintf(mask_left_file, "%u", (unsigned char)indat[1*FRAME_LEN + (FRAME_X_Y*FRAME_X_Y-i*FRAME_X_Y-1*FRAME_X_Y)+(FRAME_X_Y-j-1)]);
               // eye on the right
               fprintf(mask_right_file, "%u", (unsigned char)indat[0*FRAME_LEN + (FRAME_X_Y*FRAME_X_Y-i*FRAME_X_Y-1*FRAME_X_Y)+(FRAME_X_Y-j-1)]);

               if (j == FRAME_X_Y-1 && i == FRAME_X_Y-1) {
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


   // release/destroy OpenCV objects
   cvReleaseImage(&frame);
   cvReleaseImage(&framescaledup);
   cvReleaseImage(&frame2);
   cvReleaseImage(&frame2scaledup);
   cvReleaseImage(&frame3);
   cvReleaseImage(&frame3scaledup);
   cvReleaseImage(&framedouble);
   cvReleaseImage(&framedoublescaledup);
   cvReleaseImage(&frametrip);
   cvReleaseImage(&frametripscaledup);
   if(3 == numcams)
   {
      cvDestroyWindow("CamCapTripleWide");
      cvDestroyWindow("CamCapTripleWideSmall");
   }
   else if(2 == numcams)
   {
      cvDestroyWindow("CamCapDoubleWide");
      cvDestroyWindow("CamCapDoubleWideSmall");
   }
   else
   {
      cvDestroyWindow("CamCap");
      cvDestroyWindow("CamCapSmall");
   }


   // close files
   if(0 == gFlagNoWriteVideo)
   {
      fclose(gOutfilefps);
   }
   return 0;
}


//**************************************************************************************************
// local function definitions
//

//
// printusage: prints a usage string for the program
//
static void printusage(char *progname)
{

   fprintf(stderr, "Usage: %s [-o PATH|-q]\n", progname);
}

//
// printhelp: prints the help for the program
//
static void printhelp(char *progname)
{
   printusage(progname);
   fprintf(stderr,"TODO: help not well written\n");
   fprintf(stderr,"press ESC to end the program (user must have context of the video window!).\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -o PATH    save video to PATH.  PATH cannot already exist.  incompatible with -q\n");
   fprintf(stderr,"  -q         quiet mode.  won't write out any video.  incompatible with -o\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "ho:q")) != EOF)
   {
      switch (cc) {
         case 'h':
            gFlagUserCliValid = 1;
            gFlagUserCliHelp = 1;
            break;
         case 'o':
            if(1 == gFlagUserCliModeSelected)
            {
               fprintf(stderr,"ERROR: can't specify quiet mode and an output path!\n");
               gFlagUserCliValid=0;
               // FIXME: is this the right errno?
               errno=E2BIG;
               break;
            }
            if(OUTPATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            gFlagUserCliValid = 1;
            gFlagNoWriteVideo = 0;
            gFlagUserCliModeSelected = 1;
            strncpy(gOutpath, optarg, OUTPATH_MAX_LEN);
            gOutpath[strlen(optarg)] = '\0';
            break;
         case 'q':
            if(1 == gFlagUserCliModeSelected)
            {
               fprintf(stderr,"ERROR: can't specify quiet mode and an output path!\n");
               gFlagUserCliValid=0;
               // FIXME: is this the right errno?
               errno=E2BIG;
               break;
            }
            gFlagUserCliValid = 1;
            gFlagNoWriteVideo = 1;
            gFlagUserCliModeSelected = 1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

//
// terminate: signal handler to cleanup the camera connection and exit
//
static void terminate(int xx)
{
   fclose(gOutfilefps);
   // TODO: perhaps we shouldn't ALWAYS exit with 0
   exit(0);
}

