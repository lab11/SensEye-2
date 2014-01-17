///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: fifo_32bit_apb3.v
// File history:
//      0: 2013-03-05: created
//
// Description: 
//
// APB interface for a SmartFusion FIFO (8-bits wide)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
///////////////////////////////////////////////////////////////////////////////////////////////////

`define WIDTH            = 32;

`define MASK_REG_RANGE   = 8'hFF;
`define OFFSET_REG_FLAGS = 8'h0;
`define OFFSET_REG_DATA  = 8'h4;


//////////////////////////////////////////////////////////////////////
// fifo_32bit_apb3
module fifo_32bit_apb3 ( PCLK, PRESERN, PSEL, PENABLE, PREADY, PSLVERR, PWRITE, PADDR, PWDATA, PRDATA,
                         /* APPLICATION SPECIFIC SIGNALS */
                         FULL, EMPTY, WREN, RDEN, DATAIN );

/* APB SIGNALS */
input PCLK;      // clock
input PRESERN;   // reset

input               PSEL;
input               PENABLE;
output wire         PREADY;
output wire         PSLVERR;
input               PWRITE;
input [31:0]        PADDR;
input [31:0]        PWDATA;
output wire [31:0]  PRDATA;

/* APPLICATION SPECIFIC SIGNALS */
input FULL;
input EMPTY;
output wire WREN;  // active low
output wire RDEN;  // active low
input [31:0] DATAIN;


wire bus_write_enable;
wire bus_read_enable;

wire ioreg_ready;


// no errors, always ready
assign PSLVERR=0;
assign PREADY=(ioreg_ready && PENABLE);

// bus conditions (to export)
assign bus_write_enable = (PENABLE &&  PWRITE && PSEL);
assign bus_read_enable = (!PWRITE && PSEL);


assign RDEN = !(bus_read_enable && !EMPTY);
assign WREN = !(bus_write_enable && !FULL);


fifo_32bit_ioreg fifo_32bit_ioreg_0( .clk(PCLK),.rst(PRESERN),.rden(bus_read_enable),.addr(PADDR),
                                     .ready(ioreg_ready),.dataout(PRDATA),.full(FULL),
                                     .empty(EMPTY),.appDatain(DATAIN) );


endmodule


//////////////////////////////////////////////////////////////////////
// fifo_32bit_ioreg
module fifo_32bit_ioreg(clk, rst, rden, addr, ready, dataout, full, empty, appDatain);
input clk;
input rst;
input rden;
input [31:0] addr;
output reg ready;
output reg [31:0] dataout;

input full;
input empty;
input [31:0] appDatain;


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= 8'd0;
   end
   else
   begin
      if(1'b1 == rden)
      begin
         // FIXME: add symbolic defines
         //if(`OFFSET_REG_FLAGS == (`MASK_REG_RANGE&addr))
         if(8'h0 == (addr&8'hFF))
         begin
            dataout <= {30'd0,empty,full};
            ready <= 1;
         end
         // FIXME: add symbolic defines
         //else if(`OFFSET_REG_DATA == (`MASK_REG_RANGE&addr))
         else if((8'h4 == (addr&8'hFF)))
         begin
            dataout <= appDatain;
            ready <= 1;
         end
         else
         begin
            dataout <= 0;
            ready <= 1;
         end
      end
      else
      begin
         ready <= 0;
      end
   end
end


endmodule

