//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Wed Jan 15 15:32:59 2014
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  imaging
//////////////////////////////////////////////////////////////////////
imaging imaging_0 (
    // Inputs
    .reset(NSYSRESET),
    .clk(SYSCLK),
    .cam0_px_adc_din({1{1'b0}}),
    .cam1_px_adc_din({1{1'b0}}),
    .PENABLE({1{1'b0}}),
    .PWRITE({1{1'b0}}),
    .PSEL({1{1'b0}}),
    .PADDR({32{1'b0}}),
    .PWDATA({32{1'b0}}),

    // Outputs
    .cam0_px_adc_cs( ),
    .cam0_inphi( ),
    .cam0_incv( ),
    .cam0_resp( ),
    .cam0_resv( ),
    .cam0_incp( ),
    .cam0_px_adc_sclk( ),
    .tp_cam0_startcap( ),
    .cam0_busy( ),
    .tp_cam0_full( ),
    .tp_cam0_empty( ),
    .tp_cam0_rden( ),
    .tp_cam0_wren( ),
    .cam0_afull( ),
    .tp_cam0_writePending( ),
    .tp_cam0_startAdcCapture( ),
    .tp_cam0_adcConvComplete( ),
    .PREADY( ),
    .PSLVERR( ),
    .cam1_resp( ),
    .cam1_incv( ),
    .cam1_resv( ),
    .cam1_inphi( ),
    .cam1_incp( ),
    .cam1_afull( ),
    .cam1_busy( ),
    .cam1_px_adc_cs( ),
    .cam1_px_adc_sclk( ),
    .tp_cam0_stateout( ),
    .tp_cam0_substateout( ),
    .PRDATA( )

    // Inouts

);

endmodule

