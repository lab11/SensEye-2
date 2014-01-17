///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_apb3.v
// File history:
//      0.01: 2013-03-05: created
//      0.02: 2013-06-13: added support for 4 cameras
//      0.03: 2013-08-15: added support for 16 cameras (4 control sets of 4 cameras each)
//
// Description:
//
// APB interface for the Stonyman controller
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
///////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// REGISTER LAYOUT
/////////////////////////////////////////////////
// offset       behavior  name           fields (msb...lsb)
// -----------  --------  -------------  ----------------------------
// 0x0000_0000  w         GLOB_START       xxxxxxxx _ xxxxxxxx _
//                                         xxxxxxxx _ xxxx cg3_start cg2_start cg1_start cg0_start
// 0x0000_0000  r         GLOB_STATUS      00000000 _ 00000000 _
//                                         00000000 _ 0000 cg3_busy cg2_busy cg1_busy cg0_busy
// 0x0000_0004  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_007C  n/a       RESERVED
// 0x0000_0080  r         CG0_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0084  r         CG0_CAM0_PXDATA  data[32]
// 0x0000_0088  r         CG0_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_008C  r         CG0_CAM1_PXDATA  data[32]
// 0x0000_0090  r         CG0_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0094  r         CG0_CAM2_PXDATA  data[32]
// 0x0000_0098  r         CG0_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_009C  r         CG0_CAM3_PXDATA  data[32]
// 0x0000_00A0  r         CG1_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00A4  r         CG1_CAM0_PXDATA  data[32]
// 0x0000_00A8  r         CG1_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00AC  r         CG1_CAM1_PXDATA  data[32]
// 0x0000_00B0  r         CG1_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00B4  r         CG1_CAM2_PXDATA  data[32]
// 0x0000_00B8  r         CG1_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00BC  r         CG1_CAM3_PXDATA  data[32]
// 0x0000_00C0  r         CG2_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00C4  r         CG2_CAM0_PXDATA  data[32]
// 0x0000_00C8  r         CG2_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00CC  r         CG2_CAM1_PXDATA  data[32]
// 0x0000_00D0  r         CG2_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00D4  r         CG2_CAM2_PXDATA  data[32]
// 0x0000_00D8  r         CG2_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00DC  r         CG2_CAM3_PXDATA  data[32]
// 0x0000_00E0  r         CG3_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00E4  r         CG3_CAM0_PXDATA  data[32]
// 0x0000_00E8  r         CG3_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00EC  r         CG3_CAM1_PXDATA  data[32]
// 0x0000_00F0  r         CG3_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00F4  r         CG3_CAM2_PXDATA  data[32]
// 0x0000_00F8  r         CG3_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00FC  r         CG3_CAM3_PXDATA  data[32]
///////////////////////////////////////////////////////////////////////////////


