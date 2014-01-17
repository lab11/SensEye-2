///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: counter.v
// File history:
//      0: 2013-03-05: copied from blinker.v
//
// Description: 
//
// Count up forever (writing to a FIFO)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


`define CLKFREQ     (20000000)        // TODO (shouldn't be) hardcoded to 20MHz
`define TOGGLEVAL   (`CLKFREQ >> 4)

`define S_IDLE      (0)
`define S_INC       (1)
`define S_WAIT      (2)
`define S_WAITMORE  (3)


module counter( CLK, RESET, COUNT, WRITEEN );
input CLK;
input RESET;
output reg [31:0] COUNT;
output reg WRITEEN;


reg [31:0] counterInternal;
reg [1:0] state;


always@ (posedge CLK)
begin
   if(0 == RESET) begin
      WRITEEN <= 1;
      COUNT <= 0;
      counterInternal <= `TOGGLEVAL;
      state <= `S_INC;
   end
   else
   begin
      if(0 == counterInternal)
      begin
         COUNT <= COUNT+1;
         counterInternal <= `TOGGLEVAL;
         state <= `S_INC;
      end
      else
      begin
         counterInternal <= counterInternal-1;
         case(state)
            `S_INC:
            begin
               WRITEEN <= 0;
               state <= `S_WAIT;
            end
            `S_WAIT:
            begin
               state <= `S_WAITMORE;
            end
            `S_WAITMORE:
            begin
               WRITEEN <= 1;
               state <= `S_IDLE;
            end
            default
            begin
               // do nothing
            end
         endcase
      end
   end
end

endmodule
