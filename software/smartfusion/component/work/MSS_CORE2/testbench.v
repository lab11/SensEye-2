//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Thu Jan 09 17:06:42 2014
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
// Instantiate Unit Under Test:  MSS_CORE2
//////////////////////////////////////////////////////////////////////
MSS_CORE2 MSS_CORE2_0 (
    // Inputs
    .MAINXIN({1{1'b0}}),
    .MSSHREADY({1{1'b0}}),
    .MSSHRESP({1{1'b0}}),
    .F2M_GPI_2({1{1'b0}}),
    .F2M_GPI_1({1{1'b0}}),
    .F2M_GPI_0({1{1'b0}}),
    .MAC_CLK(SYSCLK),
    .MSSHRDATA({32{1'b0}}),
    .UART_0_RXD({1{1'b0}}),
    .MAC_RXD({2{1'b0}}),
    .MAC_CRSDV({1{1'b0}}),
    .MAC_RXER({1{1'b0}}),
    .MSS_RESET_N(NSYSRESET),

    // Outputs
    .FAB_CLK( ),
    .M2F_RESET_N( ),
    .MSSHWRITE( ),
    .MSSHLOCK( ),
    .MSSHADDR( ),
    .MSSHTRANS( ),
    .MSSHSIZE( ),
    .MSSHWDATA( ),
    .UART_0_TXD( ),
    .MAC_TXD( ),
    .MAC_TXEN( ),
    .MAC_MDC( ),

    // Inouts
    .MAC_MDIO( )

);

endmodule

