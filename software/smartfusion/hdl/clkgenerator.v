///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: clkgenerator.v
// File history:
//      0.01a:2013-02-26: created
//
// Description: 
//
// Module to generate slower clocks (specifically the 20MHz used by the camera subsystem)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


// FIXME: none of this works!
//`define CLK_FREQ                 (40000000)  // FIXME (shouldn't be) hardcoded to 40MHz
//`define CLK_FREQ_CAMERA          (20000000)  // FIXME (shouldn't be) hardcoded to 20MHz
//`define TICKS_CLK_CAMERA         ((`CLK_FREQ/`CLK_FREQ_CAMERA)-2)

module clkgenerator( clk, rst, clkCameraSS );

input clk;
input rst;
output reg clkCameraSS;


reg [2:0] counter;


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      counter <= 0;
   end

   clkCameraSS <= clkCameraSS^1;
/* FIXME russ: doesn't work
   if(0 == counter)
   begin
      clkCameraSS <= ~clkCameraSS;
      counter <= `TICKS_CLK_CAMERA;
   end
   else
   begin
      counter <= counter-1;
   end*/
end

endmodule