`define WIDTH                        (32)
`define WIDTH_ALL_ZEROES             (32'd0)
`define ADDR_WIDTH                   (32)  // no reason to change this ever

`define NUM_CONTROL_GROUPS           (4)   // number of "control groups" of cameras
`define NUM_CHANNELS_PER_CG          (4)   // num of cams simultaneously controlled within a control set

`define MASK_REG_RANGE               ('hFF)
// decode the CGX_CAMY_... address:
// 8 bits (msb...lsb): cam-reg-ind cq-sel[2] cam-sel[2] cam-reg-sel[3]
`define REG_RANGE_CAM_REG_IND_SHIFT  ('d7)
`define REG_RANGE_CAM_REG_IND_WIDTH  ('d1)
`define REG_RANGE_CG_SEL_SHIFT       ('d5)
`define REG_RANGE_CG_SEL_WIDTH       ('d2)
`define REG_RANGE_CAM_SEL_SHIFT      ('d3)
`define REG_RANGE_CAM_SEL_WIDTH      ('d2)
`define REG_RANGE_CAM_REG_SEL_SHIFT  ('d0)
`define REG_RANGE_CAM_REG_SEL_WIDTH  ('d3)
`define REG_OFFSET_GLOB_START        ('h00)
`define REG_OFFSET_GLOB_STATUS       ('h00)
`define REG_OFFSET_CAMX_STATUS       ('h00)
`define REG_OFFSET_CAMX_PXDATA       ('h04)

`define REG_GLOB_STATUS_RESERVED     (28'd0)
`define REG_CAMX_STATUS_RESERVED     (28'd0)

`define VAR_WIDTH_FIFO_RDEN_S        ('d3)
`define FIFO_RDEN_S_IDLE             ('d0)
`define FIFO_RDEN_S_RAISE            ('d1)
`define FIFO_RDEN_S_WAIT             ('d2)
`define FIFO_RDEN_S_READY            ('d3)
`define FIFO_RDEN_S_WAIT_AFTER       ('d4)


//////////////////////////////////////////////////////////////////////
// stonyman_apb3
module stonyman_apb3
(
/* APB SIGNALS */
input wire                       PCLK,                 // clock
input wire                       PRESERN,              // reset

input wire                       PSEL,
input wire                       PENABLE,
output wire                      PREADY,
output wire                      PSLVERR,
input wire                       PWRITE,
input wire  [(`ADDR_WIDTH-1):0]  PADDR,
input wire  [(`WIDTH-1):0]       PWDATA,
output wire [(`WIDTH-1):0]       PRDATA,

/* APPLICATION SPECIFIC SIGNALS */
input wire                       CG0_BUSY,
input wire                       CG0_CAM0_FIFO_EMPTY,
input wire                       CG0_CAM0_FIFO_FULL,
input wire                       CG0_CAM0_FIFO_AFULL,
input wire                       CG0_CAM0_FIFO_OVERFLOW,
output wire                      CG0_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM0_PIXELSIN,
input wire                       CG0_CAM1_FIFO_EMPTY,
input wire                       CG0_CAM1_FIFO_FULL,
input wire                       CG0_CAM1_FIFO_AFULL,
input wire                       CG0_CAM1_FIFO_OVERFLOW,
output wire                      CG0_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM1_PIXELSIN,
input wire                       CG0_CAM2_FIFO_EMPTY,
input wire                       CG0_CAM2_FIFO_FULL,
input wire                       CG0_CAM2_FIFO_AFULL,
input wire                       CG0_CAM2_FIFO_OVERFLOW,
output wire                      CG0_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM2_PIXELSIN,
input wire                       CG0_CAM3_FIFO_EMPTY,
input wire                       CG0_CAM3_FIFO_FULL,
input wire                       CG0_CAM3_FIFO_AFULL,
input wire                       CG0_CAM3_FIFO_OVERFLOW,
output wire                      CG0_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM3_PIXELSIN,
output wire                      CG0_START_CAPTURE,         // active low
input wire                       CG1_BUSY,
input wire                       CG1_CAM0_FIFO_EMPTY,
input wire                       CG1_CAM0_FIFO_FULL,
input wire                       CG1_CAM0_FIFO_AFULL,
input wire                       CG1_CAM0_FIFO_OVERFLOW,
output wire                      CG1_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM0_PIXELSIN,
input wire                       CG1_CAM1_FIFO_EMPTY,
input wire                       CG1_CAM1_FIFO_FULL,
input wire                       CG1_CAM1_FIFO_AFULL,
input wire                       CG1_CAM1_FIFO_OVERFLOW,
output wire                      CG1_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM1_PIXELSIN,
input wire                       CG1_CAM2_FIFO_EMPTY,
input wire                       CG1_CAM2_FIFO_FULL,
input wire                       CG1_CAM2_FIFO_AFULL,
input wire                       CG1_CAM2_FIFO_OVERFLOW,
output wire                      CG1_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM2_PIXELSIN,
input wire                       CG1_CAM3_FIFO_EMPTY,
input wire                       CG1_CAM3_FIFO_FULL,
input wire                       CG1_CAM3_FIFO_AFULL,
input wire                       CG1_CAM3_FIFO_OVERFLOW,
output wire                      CG1_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM3_PIXELSIN,
output wire                      CG1_START_CAPTURE,         // active low
input wire                       CG2_BUSY,
input wire                       CG2_CAM0_FIFO_EMPTY,
input wire                       CG2_CAM0_FIFO_FULL,
input wire                       CG2_CAM0_FIFO_AFULL,
input wire                       CG2_CAM0_FIFO_OVERFLOW,
output wire                      CG2_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM0_PIXELSIN,
input wire                       CG2_CAM1_FIFO_EMPTY,
input wire                       CG2_CAM1_FIFO_FULL,
input wire                       CG2_CAM1_FIFO_AFULL,
input wire                       CG2_CAM1_FIFO_OVERFLOW,
output wire                      CG2_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM1_PIXELSIN,
input wire                       CG2_CAM2_FIFO_EMPTY,
input wire                       CG2_CAM2_FIFO_FULL,
input wire                       CG2_CAM2_FIFO_AFULL,
input wire                       CG2_CAM2_FIFO_OVERFLOW,
output wire                      CG2_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM2_PIXELSIN,
input wire                       CG2_CAM3_FIFO_EMPTY,
input wire                       CG2_CAM3_FIFO_FULL,
input wire                       CG2_CAM3_FIFO_AFULL,
input wire                       CG2_CAM3_FIFO_OVERFLOW,
output wire                      CG2_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM3_PIXELSIN,
output wire                      CG2_START_CAPTURE,         // active low
input wire                       CG3_BUSY,
input wire                       CG3_CAM0_FIFO_EMPTY,
input wire                       CG3_CAM0_FIFO_FULL,
input wire                       CG3_CAM0_FIFO_AFULL,
input wire                       CG3_CAM0_FIFO_OVERFLOW,
output wire                      CG3_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM0_PIXELSIN,
input wire                       CG3_CAM1_FIFO_EMPTY,
input wire                       CG3_CAM1_FIFO_FULL,
input wire                       CG3_CAM1_FIFO_AFULL,
input wire                       CG3_CAM1_FIFO_OVERFLOW,
output wire                      CG3_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM1_PIXELSIN,
input wire                       CG3_CAM2_FIFO_EMPTY,
input wire                       CG3_CAM2_FIFO_FULL,
input wire                       CG3_CAM2_FIFO_AFULL,
input wire                       CG3_CAM2_FIFO_OVERFLOW,
output wire                      CG3_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM2_PIXELSIN,
input wire                       CG3_CAM3_FIFO_EMPTY,
input wire                       CG3_CAM3_FIFO_FULL,
input wire                       CG3_CAM3_FIFO_AFULL,
input wire                       CG3_CAM3_FIFO_OVERFLOW,
output wire                      CG3_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM3_PIXELSIN,
output wire                      CG3_START_CAPTURE          // active low
);

wire bus_write_enable;
wire bus_read_enable;

wire ioreg_ready;

wire ioreg_cg0_cam0_fifo_rden;
wire ioreg_cg0_cam1_fifo_rden;
wire ioreg_cg0_cam2_fifo_rden;
wire ioreg_cg0_cam3_fifo_rden;
wire ioreg_cg1_cam0_fifo_rden;
wire ioreg_cg1_cam1_fifo_rden;
wire ioreg_cg1_cam2_fifo_rden;
wire ioreg_cg1_cam3_fifo_rden;
wire ioreg_cg2_cam0_fifo_rden;
wire ioreg_cg2_cam1_fifo_rden;
wire ioreg_cg2_cam2_fifo_rden;
wire ioreg_cg2_cam3_fifo_rden;
wire ioreg_cg3_cam0_fifo_rden;
wire ioreg_cg3_cam1_fifo_rden;
wire ioreg_cg3_cam2_fifo_rden;
wire ioreg_cg3_cam3_fifo_rden;


// no errors, always ready
assign PSLVERR=0;
assign PREADY=(ioreg_ready && PENABLE);

// bus conditions (to export)
assign bus_write_enable = (PENABLE &&  PWRITE && PSEL);
assign bus_read_enable = (!PWRITE && PSEL);


// don't actually read the Fifo if it's empty
assign CG0_CAM0_FIFO_RDEN = !(ioreg_cg0_cam0_fifo_rden && !CG0_CAM0_FIFO_EMPTY);
assign CG0_CAM1_FIFO_RDEN = !(ioreg_cg0_cam1_fifo_rden && !CG0_CAM1_FIFO_EMPTY);
assign CG0_CAM2_FIFO_RDEN = !(ioreg_cg0_cam2_fifo_rden && !CG0_CAM2_FIFO_EMPTY);
assign CG0_CAM3_FIFO_RDEN = !(ioreg_cg0_cam3_fifo_rden && !CG0_CAM3_FIFO_EMPTY);
assign CG1_CAM0_FIFO_RDEN = !(ioreg_cg1_cam0_fifo_rden && !CG1_CAM0_FIFO_EMPTY);
assign CG1_CAM1_FIFO_RDEN = !(ioreg_cg1_cam1_fifo_rden && !CG1_CAM1_FIFO_EMPTY);
assign CG1_CAM2_FIFO_RDEN = !(ioreg_cg1_cam2_fifo_rden && !CG1_CAM2_FIFO_EMPTY);
assign CG1_CAM3_FIFO_RDEN = !(ioreg_cg1_cam3_fifo_rden && !CG1_CAM3_FIFO_EMPTY);
assign CG2_CAM0_FIFO_RDEN = !(ioreg_cg2_cam0_fifo_rden && !CG2_CAM0_FIFO_EMPTY);
assign CG2_CAM1_FIFO_RDEN = !(ioreg_cg2_cam1_fifo_rden && !CG2_CAM1_FIFO_EMPTY);
assign CG2_CAM2_FIFO_RDEN = !(ioreg_cg2_cam2_fifo_rden && !CG2_CAM2_FIFO_EMPTY);
assign CG2_CAM3_FIFO_RDEN = !(ioreg_cg2_cam3_fifo_rden && !CG2_CAM3_FIFO_EMPTY);
assign CG3_CAM0_FIFO_RDEN = !(ioreg_cg3_cam0_fifo_rden && !CG3_CAM0_FIFO_EMPTY);
assign CG3_CAM1_FIFO_RDEN = !(ioreg_cg3_cam1_fifo_rden && !CG3_CAM1_FIFO_EMPTY);
assign CG3_CAM2_FIFO_RDEN = !(ioreg_cg3_cam2_fifo_rden && !CG3_CAM2_FIFO_EMPTY);
assign CG3_CAM3_FIFO_RDEN = !(ioreg_cg3_cam3_fifo_rden && !CG3_CAM3_FIFO_EMPTY);


stonyman_ioreg stonyman_ioreg_0( 
   .clk(PCLK),
   .rst(PRESERN),
   .wren(bus_write_enable),
   .rden(bus_read_enable),
   .addr(PADDR),
   .ready(ioreg_ready),
   .cg0cam0fifoRden(ioreg_cg0_cam0_fifo_rden),
   .cg0cam1fifoRden(ioreg_cg0_cam1_fifo_rden),
   .cg0cam2fifoRden(ioreg_cg0_cam2_fifo_rden),
   .cg0cam3fifoRden(ioreg_cg0_cam3_fifo_rden),
   .cg1cam0fifoRden(ioreg_cg1_cam0_fifo_rden),
   .cg1cam1fifoRden(ioreg_cg1_cam1_fifo_rden),
   .cg1cam2fifoRden(ioreg_cg1_cam2_fifo_rden),
   .cg1cam3fifoRden(ioreg_cg1_cam3_fifo_rden),
   .cg2cam0fifoRden(ioreg_cg2_cam0_fifo_rden),
   .cg2cam1fifoRden(ioreg_cg2_cam1_fifo_rden),
   .cg2cam2fifoRden(ioreg_cg2_cam2_fifo_rden),
   .cg2cam3fifoRden(ioreg_cg2_cam3_fifo_rden),
   .cg3cam0fifoRden(ioreg_cg3_cam0_fifo_rden),
   .cg3cam1fifoRden(ioreg_cg3_cam1_fifo_rden),
   .cg3cam2fifoRden(ioreg_cg3_cam2_fifo_rden),
   .cg3cam3fifoRden(ioreg_cg3_cam3_fifo_rden),
   .datain(PWDATA),
   .dataout(PRDATA),
   .cg0busy(CG0_BUSY),
   .cg1busy(CG1_BUSY),
   .cg2busy(CG2_BUSY),
   .cg3busy(CG3_BUSY),
   .cg0cam0empty(CG0_CAM0_FIFO_EMPTY),
   .cg0cam1empty(CG0_CAM1_FIFO_EMPTY),
   .cg0cam2empty(CG0_CAM2_FIFO_EMPTY),
   .cg0cam3empty(CG0_CAM3_FIFO_EMPTY),
   .cg1cam0empty(CG1_CAM0_FIFO_EMPTY),
   .cg1cam1empty(CG1_CAM1_FIFO_EMPTY),
   .cg1cam2empty(CG1_CAM2_FIFO_EMPTY),
   .cg1cam3empty(CG1_CAM3_FIFO_EMPTY),
   .cg2cam0empty(CG2_CAM0_FIFO_EMPTY),
   .cg2cam1empty(CG2_CAM1_FIFO_EMPTY),
   .cg2cam2empty(CG2_CAM2_FIFO_EMPTY),
   .cg2cam3empty(CG2_CAM3_FIFO_EMPTY),
   .cg3cam0empty(CG3_CAM0_FIFO_EMPTY),
   .cg3cam1empty(CG3_CAM1_FIFO_EMPTY),
   .cg3cam2empty(CG3_CAM2_FIFO_EMPTY),
   .cg3cam3empty(CG3_CAM3_FIFO_EMPTY),
   .cg0cam0full(CG0_CAM0_FIFO_FULL),
   .cg0cam1full(CG0_CAM1_FIFO_FULL),
   .cg0cam2full(CG0_CAM2_FIFO_FULL),
   .cg0cam3full(CG0_CAM3_FIFO_FULL),
   .cg1cam0full(CG1_CAM0_FIFO_FULL),
   .cg1cam1full(CG1_CAM1_FIFO_FULL),
   .cg1cam2full(CG1_CAM2_FIFO_FULL),
   .cg1cam3full(CG1_CAM3_FIFO_FULL),
   .cg2cam0full(CG2_CAM0_FIFO_FULL),
   .cg2cam1full(CG2_CAM1_FIFO_FULL),
   .cg2cam2full(CG2_CAM2_FIFO_FULL),
   .cg2cam3full(CG2_CAM3_FIFO_FULL),
   .cg3cam0full(CG3_CAM0_FIFO_FULL),
   .cg3cam1full(CG3_CAM1_FIFO_FULL),
   .cg3cam2full(CG3_CAM2_FIFO_FULL),
   .cg3cam3full(CG3_CAM3_FIFO_FULL),
   .cg0cam0afull(CG0_CAM0_FIFO_AFULL),
   .cg0cam1afull(CG0_CAM1_FIFO_AFULL),
   .cg0cam2afull(CG0_CAM0_FIFO_AFULL),
   .cg0cam3afull(CG0_CAM0_FIFO_AFULL),
   .cg1cam0afull(CG1_CAM0_FIFO_AFULL),
   .cg1cam1afull(CG1_CAM1_FIFO_AFULL),
   .cg1cam2afull(CG1_CAM0_FIFO_AFULL),
   .cg1cam3afull(CG1_CAM0_FIFO_AFULL),
   .cg2cam0afull(CG2_CAM0_FIFO_AFULL),
   .cg2cam1afull(CG2_CAM1_FIFO_AFULL),
   .cg2cam2afull(CG2_CAM0_FIFO_AFULL),
   .cg2cam3afull(CG2_CAM0_FIFO_AFULL),
   .cg3cam0afull(CG3_CAM0_FIFO_AFULL),
   .cg3cam1afull(CG3_CAM1_FIFO_AFULL),
   .cg3cam2afull(CG3_CAM0_FIFO_AFULL),
   .cg3cam3afull(CG3_CAM0_FIFO_AFULL),
   .cg0cam0overflow(CG0_CAM0_FIFO_OVERFLOW),
   .cg0cam1overflow(CG0_CAM1_FIFO_OVERFLOW),
   .cg0cam2overflow(CG0_CAM2_FIFO_OVERFLOW),
   .cg0cam3overflow(CG0_CAM3_FIFO_OVERFLOW),
   .cg1cam0overflow(CG1_CAM0_FIFO_OVERFLOW),
   .cg1cam1overflow(CG1_CAM1_FIFO_OVERFLOW),
   .cg1cam2overflow(CG1_CAM2_FIFO_OVERFLOW),
   .cg1cam3overflow(CG1_CAM3_FIFO_OVERFLOW),
   .cg2cam0overflow(CG2_CAM0_FIFO_OVERFLOW),
   .cg2cam1overflow(CG2_CAM1_FIFO_OVERFLOW),
   .cg2cam2overflow(CG2_CAM2_FIFO_OVERFLOW),
   .cg2cam3overflow(CG2_CAM3_FIFO_OVERFLOW),
   .cg3cam0overflow(CG3_CAM0_FIFO_OVERFLOW),
   .cg3cam1overflow(CG3_CAM1_FIFO_OVERFLOW),
   .cg3cam2overflow(CG3_CAM2_FIFO_OVERFLOW),
   .cg3cam3overflow(CG3_CAM3_FIFO_OVERFLOW),
   .cg0cam0pxDatain(CG0_CAM0_PIXELSIN),
   .cg0cam1pxDatain(CG0_CAM1_PIXELSIN),
   .cg0cam2pxDatain(CG0_CAM2_PIXELSIN),
   .cg0cam3pxDatain(CG0_CAM3_PIXELSIN),
   .cg1cam0pxDatain(CG1_CAM0_PIXELSIN),
   .cg1cam1pxDatain(CG1_CAM1_PIXELSIN),
   .cg1cam2pxDatain(CG1_CAM2_PIXELSIN),
   .cg1cam3pxDatain(CG1_CAM3_PIXELSIN),
   .cg2cam0pxDatain(CG2_CAM0_PIXELSIN),
   .cg2cam1pxDatain(CG2_CAM1_PIXELSIN),
   .cg2cam2pxDatain(CG2_CAM2_PIXELSIN),
   .cg2cam3pxDatain(CG2_CAM3_PIXELSIN),
   .cg3cam0pxDatain(CG3_CAM0_PIXELSIN),
   .cg3cam1pxDatain(CG3_CAM1_PIXELSIN),
   .cg3cam2pxDatain(CG3_CAM2_PIXELSIN),
   .cg3cam3pxDatain(CG3_CAM3_PIXELSIN),
   .cg0startCapture(CG0_START_CAPTURE),
   .cg1startCapture(CG1_START_CAPTURE),
   .cg2startCapture(CG2_START_CAPTURE),
   .cg3startCapture(CG3_START_CAPTURE)
);

endmodule


//////////////////////////////////////////////////////////////////////
// stonyman_ioreg
module stonyman_ioreg
(
input wire clk,
input wire rst,
input wire wren,
input wire rden,
input wire [31:0] addr,
output reg ready,
output wire cg0cam0fifoRden,  // active high
output wire cg0cam1fifoRden,  // active high
output wire cg0cam2fifoRden,  // active high
output wire cg0cam3fifoRden,  // active high
output wire cg1cam0fifoRden,  // active high
output wire cg1cam1fifoRden,  // active high
output wire cg1cam2fifoRden,  // active high
output wire cg1cam3fifoRden,  // active high
output wire cg2cam0fifoRden,  // active high
output wire cg2cam1fifoRden,  // active high
output wire cg2cam2fifoRden,  // active high
output wire cg2cam3fifoRden,  // active high
output wire cg3cam0fifoRden,  // active high
output wire cg3cam1fifoRden,  // active high
output wire cg3cam2fifoRden,  // active high
output wire cg3cam3fifoRden,  // active high
input wire [(`WIDTH-1):0] datain,
output reg [(`WIDTH-1):0] dataout,

input wire cg0busy,
input wire cg1busy,
input wire cg2busy,
input wire cg3busy,
input wire cg0cam0empty,
input wire cg0cam1empty,
input wire cg0cam2empty,
input wire cg0cam3empty,
input wire cg1cam0empty,
input wire cg1cam1empty,
input wire cg1cam2empty,
input wire cg1cam3empty,
input wire cg2cam0empty,
input wire cg2cam1empty,
input wire cg2cam2empty,
input wire cg2cam3empty,
input wire cg3cam0empty,
input wire cg3cam1empty,
input wire cg3cam2empty,
input wire cg3cam3empty,
input wire cg0cam0full,
input wire cg0cam1full,
input wire cg0cam2full,
input wire cg0cam3full,
input wire cg1cam0full,
input wire cg1cam1full,
input wire cg1cam2full,
input wire cg1cam3full,
input wire cg2cam0full,
input wire cg2cam1full,
input wire cg2cam2full,
input wire cg2cam3full,
input wire cg3cam0full,
input wire cg3cam1full,
input wire cg3cam2full,
input wire cg3cam3full,
input wire cg0cam0afull,
input wire cg0cam1afull,
input wire cg0cam2afull,
input wire cg0cam3afull,
input wire cg1cam0afull,
input wire cg1cam1afull,
input wire cg1cam2afull,
input wire cg1cam3afull,
input wire cg2cam0afull,
input wire cg2cam1afull,
input wire cg2cam2afull,
input wire cg2cam3afull,
input wire cg3cam0afull,
input wire cg3cam1afull,
input wire cg3cam2afull,
input wire cg3cam3afull,
input wire cg0cam0overflow,
input wire cg0cam1overflow,
input wire cg0cam2overflow,
input wire cg0cam3overflow,
input wire cg1cam0overflow,
input wire cg1cam1overflow,
input wire cg1cam2overflow,
input wire cg1cam3overflow,
input wire cg2cam0overflow,
input wire cg2cam1overflow,
input wire cg2cam2overflow,
input wire cg2cam3overflow,
input wire cg3cam0overflow,
input wire cg3cam1overflow,
input wire cg3cam2overflow,
input wire cg3cam3overflow,
input wire [(`WIDTH-1):0] cg0cam0pxDatain,
input wire [(`WIDTH-1):0] cg0cam1pxDatain,
input wire [(`WIDTH-1):0] cg0cam2pxDatain,
input wire [(`WIDTH-1):0] cg0cam3pxDatain,
input wire [(`WIDTH-1):0] cg1cam0pxDatain,
input wire [(`WIDTH-1):0] cg1cam1pxDatain,
input wire [(`WIDTH-1):0] cg1cam2pxDatain,
input wire [(`WIDTH-1):0] cg1cam3pxDatain,
input wire [(`WIDTH-1):0] cg2cam0pxDatain,
input wire [(`WIDTH-1):0] cg2cam1pxDatain,
input wire [(`WIDTH-1):0] cg2cam2pxDatain,
input wire [(`WIDTH-1):0] cg2cam3pxDatain,
input wire [(`WIDTH-1):0] cg3cam0pxDatain,
input wire [(`WIDTH-1):0] cg3cam1pxDatain,
input wire [(`WIDTH-1):0] cg3cam2pxDatain,
input wire [(`WIDTH-1):0] cg3cam3pxDatain,

output wire cg0startCapture,  // active low
output wire cg1startCapture,  // active low
output wire cg2startCapture,  // active low
output wire cg3startCapture   // active low
);

reg [(`VAR_WIDTH_FIFO_RDEN_S-1):0] fifoRdenState [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];

wire [(`REG_RANGE_CAM_REG_IND_WIDTH-1):0] camRegInd;
wire [(`REG_RANGE_CG_SEL_WIDTH-1):0]      cgIdx;
wire [(`REG_RANGE_CAM_SEL_WIDTH-1):0]     camIdx;
wire [(`REG_RANGE_CAM_REG_SEL_WIDTH-1):0] camReg;

// counter
reg [2:0] ii;
reg [2:0] jj;

// this code allows generic handling of CSX_CAMY_... registers
// ideally we wouldn't need all this extra code,
// but verilog does not allow arrays to be used as inputs or outputs!
reg startCapture [0:`NUM_CONTROL_GROUPS];
wire busy        [0:`NUM_CONTROL_GROUPS];

reg fifoRden  [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];
wire empty    [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];
wire full     [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];
wire afull    [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];
wire overflow [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];
wire [(`WIDTH-1):0] pxDatain [0:`NUM_CONTROL_GROUPS] [0:`NUM_CHANNELS_PER_CG];

assign camRegInd = addr[(`REG_RANGE_CAM_REG_IND_SHIFT + `REG_RANGE_CAM_REG_IND_WIDTH - 1):`REG_RANGE_CAM_REG_IND_SHIFT];
assign cgIdx     = addr[(`REG_RANGE_CG_SEL_SHIFT      + `REG_RANGE_CG_SEL_WIDTH      - 1):`REG_RANGE_CG_SEL_SHIFT];
assign camIdx    = addr[(`REG_RANGE_CAM_SEL_SHIFT     + `REG_RANGE_CAM_SEL_WIDTH     - 1):`REG_RANGE_CAM_SEL_SHIFT];
assign camReg    = addr[(`REG_RANGE_CAM_REG_SEL_SHIFT + `REG_RANGE_CAM_REG_SEL_WIDTH - 1):`REG_RANGE_CAM_REG_SEL_SHIFT];

assign cg0cam0fifoRden=fifoRden[0][0];
assign cg0cam1fifoRden=fifoRden[0][1];
assign cg0cam2fifoRden=fifoRden[0][2];
assign cg0cam3fifoRden=fifoRden[0][3];
assign cg1cam0fifoRden=fifoRden[1][0];
assign cg1cam1fifoRden=fifoRden[1][1];
assign cg1cam2fifoRden=fifoRden[1][2];
assign cg1cam3fifoRden=fifoRden[1][3];
assign cg2cam0fifoRden=fifoRden[2][0];
assign cg2cam1fifoRden=fifoRden[2][1];
assign cg2cam2fifoRden=fifoRden[2][2];
assign cg2cam3fifoRden=fifoRden[2][3];
assign cg3cam0fifoRden=fifoRden[3][0];
assign cg3cam1fifoRden=fifoRden[3][1];
assign cg3cam2fifoRden=fifoRden[3][2];
assign cg3cam3fifoRden=fifoRden[3][3];
assign empty[0][0]=cg0cam0empty;
assign empty[0][1]=cg0cam1empty;
assign empty[0][2]=cg0cam2empty;
assign empty[0][3]=cg0cam3empty;
assign empty[1][0]=cg1cam0empty;
assign empty[1][1]=cg1cam1empty;
assign empty[1][2]=cg1cam2empty;
assign empty[1][3]=cg1cam3empty;
assign empty[2][0]=cg2cam0empty;
assign empty[2][1]=cg2cam1empty;
assign empty[2][2]=cg2cam2empty;
assign empty[2][3]=cg2cam3empty;
assign empty[3][0]=cg3cam0empty;
assign empty[3][1]=cg3cam1empty;
assign empty[3][2]=cg3cam2empty;
assign empty[3][3]=cg3cam3empty;
assign full[0][0]=cg0cam0full;
assign full[0][1]=cg0cam1full;
assign full[0][2]=cg0cam2full;
assign full[0][3]=cg0cam3full;
assign full[1][0]=cg1cam0full;
assign full[1][1]=cg1cam1full;
assign full[1][2]=cg1cam2full;
assign full[1][3]=cg1cam3full;
assign full[2][0]=cg2cam0full;
assign full[2][1]=cg2cam1full;
assign full[2][2]=cg2cam2full;
assign full[2][3]=cg2cam3full;
assign full[3][0]=cg3cam0full;
assign full[3][1]=cg3cam1full;
assign full[3][2]=cg3cam2full;
assign full[3][3]=cg3cam3full;
assign afull[0][0]=cg0cam0afull;
assign afull[0][1]=cg0cam1afull;
assign afull[0][2]=cg0cam2afull;
assign afull[0][3]=cg0cam3afull;
assign afull[1][0]=cg1cam0afull;
assign afull[1][1]=cg1cam1afull;
assign afull[1][2]=cg1cam2afull;
assign afull[1][3]=cg1cam3afull;
assign afull[2][0]=cg2cam0afull;
assign afull[2][1]=cg2cam1afull;
assign afull[2][2]=cg2cam2afull;
assign afull[2][3]=cg2cam3afull;
assign afull[3][0]=cg3cam0afull;
assign afull[3][1]=cg3cam1afull;
assign afull[3][2]=cg3cam2afull;
assign afull[3][3]=cg3cam3afull;
assign overflow[0][0]=cg0cam0overflow;
assign overflow[0][1]=cg0cam1overflow;
assign overflow[0][2]=cg0cam2overflow;
assign overflow[0][3]=cg0cam3overflow;
assign overflow[1][0]=cg1cam0overflow;
assign overflow[1][1]=cg1cam1overflow;
assign overflow[1][2]=cg1cam2overflow;
assign overflow[1][3]=cg1cam3overflow;
assign overflow[2][0]=cg2cam0overflow;
assign overflow[2][1]=cg2cam1overflow;
assign overflow[2][2]=cg2cam2overflow;
assign overflow[2][3]=cg2cam3overflow;
assign overflow[3][0]=cg3cam0overflow;
assign overflow[3][1]=cg3cam1overflow;
assign overflow[3][2]=cg3cam2overflow;
assign overflow[3][3]=cg3cam3overflow;
assign pxDatain[0][0]=cg0cam0pxDatain;
assign pxDatain[0][1]=cg0cam1pxDatain;
assign pxDatain[0][2]=cg0cam2pxDatain;
assign pxDatain[0][3]=cg0cam3pxDatain;
assign pxDatain[1][0]=cg1cam0pxDatain;
assign pxDatain[1][1]=cg1cam1pxDatain;
assign pxDatain[1][2]=cg1cam2pxDatain;
assign pxDatain[1][3]=cg1cam3pxDatain;
assign pxDatain[2][0]=cg2cam0pxDatain;
assign pxDatain[2][1]=cg2cam1pxDatain;
assign pxDatain[2][2]=cg2cam2pxDatain;
assign pxDatain[2][3]=cg2cam3pxDatain;
assign pxDatain[3][0]=cg3cam0pxDatain;
assign pxDatain[3][1]=cg3cam1pxDatain;
assign pxDatain[3][2]=cg3cam2pxDatain;
assign pxDatain[3][3]=cg3cam3pxDatain;

assign cg0startCapture=startCapture[0];
assign cg1startCapture=startCapture[1];
assign cg2startCapture=startCapture[2];
assign cg3startCapture=startCapture[3];
assign busy[0]=cg0busy;
assign busy[1]=cg1busy;
assign busy[2]=cg2busy;
assign busy[3]=cg3busy;


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= `WIDTH_ALL_ZEROES;
      for(ii=0; ii<`NUM_CONTROL_GROUPS; ii=ii+1)
      begin
         for(jj=0; jj<`NUM_CHANNELS_PER_CG; jj=jj+1)
         begin
            fifoRden[ii][jj] <= 1'b0;
            fifoRdenState[ii][jj] <= `FIFO_RDEN_S_IDLE;
         end
      end
   end
   else
   begin
      // READ REGISTER
      if(1'b1 == rden)
      begin
         // GLOB_STATUS
         if(`REG_OFFSET_GLOB_STATUS == (`MASK_REG_RANGE&addr))
         begin
            dataout <= {`REG_GLOB_STATUS_RESERVED,cg3busy,cg2busy,cg1busy,cg0busy};
            ready <= 1'b1;
         end
         // some camera register
         else if(0 != camRegInd) 
         begin
            // CAMX_STATUS
            if(`REG_OFFSET_CAMX_STATUS == camReg)
            begin
               dataout <= { `REG_CAMX_STATUS_RESERVED,overflow[cgIdx][camIdx],afull[cgIdx][camIdx],
                            full[cgIdx][camIdx],empty[cgIdx][camIdx] };
               ready <= 1'b1;
            end
            // CAMX_PXDATA
            else if(`REG_OFFSET_CAMX_PXDATA == camReg)
            begin
               case(fifoRdenState[cgIdx][camIdx])
                  `FIFO_RDEN_S_IDLE:
                  begin
                     fifoRden[cgIdx][camIdx] <= 1'b1;
                     fifoRdenState[cgIdx][camIdx] <= `FIFO_RDEN_S_RAISE;
                  end
                  `FIFO_RDEN_S_RAISE:
                  begin
                     fifoRden[cgIdx][camIdx] <= 1'b0;
                     fifoRdenState[cgIdx][camIdx] <= `FIFO_RDEN_S_WAIT;
                  end
                  `FIFO_RDEN_S_WAIT:
                  begin
                     fifoRdenState[cgIdx][camIdx] <= `FIFO_RDEN_S_READY;
                  end
                  `FIFO_RDEN_S_READY:
                  begin
                     dataout <= pxDatain[cgIdx][camIdx];
                     ready <= 1'b1;
                     fifoRdenState[cgIdx][camIdx] <= `FIFO_RDEN_S_WAIT_AFTER;
                  end
                  default:
                  begin
                     // badness!
                  end
               endcase
            end
            // BAD: CAM register unknown
            else
            begin
               // actually impossible!
               dataout <= `WIDTH_ALL_ZEROES;
               ready <= 1'b1;
            end
         end
         else
         begin
            dataout <= `WIDTH_ALL_ZEROES;
            ready <= 1'b1;
         end
      end
      // WRITE REGISTER
      else if(1'b1 == wren)
      begin
         // GLOB_START
         if(`REG_OFFSET_GLOB_START == (`MASK_REG_RANGE&addr))
         begin
            for(ii=0; ii<`NUM_CONTROL_GROUPS; ii=ii+1)
            begin
               if(0 != ((1<<ii) & datain[ii]))
               begin
                  startCapture[ii] <= 1'b0;
               end
            end
            ready <= 1'b1;
         end
         else
         begin
            // do nothing
         end
      end
      else
      begin
         // wait for startCapture to be acknowledged (with busy signal)
         for(ii=0; ii<`NUM_CONTROL_GROUPS; ii=ii+1)
         begin
            if((1'b0==startCapture[ii]) && (1'b1==busy[ii]))
            begin
               startCapture[ii] <= 1'b1;
            end
         end
         ready <= 1'b0;
      end
   end
   // return any FIFO's RDEN state to idle if necessary
   for(ii=0; ii<`NUM_CONTROL_GROUPS; ii=ii+1)
   begin
      for(jj=0; jj<`NUM_CHANNELS_PER_CG; jj=jj+1)
      begin
         if(`FIFO_RDEN_S_WAIT_AFTER==fifoRdenState[ii][jj])
         begin
            fifoRdenState[ii][jj] <= `FIFO_RDEN_S_IDLE;
         end
      end
   end
end


endmodule

