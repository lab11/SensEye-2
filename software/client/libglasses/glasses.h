#ifndef GLASSES_H
#define GLASSES_H
//**************************************************************************************************
// glasses.h
//
// Russ Bielawski
// 2012-11-15: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdio.h>


//**************************************************************************************************
// defines / constants
//
enum
{
   SYMBOL_SOF           = 0xFF,
   SYMBOL_EXIT          = 0xFE,
   OPCODE_START_CAPTURE = 0x01,
   OPCODE_STOP_CAPTURE  = 0x02,
   OPCODE_SINGLE_FRAME  = 0x04,
   OPCODE_START_ACK     = 0x81,
   OPCODE_STOP_ACK      = 0x82,
   OPCODE_FRAME         = 0x84,
   OPCODE_REQ_NUM_CAMS  = 0x21,
   OPCODE_RESP_NUM_CAMS = 0xA1
};

#define PATH_MAX_LEN  (255)


//**************************************************************************************************
// function prototypes
//
char readchar(FILE *infile);
void readuntilchar(FILE *infile, char desiredch);
void mkdir_p(const char *path);
void getdeepestdirname(const char *path, char *deepestdirname);
int  peek();
char getch();
void cleanupcamconn(FILE *outfile);
char glassesReadFrame(FILE *infile, char buf[], unsigned len);


#endif // GLASSES_H

