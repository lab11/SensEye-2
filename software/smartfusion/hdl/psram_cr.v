/*
    Copyright (c) 2008-2011 EmCraft Systems.
    All rights reserved.
    EmCraft Systems proprietary and confidential.

    Description:
	  Top module of PSRAM_CR IP

    $Revision: 0001 $
*/

module psram_cr
(   

//APB Bus
input 			HSEL, HWRITE, HMASTLOCK, HREADY, HRESETn, HCLK,
input 	[31:0] 	HADDR, HWDATA,
input 	[2:0] 	HSIZE, HBURST,
input 	[3:0] 	HPROT,
input 	[1:0] 	HTRANS,

output 			HREADYOUT,
output 	[1:0] 	HRESP,
output 	[31:0] 	HRDATA,

//PSRAM interface
output [24:0] address,
output [1:0]  nbyte_en,
output        ncs0,
output        ncs1,
inout  [15:0] data,
output noe0,
output noe1,
output nwe

);

//-------------------------------

//CR_INT interface

wire dt_req;
wire dt_ack;
wire dt_rw;

wire [15:0] data_to_cr;//Data to CR registers (write operation)
wire [15:0] data_from_cr;//Data from CR registers (read operation)
wire [31:0] max_addr;//PSRAM max address to access 
wire [31:0] reg_addr;//CR register address to access


//---------------------------------------------------------------------------------------------------//
//Insrance of the APB interface module

AHB ahb0
(   
//APB Bus
.HSEL(HSEL),
.HWRITE(HWRITE),
.HMASTLOCK(HMASTLOCK),
.HREADY(HREADY),
.HRESETn(HRESETn),
.HCLK(HCLK),
.HADDR(HADDR),
.HWDATA(HWDATA),
.HSIZE(HSIZE),
.HBURST(HBURST),
.HPROT(HPROT),
.HTRANS(HTRANS),

.HREADYOUT(HREADYOUT),
.HRESP(HRESP),
.HRDATA(HRDATA),

//CR_INT interface
.dt_req(dt_req),
.dt_ack(dt_ack),
.dt_rw(dt_rw),

.data_to_cr(data_to_cr),//Data to CR registers (write operation)
.data_from_cr(data_from_cr),//Data from CR registers (read operation)
.max_addr(max_addr),//PSRAM max address to access 
.reg_addr(reg_addr)//CR register address to access

);


//---------------------------------------------------------------------------------------------------//
//Insrance of the PSRAM interface module

cr_int cr_int_i0
(   
.clr(HRESETn),
.clk(HCLK),

//Interface to  APB submodule
.dt_req(dt_req),
.dt_ack(dt_ack),
.rw(dt_rw),

.data_in(data_to_cr),//Data to CR registers (write operation)
.data_out(data_from_cr),//Data from CR registers (read operation)
.max_addr(max_addr),//PSRAM max address to access 
.reg_addr(reg_addr),//CR register address to access

//PSRAM interface
.address(address),
.nbyte_en(nbyte_en),
.ncs0(ncs0),
.ncs1(ncs1),
.data(data),
.noe0(noe0),
.noe1(noe1),
.nwe(nwe)
);

endmodule
