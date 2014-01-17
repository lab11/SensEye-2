//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jan 15 15:32:59 2014
// Version: v11.1 SP3 11.1.3.1
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// imaging
module imaging(
    // Inputs
    PADDR,
    PENABLE,
    PSEL,
    PWDATA,
    PWRITE,
    cam0_px_adc_din,
    cam1_px_adc_din,
    clk,
    reset,
    // Outputs
    PRDATA,
    PREADY,
    PSLVERR,
    cam0_afull,
    cam0_busy,
    cam0_incp,
    cam0_incv,
    cam0_inphi,
    cam0_px_adc_cs,
    cam0_px_adc_sclk,
    cam0_resp,
    cam0_resv,
    cam1_afull,
    cam1_busy,
    cam1_incp,
    cam1_incv,
    cam1_inphi,
    cam1_px_adc_cs,
    cam1_px_adc_sclk,
    cam1_resp,
    cam1_resv,
    tp_cam0_adcConvComplete,
    tp_cam0_empty,
    tp_cam0_full,
    tp_cam0_rden,
    tp_cam0_startAdcCapture,
    tp_cam0_startcap,
    tp_cam0_stateout,
    tp_cam0_substateout,
    tp_cam0_wren,
    tp_cam0_writePending
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] PADDR;
input         PENABLE;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
input         cam0_px_adc_din;
input         cam1_px_adc_din;
input         clk;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA;
output        PREADY;
output        PSLVERR;
output        cam0_afull;
output        cam0_busy;
output        cam0_incp;
output        cam0_incv;
output        cam0_inphi;
output        cam0_px_adc_cs;
output        cam0_px_adc_sclk;
output        cam0_resp;
output        cam0_resv;
output        cam1_afull;
output        cam1_busy;
output        cam1_incp;
output        cam1_incv;
output        cam1_inphi;
output        cam1_px_adc_cs;
output        cam1_px_adc_sclk;
output        cam1_resp;
output        cam1_resv;
output        tp_cam0_adcConvComplete;
output        tp_cam0_empty;
output        tp_cam0_full;
output        tp_cam0_rden;
output        tp_cam0_startAdcCapture;
output        tp_cam0_startcap;
output [3:0]  tp_cam0_stateout;
output [3:0]  tp_cam0_substateout;
output        tp_cam0_wren;
output        tp_cam0_writePending;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  adc081s101_0_dataout;
wire          adcxx1s101_1_conversionComplete;
wire   [7:0]  adcxx1s101_1_dataout;
wire   [31:0] PADDR;
wire          PENABLE;
wire   [31:0] BIF_1_PRDATA;
wire          BIF_1_PREADY;
wire          PSEL;
wire          BIF_1_PSLVERR;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          cam0_afull_net_0;
wire          cam0_busy_net_0;
wire          cam0_incp_net_0;
wire          cam0_incv_net_0;
wire          cam0_inphi_net_0;
wire          cam0_px_adc_cs_net_0;
wire          cam0_px_adc_din;
wire          cam0_px_adc_sclk_net_0;
wire          cam0_resp_net_0;
wire          cam0_resv_net_0;
wire          cam1_afull_net_0;
wire          cam1_busy_net_0;
wire          cam1_incp_net_0;
wire          cam1_incv_net_0;
wire          cam1_inphi_net_0;
wire          cam1_px_adc_cs_net_0;
wire          cam1_px_adc_din;
wire          cam1_px_adc_sclk_net_0;
wire          cam1_resp_net_0;
wire          cam1_resv_net_0;
wire          clk;
wire          fifo_px_0_OVERFLOW;
wire   [31:0] fifo_px_0_Q;
wire          fifo_px_1_EMPTY;
wire          fifo_px_1_FULL;
wire          fifo_px_1_OVERFLOW;
wire   [31:0] fifo_px_1_Q;
wire          reset;
wire          stonyman_0_clkAdc;
wire   [7:0]  stonyman_0_px0_out;
wire          stonyman_1_clkAdc;
wire   [7:0]  stonyman_1_px0_out;
wire          stonyman_1_startAdcCapture;
wire          stonyman_1_writeEnable;
wire          stonyman_apb3_0_CG1_CAM0_FIFO_RDEN;
wire          stonyman_apb3_0_CG1_START_CAPTURE;
wire          tp_cam0_adcConvComplete_net_0;
wire          tp_cam0_empty_net_0;
wire          tp_cam0_full_net_0;
wire          tp_cam0_rden_net_0;
wire          tp_cam0_startAdcCapture_net_0;
wire          tp_cam0_startcap_net_0;
wire   [3:0]  tp_cam0_stateout_net_0;
wire   [3:0]  tp_cam0_substateout_net_0;
wire          tp_cam0_wren_net_0;
wire          tp_cam0_writePending_net_0;
wire          cam0_px_adc_cs_net_1;
wire          cam0_inphi_net_1;
wire          cam0_incv_net_1;
wire          cam0_resp_net_1;
wire          cam0_resv_net_1;
wire          cam0_incp_net_1;
wire          cam0_px_adc_sclk_net_1;
wire          tp_cam0_startcap_net_1;
wire          cam0_busy_net_1;
wire          tp_cam0_full_net_1;
wire          tp_cam0_empty_net_1;
wire          tp_cam0_rden_net_1;
wire          tp_cam0_wren_net_1;
wire          cam0_afull_net_1;
wire          tp_cam0_writePending_net_1;
wire          tp_cam0_startAdcCapture_net_1;
wire          tp_cam0_adcConvComplete_net_1;
wire          BIF_1_PREADY_net_0;
wire          BIF_1_PSLVERR_net_0;
wire          cam1_resp_net_1;
wire          cam1_incv_net_1;
wire          cam1_resv_net_1;
wire          cam1_inphi_net_1;
wire          cam1_incp_net_1;
wire          cam1_afull_net_1;
wire          cam1_busy_net_1;
wire          cam1_px_adc_cs_net_1;
wire          cam1_px_adc_sclk_net_1;
wire   [3:0]  tp_cam0_stateout_net_1;
wire   [3:0]  tp_cam0_substateout_net_1;
wire   [31:0] BIF_1_PRDATA_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire   [7:0]  px1_in_const_net_0;
wire   [7:0]  px2_in_const_net_0;
wire   [7:0]  px3_in_const_net_0;
wire   [7:0]  px1_in_const_net_1;
wire   [7:0]  px2_in_const_net_1;
wire   [7:0]  px3_in_const_net_1;
wire          GND_net;
wire   [31:0] CG0_CAM1_PIXELSIN_const_net_0;
wire   [31:0] CG0_CAM2_PIXELSIN_const_net_0;
wire   [31:0] CG0_CAM3_PIXELSIN_const_net_0;
wire   [31:0] CG1_CAM1_PIXELSIN_const_net_0;
wire   [31:0] CG1_CAM2_PIXELSIN_const_net_0;
wire   [31:0] CG1_CAM3_PIXELSIN_const_net_0;
wire   [31:0] CG2_CAM0_PIXELSIN_const_net_0;
wire   [31:0] CG2_CAM1_PIXELSIN_const_net_0;
wire   [31:0] CG2_CAM2_PIXELSIN_const_net_0;
wire   [31:0] CG2_CAM3_PIXELSIN_const_net_0;
wire   [31:0] CG3_CAM0_PIXELSIN_const_net_0;
wire   [31:0] CG3_CAM1_PIXELSIN_const_net_0;
wire   [31:0] CG3_CAM2_PIXELSIN_const_net_0;
wire   [31:0] CG3_CAM3_PIXELSIN_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                       = 1'b1;
assign px1_in_const_net_0            = 8'h00;
assign px2_in_const_net_0            = 8'h00;
assign px3_in_const_net_0            = 8'h00;
assign px1_in_const_net_1            = 8'h00;
assign px2_in_const_net_1            = 8'h00;
assign px3_in_const_net_1            = 8'h00;
assign GND_net                       = 1'b0;
assign CG0_CAM1_PIXELSIN_const_net_0 = 32'h00000000;
assign CG0_CAM2_PIXELSIN_const_net_0 = 32'h00000000;
assign CG0_CAM3_PIXELSIN_const_net_0 = 32'h00000000;
assign CG1_CAM1_PIXELSIN_const_net_0 = 32'h00000000;
assign CG1_CAM2_PIXELSIN_const_net_0 = 32'h00000000;
assign CG1_CAM3_PIXELSIN_const_net_0 = 32'h00000000;
assign CG2_CAM0_PIXELSIN_const_net_0 = 32'h00000000;
assign CG2_CAM1_PIXELSIN_const_net_0 = 32'h00000000;
assign CG2_CAM2_PIXELSIN_const_net_0 = 32'h00000000;
assign CG2_CAM3_PIXELSIN_const_net_0 = 32'h00000000;
assign CG3_CAM0_PIXELSIN_const_net_0 = 32'h00000000;
assign CG3_CAM1_PIXELSIN_const_net_0 = 32'h00000000;
assign CG3_CAM2_PIXELSIN_const_net_0 = 32'h00000000;
assign CG3_CAM3_PIXELSIN_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign cam0_px_adc_cs_net_1          = cam0_px_adc_cs_net_0;
assign cam0_px_adc_cs                = cam0_px_adc_cs_net_1;
assign cam0_inphi_net_1              = cam0_inphi_net_0;
assign cam0_inphi                    = cam0_inphi_net_1;
assign cam0_incv_net_1               = cam0_incv_net_0;
assign cam0_incv                     = cam0_incv_net_1;
assign cam0_resp_net_1               = cam0_resp_net_0;
assign cam0_resp                     = cam0_resp_net_1;
assign cam0_resv_net_1               = cam0_resv_net_0;
assign cam0_resv                     = cam0_resv_net_1;
assign cam0_incp_net_1               = cam0_incp_net_0;
assign cam0_incp                     = cam0_incp_net_1;
assign cam0_px_adc_sclk_net_1        = cam0_px_adc_sclk_net_0;
assign cam0_px_adc_sclk              = cam0_px_adc_sclk_net_1;
assign tp_cam0_startcap_net_1        = tp_cam0_startcap_net_0;
assign tp_cam0_startcap              = tp_cam0_startcap_net_1;
assign cam0_busy_net_1               = cam0_busy_net_0;
assign cam0_busy                     = cam0_busy_net_1;
assign tp_cam0_full_net_1            = tp_cam0_full_net_0;
assign tp_cam0_full                  = tp_cam0_full_net_1;
assign tp_cam0_empty_net_1           = tp_cam0_empty_net_0;
assign tp_cam0_empty                 = tp_cam0_empty_net_1;
assign tp_cam0_rden_net_1            = tp_cam0_rden_net_0;
assign tp_cam0_rden                  = tp_cam0_rden_net_1;
assign tp_cam0_wren_net_1            = tp_cam0_wren_net_0;
assign tp_cam0_wren                  = tp_cam0_wren_net_1;
assign cam0_afull_net_1              = cam0_afull_net_0;
assign cam0_afull                    = cam0_afull_net_1;
assign tp_cam0_writePending_net_1    = tp_cam0_writePending_net_0;
assign tp_cam0_writePending          = tp_cam0_writePending_net_1;
assign tp_cam0_startAdcCapture_net_1 = tp_cam0_startAdcCapture_net_0;
assign tp_cam0_startAdcCapture       = tp_cam0_startAdcCapture_net_1;
assign tp_cam0_adcConvComplete_net_1 = tp_cam0_adcConvComplete_net_0;
assign tp_cam0_adcConvComplete       = tp_cam0_adcConvComplete_net_1;
assign BIF_1_PREADY_net_0            = BIF_1_PREADY;
assign PREADY                        = BIF_1_PREADY_net_0;
assign BIF_1_PSLVERR_net_0           = BIF_1_PSLVERR;
assign PSLVERR                       = BIF_1_PSLVERR_net_0;
assign cam1_resp_net_1               = cam1_resp_net_0;
assign cam1_resp                     = cam1_resp_net_1;
assign cam1_incv_net_1               = cam1_incv_net_0;
assign cam1_incv                     = cam1_incv_net_1;
assign cam1_resv_net_1               = cam1_resv_net_0;
assign cam1_resv                     = cam1_resv_net_1;
assign cam1_inphi_net_1              = cam1_inphi_net_0;
assign cam1_inphi                    = cam1_inphi_net_1;
assign cam1_incp_net_1               = cam1_incp_net_0;
assign cam1_incp                     = cam1_incp_net_1;
assign cam1_afull_net_1              = cam1_afull_net_0;
assign cam1_afull                    = cam1_afull_net_1;
assign cam1_busy_net_1               = cam1_busy_net_0;
assign cam1_busy                     = cam1_busy_net_1;
assign cam1_px_adc_cs_net_1          = cam1_px_adc_cs_net_0;
assign cam1_px_adc_cs                = cam1_px_adc_cs_net_1;
assign cam1_px_adc_sclk_net_1        = cam1_px_adc_sclk_net_0;
assign cam1_px_adc_sclk              = cam1_px_adc_sclk_net_1;
assign tp_cam0_stateout_net_1        = tp_cam0_stateout_net_0;
assign tp_cam0_stateout[3:0]         = tp_cam0_stateout_net_1;
assign tp_cam0_substateout_net_1     = tp_cam0_substateout_net_0;
assign tp_cam0_substateout[3:0]      = tp_cam0_substateout_net_1;
assign BIF_1_PRDATA_net_0            = BIF_1_PRDATA;
assign PRDATA[31:0]                  = BIF_1_PRDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------adcxx1s101
adcxx1s101 adcxx1s101_0(
        // Inputs
        .clk                ( stonyman_0_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( tp_cam0_startAdcCapture_net_0 ),
        .miso               ( cam0_px_adc_din ),
        // Outputs
        .cs                 ( cam0_px_adc_cs_net_0 ),
        .conversionComplete ( tp_cam0_adcConvComplete_net_0 ),
        .dataout            ( adc081s101_0_dataout ) 
        );

//--------adcxx1s101
adcxx1s101 adcxx1s101_1(
        // Inputs
        .clk                ( stonyman_1_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( stonyman_1_startAdcCapture ),
        .miso               ( cam1_px_adc_din ),
        // Outputs
        .cs                 ( cam1_px_adc_cs_net_0 ),
        .conversionComplete ( adcxx1s101_1_conversionComplete ),
        .dataout            ( adcxx1s101_1_dataout ) 
        );

//--------fifo_px
fifo_px fifo_px_0(
        // Inputs
        .WE        ( tp_cam0_wren_net_0 ),
        .RE        ( tp_cam0_rden_net_0 ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_0_px0_out ),
        // Outputs
        .FULL      ( tp_cam0_full_net_0 ),
        .EMPTY     ( tp_cam0_empty_net_0 ),
        .AFULL     ( cam0_afull_net_0 ),
        .OVERFLOW  ( fifo_px_0_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_0_Q ) 
        );

//--------fifo_px
fifo_px fifo_px_1(
        // Inputs
        .WE        ( stonyman_1_writeEnable ),
        .RE        ( stonyman_apb3_0_CG1_CAM0_FIFO_RDEN ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_1_px0_out ),
        // Outputs
        .FULL      ( fifo_px_1_FULL ),
        .EMPTY     ( fifo_px_1_EMPTY ),
        .AFULL     ( cam1_afull_net_0 ),
        .OVERFLOW  ( fifo_px_1_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_1_Q ) 
        );

//--------MUX2
MUX2 MUX2_0(
        // Inputs
        .Data0_port ( stonyman_0_clkAdc ),
        .Data1_port ( VCC_net ),
        .Sel0       ( cam0_px_adc_cs_net_0 ),
        // Outputs
        .Result     ( cam0_px_adc_sclk_net_0 ) 
        );

//--------MUX2
MUX2 MUX2_1(
        // Inputs
        .Data0_port ( stonyman_1_clkAdc ),
        .Data1_port ( VCC_net ),
        .Sel0       ( cam1_px_adc_cs_net_0 ),
        // Outputs
        .Result     ( cam1_px_adc_sclk_net_0 ) 
        );

//--------stonyman
stonyman stonyman_0(
        // Inputs
        .clk             ( clk ),
        .reset           ( reset ),
        .startCapture    ( tp_cam0_startcap_net_0 ),
        .adcConvComplete ( tp_cam0_adcConvComplete_net_0 ),
        .px0_in          ( adc081s101_0_dataout ),
        .px1_in          ( px1_in_const_net_0 ),
        .px2_in          ( px2_in_const_net_0 ),
        .px3_in          ( px3_in_const_net_0 ),
        // Outputs
        .resp            ( cam0_resp_net_0 ),
        .incp            ( cam0_incp_net_0 ),
        .resv            ( cam0_resv_net_0 ),
        .incv            ( cam0_incv_net_0 ),
        .inphi           ( cam0_inphi_net_0 ),
        .writeEnable     ( tp_cam0_wren_net_0 ),
        .clkAdc          ( stonyman_0_clkAdc ),
        .startAdcCapture ( tp_cam0_startAdcCapture_net_0 ),
        .busy            ( cam0_busy_net_0 ),
        .tp_writePending ( tp_cam0_writePending_net_0 ),
        .px0_out         ( stonyman_0_px0_out ),
        .px1_out         (  ),
        .px2_out         (  ),
        .px3_out         (  ),
        .tp_stateout     ( tp_cam0_stateout_net_0 ),
        .tp_substateout  ( tp_cam0_substateout_net_0 ) 
        );

//--------stonyman
stonyman stonyman_1(
        // Inputs
        .clk             ( clk ),
        .reset           ( reset ),
        .startCapture    ( stonyman_apb3_0_CG1_START_CAPTURE ),
        .adcConvComplete ( adcxx1s101_1_conversionComplete ),
        .px0_in          ( adcxx1s101_1_dataout ),
        .px1_in          ( px1_in_const_net_1 ),
        .px2_in          ( px2_in_const_net_1 ),
        .px3_in          ( px3_in_const_net_1 ),
        // Outputs
        .resp            ( cam1_resp_net_0 ),
        .incp            ( cam1_incp_net_0 ),
        .resv            ( cam1_resv_net_0 ),
        .incv            ( cam1_incv_net_0 ),
        .inphi           ( cam1_inphi_net_0 ),
        .writeEnable     ( stonyman_1_writeEnable ),
        .clkAdc          ( stonyman_1_clkAdc ),
        .startAdcCapture ( stonyman_1_startAdcCapture ),
        .busy            ( cam1_busy_net_0 ),
        .tp_writePending (  ),
        .px0_out         ( stonyman_1_px0_out ),
        .px1_out         (  ),
        .px2_out         (  ),
        .px3_out         (  ),
        .tp_stateout     (  ),
        .tp_substateout  (  ) 
        );

//--------stonyman_apb3
stonyman_apb3 stonyman_apb3_0(
        // Inputs
        .PCLK                   ( clk ),
        .PRESERN                ( reset ),
        .PSEL                   ( PSEL ),
        .PENABLE                ( PENABLE ),
        .PWRITE                 ( PWRITE ),
        .CG0_BUSY               ( cam0_busy_net_0 ),
        .CG0_CAM0_FIFO_EMPTY    ( tp_cam0_empty_net_0 ),
        .CG0_CAM0_FIFO_FULL     ( tp_cam0_full_net_0 ),
        .CG0_CAM0_FIFO_AFULL    ( cam0_afull_net_0 ),
        .CG0_CAM0_FIFO_OVERFLOW ( fifo_px_0_OVERFLOW ),
        .CG0_CAM1_FIFO_EMPTY    ( VCC_net ),
        .CG0_CAM1_FIFO_FULL     ( GND_net ),
        .CG0_CAM1_FIFO_AFULL    ( GND_net ),
        .CG0_CAM1_FIFO_OVERFLOW ( GND_net ),
        .CG0_CAM2_FIFO_EMPTY    ( VCC_net ),
        .CG0_CAM2_FIFO_FULL     ( GND_net ),
        .CG0_CAM2_FIFO_AFULL    ( GND_net ),
        .CG0_CAM2_FIFO_OVERFLOW ( GND_net ),
        .CG0_CAM3_FIFO_EMPTY    ( VCC_net ),
        .CG0_CAM3_FIFO_FULL     ( GND_net ),
        .CG0_CAM3_FIFO_AFULL    ( GND_net ),
        .CG0_CAM3_FIFO_OVERFLOW ( GND_net ),
        .CG1_BUSY               ( cam1_busy_net_0 ),
        .CG1_CAM0_FIFO_EMPTY    ( fifo_px_1_EMPTY ),
        .CG1_CAM0_FIFO_FULL     ( fifo_px_1_FULL ),
        .CG1_CAM0_FIFO_AFULL    ( cam1_afull_net_0 ),
        .CG1_CAM0_FIFO_OVERFLOW ( fifo_px_1_OVERFLOW ),
        .CG1_CAM1_FIFO_EMPTY    ( VCC_net ),
        .CG1_CAM1_FIFO_FULL     ( GND_net ),
        .CG1_CAM1_FIFO_AFULL    ( GND_net ),
        .CG1_CAM1_FIFO_OVERFLOW ( GND_net ),
        .CG1_CAM2_FIFO_EMPTY    ( VCC_net ),
        .CG1_CAM2_FIFO_FULL     ( GND_net ),
        .CG1_CAM2_FIFO_AFULL    ( GND_net ),
        .CG1_CAM2_FIFO_OVERFLOW ( GND_net ),
        .CG1_CAM3_FIFO_EMPTY    ( VCC_net ),
        .CG1_CAM3_FIFO_FULL     ( GND_net ),
        .CG1_CAM3_FIFO_AFULL    ( GND_net ),
        .CG1_CAM3_FIFO_OVERFLOW ( GND_net ),
        .CG2_BUSY               ( GND_net ),
        .CG2_CAM0_FIFO_EMPTY    ( VCC_net ),
        .CG2_CAM0_FIFO_FULL     ( GND_net ),
        .CG2_CAM0_FIFO_AFULL    ( GND_net ),
        .CG2_CAM0_FIFO_OVERFLOW ( GND_net ),
        .CG2_CAM1_FIFO_EMPTY    ( VCC_net ),
        .CG2_CAM1_FIFO_FULL     ( GND_net ),
        .CG2_CAM1_FIFO_AFULL    ( GND_net ),
        .CG2_CAM1_FIFO_OVERFLOW ( GND_net ),
        .CG2_CAM2_FIFO_EMPTY    ( VCC_net ),
        .CG2_CAM2_FIFO_FULL     ( GND_net ),
        .CG2_CAM2_FIFO_AFULL    ( GND_net ),
        .CG2_CAM2_FIFO_OVERFLOW ( GND_net ),
        .CG2_CAM3_FIFO_EMPTY    ( VCC_net ),
        .CG2_CAM3_FIFO_FULL     ( GND_net ),
        .CG2_CAM3_FIFO_AFULL    ( GND_net ),
        .CG2_CAM3_FIFO_OVERFLOW ( GND_net ),
        .CG3_BUSY               ( GND_net ),
        .CG3_CAM0_FIFO_EMPTY    ( VCC_net ),
        .CG3_CAM0_FIFO_FULL     ( GND_net ),
        .CG3_CAM0_FIFO_AFULL    ( GND_net ),
        .CG3_CAM0_FIFO_OVERFLOW ( GND_net ),
        .CG3_CAM1_FIFO_EMPTY    ( VCC_net ),
        .CG3_CAM1_FIFO_FULL     ( GND_net ),
        .CG3_CAM1_FIFO_AFULL    ( GND_net ),
        .CG3_CAM1_FIFO_OVERFLOW ( GND_net ),
        .CG3_CAM2_FIFO_EMPTY    ( VCC_net ),
        .CG3_CAM2_FIFO_FULL     ( GND_net ),
        .CG3_CAM2_FIFO_AFULL    ( GND_net ),
        .CG3_CAM2_FIFO_OVERFLOW ( GND_net ),
        .CG3_CAM3_FIFO_EMPTY    ( VCC_net ),
        .CG3_CAM3_FIFO_FULL     ( GND_net ),
        .CG3_CAM3_FIFO_AFULL    ( GND_net ),
        .CG3_CAM3_FIFO_OVERFLOW ( GND_net ),
        .PADDR                  ( PADDR ),
        .PWDATA                 ( PWDATA ),
        .CG0_CAM0_PIXELSIN      ( fifo_px_0_Q ),
        .CG0_CAM1_PIXELSIN      ( CG0_CAM1_PIXELSIN_const_net_0 ),
        .CG0_CAM2_PIXELSIN      ( CG0_CAM2_PIXELSIN_const_net_0 ),
        .CG0_CAM3_PIXELSIN      ( CG0_CAM3_PIXELSIN_const_net_0 ),
        .CG1_CAM0_PIXELSIN      ( fifo_px_1_Q ),
        .CG1_CAM1_PIXELSIN      ( CG1_CAM1_PIXELSIN_const_net_0 ),
        .CG1_CAM2_PIXELSIN      ( CG1_CAM2_PIXELSIN_const_net_0 ),
        .CG1_CAM3_PIXELSIN      ( CG1_CAM3_PIXELSIN_const_net_0 ),
        .CG2_CAM0_PIXELSIN      ( CG2_CAM0_PIXELSIN_const_net_0 ),
        .CG2_CAM1_PIXELSIN      ( CG2_CAM1_PIXELSIN_const_net_0 ),
        .CG2_CAM2_PIXELSIN      ( CG2_CAM2_PIXELSIN_const_net_0 ),
        .CG2_CAM3_PIXELSIN      ( CG2_CAM3_PIXELSIN_const_net_0 ),
        .CG3_CAM0_PIXELSIN      ( CG3_CAM0_PIXELSIN_const_net_0 ),
        .CG3_CAM1_PIXELSIN      ( CG3_CAM1_PIXELSIN_const_net_0 ),
        .CG3_CAM2_PIXELSIN      ( CG3_CAM2_PIXELSIN_const_net_0 ),
        .CG3_CAM3_PIXELSIN      ( CG3_CAM3_PIXELSIN_const_net_0 ),
        // Outputs
        .PREADY                 ( BIF_1_PREADY ),
        .PSLVERR                ( BIF_1_PSLVERR ),
        .CG0_CAM0_FIFO_RDEN     ( tp_cam0_rden_net_0 ),
        .CG0_CAM1_FIFO_RDEN     (  ),
        .CG0_CAM2_FIFO_RDEN     (  ),
        .CG0_CAM3_FIFO_RDEN     (  ),
        .CG0_START_CAPTURE      ( tp_cam0_startcap_net_0 ),
        .CG1_CAM0_FIFO_RDEN     ( stonyman_apb3_0_CG1_CAM0_FIFO_RDEN ),
        .CG1_CAM1_FIFO_RDEN     (  ),
        .CG1_CAM2_FIFO_RDEN     (  ),
        .CG1_CAM3_FIFO_RDEN     (  ),
        .CG1_START_CAPTURE      ( stonyman_apb3_0_CG1_START_CAPTURE ),
        .CG2_CAM0_FIFO_RDEN     (  ),
        .CG2_CAM1_FIFO_RDEN     (  ),
        .CG2_CAM2_FIFO_RDEN     (  ),
        .CG2_CAM3_FIFO_RDEN     (  ),
        .CG2_START_CAPTURE      (  ),
        .CG3_CAM0_FIFO_RDEN     (  ),
        .CG3_CAM1_FIFO_RDEN     (  ),
        .CG3_CAM2_FIFO_RDEN     (  ),
        .CG3_CAM3_FIFO_RDEN     (  ),
        .CG3_START_CAPTURE      (  ),
        .PRDATA                 ( BIF_1_PRDATA ) 
        );


endmodule
