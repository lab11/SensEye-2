#ifndef SENSEYE_DEFS_H
#define SENSEYE_DEFS_H

////////////////////////////////////////////////////////////////////////////////
//
// University of Michigan
//
// senseye_defs.h
//  Definitions for server and client interactions in the Senseye project
////////////////////////////////////////////////////////////////////////////////

// Senseye definitions
#define NUM_CAMS        (2)
#define SENSEYE_PORT    (80)
#define ROW_PIXELS      (112)
#define COL_PIXELS      (112)
#define MAX_FRAME_SIZE  (ROW_PIXELS*COL_PIXELS)

// 1 byte Symbol + 1 byte Opcode + 2 bytes size
#define SYMBOL_INDEX    (0)
#define OPCODE_INDEX    (1)
#define SIZE_MSB_INDEX  (2)
#define SIZE_LSB_INDEX  (3)
#define HEADER_SIZE     (4)

// Packet control signals
#define SYMBOL_SOF      (0xA5)

#define OPCODE_FRAME    (0x00)
#define OPCODE_MASK     (0x01)
#define OPCODE_EXIT     (0x02)
#define OPCODE_NUM_CAMS (0x03)
#define MAX_OPCODE      (0x03)

// commands are of the format {CAM_ID[7:4], OPCODE[3:0]}
#define CTL_CAMX_FRAME(id)  ((uint8_t) (((id & 0x0F) << 4) | ((OPCODE_FRAME & 0x0F) << 0)))
#define CTL_CAMX_MASK(id)   ((uint8_t) (((id & 0x0F) << 4) | ((OPCODE_MASK  & 0x0F) << 0)))


#endif
