///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: inputConditioner.v
// File history:
//      0.01a: 2013-02-22:  created
//
// Description: 
//
// A conditioner for an asyncronous input, to prevent metastability (and debounce)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CONDITIONER_WIDTH  (6)

module inputConditioner( clk, rst, ip, op );

input clk;
input rst;
input ip;
output wire op;

reg [`CONDITIONER_WIDTH-1:0] conditioner;

wire [4:0] intermediate;

// TODO: should be for loop
assign intermediate[0] = conditioner[0]&ip;
assign intermediate[1] = conditioner[1]&ip;
assign intermediate[2] = conditioner[2]&ip;
assign intermediate[3] = conditioner[3]&ip;
assign intermediate[4] = conditioner[4]&ip;
assign op = conditioner[5]&ip;


always@ (posedge clk)
begin
   // chain the flip-flops
   conditioner <= {intermediate[(`CONDITIONER_WIDTH-2):0],ip};
end


endmodule
