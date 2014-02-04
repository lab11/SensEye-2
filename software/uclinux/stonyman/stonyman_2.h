#ifndef STONYMAN_H
#define STONYMAN_H

////////////////////////////////////////////////////////////////////////////////
//
// University of Michigan
//
// stonyman_2.h
//  Stonyman linux device driver (LKM).
////////////////////////////////////////////////////////////////////////////////


// includes
#include <asm/ioctl.h>


// defines / constants
#define STONYMAN_IOC_MAGIC          (0xBB) // arbitrarily chosen (unused in ioctl-number.txt)
//#define STONYMAN_IOC_START_CAPTURE  _IO(STONYMAN_IOC_MAGIC, 0)
//#define STONYMAN_IOC_STOP_CAPTURE   _IO(STONYMAN_IOC_MAGIC, 1)
//#define STONYMAN_IOC_SINGLE_FRAME   _IO(STONYMAN_IOC_MAGIC, 2) // TODO: currently unimplemented
//#define STONYMAN_IOC_CMD_CNT        (3)

#endif // STONYMAN_H

