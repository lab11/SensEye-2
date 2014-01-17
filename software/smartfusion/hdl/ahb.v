/*
    Copyright (c) 2008-2011 EmCraft Systems.
    All rights reserved.
    EmCraft Systems proprietary and confidential.

    Description:
	  APB Slave Interface for PSRAM_CR IP

    $Revision: 0001 $
*/

module AHB
(   

// IOs for AHB bus
input 			HSEL, HWRITE, HMASTLOCK, HREADY, HRESETn, HCLK,
input 	[31:0] 	HADDR, HWDATA,
input 	[2:0] 	HSIZE, HBURST,
input 	[3:0] 	HPROT,
input 	[1:0] 	HTRANS,

output 			HREADYOUT,
output 	[1:0] 	HRESP,
output 	[31:0] 	HRDATA,

//CR_INT interface
output reg dt_req,
input dt_ack,
output wire dt_rw,

output [15:0] data_to_cr,//Data to CR registers (write operation)
input  [15:0] data_from_cr,//Data from CR registers (read operation)
output [31:0] max_addr,//PSRAM max address to access 
output [31:0] reg_addr//CR register address to access

);

reg				hwrite_reg, hready_reg;
reg		[9:0]	haddr_reg;
reg				fsm;
reg		[31:0]	hrdata_reg;

assign HRDATA		= hrdata_reg;
assign HRESP		= 2'b00;
assign HREADYOUT	= hready_reg;

//-------------------------------

parameter BASE		 = 768;
parameter DATA_IN    = (BASE + 0);//Data to PSRAM CR registers
parameter DATA_OUT   = (BASE + 4);//Data from PSRAM CR registers
parameter PSRAM_ADDR = (BASE + 8);///Access to that register triggers data transfer / [16] - operation type 1-write, 0-read / [15:0] register address/The biggest PSRAM address
parameter OPERATION  = (BASE + 12);
// In that address a special value that indicates a presence of the PSRAM_IP is contained;
parameter PSRAM_CR_MAGIC_ADDR = (BASE + 16); 

parameter PSRAM_CR_MAGIC_REG = 32'h0000_7777; // Special value that indicates a presence of the PSRAM_IP;


parameter VERSION_ROM = 256;
parameter VERSION_ROM_BYTE1 = (VERSION_ROM + 4);
parameter VERSION_ROM_BYTE2 = (VERSION_ROM + 8);
parameter VERSION_ROM_BYTE3 = (VERSION_ROM + 12);

`define A2F500_KIT     16'hA2F5
// Change the following macros if the FPGA design type/version needs to be udpated
`define FPGA_MAGIC          `A2F500_KIT
`define FPGA_VERSION_BYTE1  1
`define FPGA_VERSION_BYTE2  2
`define FPGA_VERSION_BYTE3  0

//parameter CLK_DIV = 2;

//-------------------------------

reg data_in_sel;
reg psram_addr_sel;
reg operation_sel;

reg busy;

reg [15:0] data_in;
reg [15:0] data_out;
reg [31:0] psram_addr;
reg [31:0] operation;


always @ (posedge HCLK)
begin
	if (~HRESETn)
	begin
		fsm	    <= 0;
		hwrite_reg  <= 1'b0;
		hready_reg	<= 1;
		hrdata_reg	<= 0;
		haddr_reg	<= 0;
		data_in_sel    <= 0;
		psram_addr_sel <= 0;
		operation_sel  <= 0;
	end
	else
	begin
		case (fsm)
			0:
			begin
				if (HSEL && HREADY && HTRANS[1] && HSIZE==3'b010 )
				begin
					hwrite_reg	<= HWRITE;
					fsm			<= 1;
					hready_reg	<= 0;
					haddr_reg	<= HADDR[9:0];
				end
				data_in_sel    <= 0;
				psram_addr_sel <= 0;
				operation_sel  <= 0;
			end

			1:
			begin
				fsm	<= 0;
				hready_reg <= 1;
				case (haddr_reg)
					DATA_IN:
					begin
						data_in_sel <= 1;
						if (~hwrite_reg)
							hrdata_reg <= {15'b0, data_in};
					end

					DATA_OUT:
					begin
						if (~hwrite_reg)
							hrdata_reg <= {busy, 15'b0, data_out};
					end

					PSRAM_ADDR:
					begin
						psram_addr_sel <= 1;
						if (~hwrite_reg)
							hrdata_reg <= psram_addr;
					end

					OPERATION:
					begin
						operation_sel <= 1;
						if (~hwrite_reg)
							hrdata_reg <= operation;
					end

					PSRAM_CR_MAGIC_ADDR:
					begin
						if (~hwrite_reg)
							hrdata_reg <= PSRAM_CR_MAGIC_REG;
					end

					VERSION_ROM:
					begin
						if (~hwrite_reg)
							hrdata_reg <= `FPGA_MAGIC;
					end

					VERSION_ROM_BYTE1:
					begin
						if (~hwrite_reg)
							hrdata_reg <= `FPGA_VERSION_BYTE1;
					end

					VERSION_ROM_BYTE2:
					begin
						if (~hwrite_reg)
							hrdata_reg <= `FPGA_VERSION_BYTE2;
					end

					VERSION_ROM_BYTE3:
					begin
						if (~hwrite_reg)
							hrdata_reg <= `FPGA_VERSION_BYTE3;
					end
				endcase
			end
		endcase
	end
end
//---------------------------------------------------------------------------------------------------//
//Write to Registers 

//data_in
always @(posedge HCLK)
begin
	if (~HRESETn)
		data_in <= 0;
	else
    begin
		if(data_in_sel & hwrite_reg & (~busy))
			data_in <= HWDATA[15:0];
    end
end
    
//psram_addr
always @(posedge HCLK)
begin
	if (~HRESETn)
		psram_addr <= 0;
	else
	begin
		if(psram_addr_sel & hwrite_reg & (~busy))
			psram_addr <= HWDATA;
	end
end

//operation
always @(posedge HCLK)
begin
	if (~HRESETn)
		operation <= 0;
    else
	begin
		if(operation_sel & hwrite_reg & (~busy))
			operation <= HWDATA;
    end
end
    
//---------------------------------------------------------------------------------------------------//
//Read from Registers    

    
//---------------------------------------------------------------------------------------------------//
//Transfer request

always @(posedge HCLK)
begin
    if(~HRESETn)
        dt_req <= 0;
    else
		dt_req <= (operation_sel & hwrite_reg & (~busy)) | (dt_req & (~dt_ack)); 
end
 
    
//---------------------------------------------------------------------------------------------------//    
//Busy
    
always @(posedge HCLK)
begin
	if(~HRESETn)
        busy <= 0;
    else
		busy <= (dt_req | dt_ack);//(apb_pwrite & (data_in_sel | tms_sel)) | (dt_req | tms_req) | (dt_ack | tms_ack);
end
    
//---------------------------------------------------------------------------------------------------//    
//Fix Data from SI

always @(posedge HCLK)
begin
	if(~HRESETn)
        data_out <= 0;
    else
	begin
		if(dt_req & dt_ack)
			data_out <= data_from_cr;
	end
end

 
assign data_to_cr = data_in;
 
assign max_addr = psram_addr;

assign reg_addr = {16'h0000,operation[15:0]};

assign dt_rw = operation[16]; 
 
endmodule
