//**************************************************************************************************
// glasses.c
//
// Russ Bielawski
// 2012-11-15: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <glasses.h>
#include <stdio.h>
#include <string.h>
#include <termios.h>
#include <assert.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>


//**************************************************************************************************
// function definitions
//

//
// readchar: read one char from the (device) file
//
char readchar(FILE *infile)
{
   unsigned readcnt;
   char cc[1];

   do
   {
      readcnt = fread(cc,1,1,infile);
   } while(1>readcnt);
   return cc[0];
}

//
// readuntilchar: keep reading until the desired char is read from the (device) file
//
void readuntilchar(FILE *infile, char desiredch)
{
   unsigned readcnt;
   char cc[1];
   cc[0] = '\0';

   do
   {
      readcnt = fread(cc,1,1,infile);
   } while((1 > readcnt) || (desiredch != cc[0]));
   // TODO: does this need to assert?
   assert(desiredch == cc[0]);
}

//
// mkdir_p: like mkdir -p
//
void mkdir_p(const char *path)
{
   unsigned ii;
   char tmppath[PATH_MAX_LEN];

   for(ii=0; ii<=strlen(path); ++ii)
   {
      if (path[ii] == '/' || path[ii] == '\0') {
         strncpy(tmppath, path, ii);
         tmppath[ii] = '\0';
         mkdir(tmppath, 0755);
      }
   }
}

//
// getdeepestdirname: get the deepest directory name in the specified path
//
void getdeepestdirname(const char *path, char *deepestdirname)
{
   int ii;
   unsigned int suffixlen, prefixlen;
   unsigned int flagComputeSuffixlenDone, flagComputePrefixlenDone;

   // dear God please forgive me for this travesty


   suffixlen=0;
   prefixlen=strlen(path);
   flagComputeSuffixlenDone=flagComputePrefixlenDone=0;
   for(ii=strlen(path)-1; 0<=ii; --ii)
   {
      if(0==flagComputeSuffixlenDone)
      {
         if(('/' != path[ii]) && ('\0' != path[ii]))
         {
            flagComputeSuffixlenDone = 1;
         }
         else
         {
            ++suffixlen;
         }
      }
      if(0==flagComputePrefixlenDone)
      {
         --prefixlen;
         if((0 != flagComputeSuffixlenDone) && (('/' == path[ii]) || ('\0' == path[ii])))
         {
            flagComputePrefixlenDone = 1;
            break;
         }
      }
   }
   if((0 <= ii) || ('/' == path[0]))
   {
      ++prefixlen;
   }

   strncpy(deepestdirname,(char*)(path+prefixlen),strlen(path)-prefixlen-suffixlen);
   deepestdirname[strlen(path)-prefixlen-suffixlen] = '\0';
}

//
// peek: peek at the next character in the buffer
//
int peek(FILE *stream)
{
   int cc;

   cc = fgetc(stream);
   ungetc(cc,stream);

   return cc;
}

//
// getch: grab a single char without waiting for the user to press ENTER
//
// russ: taken from http://stackoverflow.com/questions/421860/c-c-capture-characters-from-standard-input-without-waiting-for-enter-to-be-pr
// ! LINUX ONLY (sorry, lazy)
char getch() {
   char buf = 0;
   struct termios old = {0};
   if (tcgetattr(0, &old) < 0)
      perror("tcsetattr()");
   old.c_lflag &= ~ICANON;
   old.c_lflag &= ~ECHO;
   old.c_cc[VMIN] = 1;
   old.c_cc[VTIME] = 0;
   if (tcsetattr(0, TCSANOW, &old) < 0)
      perror("tcsetattr ICANON");
   if (read(0, &buf, 1) < 0)
      perror ("read()");
   old.c_lflag |= ICANON;
   old.c_lflag |= ECHO;
   if (tcsetattr(0, TCSADRAIN, &old) < 0)
      perror ("tcsetattr ~ICANON");
   return (buf);
}

//
// cleanupcamconn: just cleanup the camera's connection
//
void cleanupcamconn(FILE *outfile)
{
   fputc((char)SYMBOL_SOF,outfile);
   fputc((char)OPCODE_STOP_CAPTURE,outfile);
   fflush(outfile);
}

//
// glassesReadFrame: read a FRAME frame of length len into buf
//
char glassesReadFrame(FILE *infile, char buf[], unsigned len)
{
   char opcode;
   char *bufloc;
   unsigned readlen;
   unsigned readlenTotal;


   readuntilchar(infile,SYMBOL_SOF);
   opcode = readchar(infile);
   if(OPCODE_FRAME == (unsigned char)opcode)
   {
      readlenTotal=0;
      bufloc=buf;
      while(len > readlenTotal)
      {
         readlen = fread(bufloc,1,len-readlenTotal,infile);
         readlenTotal+=readlen;
         bufloc+=readlen;
      }
      *bufloc = '\0';
   }


   return opcode;
}

