/*
    Copyright (c) 2008-2011 EmCraft Systems.
    All rights reserved.
    EmCraft Systems proprietary and confidential.

    Description:
	  PSRAM CR Interface

    $Revision: 0001 $
*/

module cr_int
(   
input clr,
input clk,

//Interface to  APB submodule
input dt_req,
output reg dt_ack,
input rw,

input [15:0] data_in,//Data to CR registers (write operation)
output reg  [15:0] data_out,//Data from CR registers (read operation)
input [31:0] max_addr,//PSRAM max address to access 
input [31:0] reg_addr,//CR register address to access

//PSRAM interface
output reg  [24:0] address,
output reg  [1:0]  nbyte_en,
output reg         ncs0,
output ncs1,
inout  [15:0] data,
output reg         noe0,
output noe1,
output reg         nwe
);

//-------------------------------
parameter OP_NUMBER = 8;
parameter AC_NUMBER = 4;

//-------------------------------
reg start;
reg start_0;
reg start_1;
reg enable;

reg [3:0] op_counter;
reg op_counter_lb1;
reg [3:0] ac_counter;
reg ac_counter_lb1;

reg active_data;
reg operation_wr;
reg [15:0] data_reg;

wire stop_enable = (ac_counter_lb1 & op_counter_lb1);

//---------------------------------------------------------------------------------------------------//
//Enable

always @(posedge clk)
begin
	if(~clr)
	begin
		start_0 <= 0;
		start_1 <= 0;
		start   <= 0;
	end
	else
	begin
		start_0 <= dt_req;
		start_1 <= start_0;
		start   <= start_0 & (~start_1); 
	end
end


always @(posedge clk)
begin
	if(~clr)
		enable <= 0;
    else
		enable <= start | enable & (~stop_enable);
end


//---------------------------------------------------------------------------------------------------//
//Operatation counter: 1 access to PSRAM

always @(posedge clk)
begin
	if(~clr)
	begin
		op_counter     <= 0;
		op_counter_lb1 <= 0;
	end
	else
	begin
		if(enable)
		begin
			op_counter     <= (op_counter_lb1) ? 0 : op_counter + 1;
			op_counter_lb1 <= (op_counter == (OP_NUMBER - 2)) ? 1 : 0;
		end
		else
		begin
			op_counter     <= 0;
			op_counter_lb1 <= 0;
		end
	end
end

//---------------------------------------------------------------------------------------------------//
//Acceess cycle counter: 1 access to the CR registers requires 4 operations of read/write to PSRAM

always @(posedge clk)
begin
	if(~clr)
	begin
		ac_counter     <= 0;
		ac_counter_lb1 <= 0;
	end
	else
	begin
		if(enable)
		begin
			if(op_counter_lb1)
			begin
				ac_counter     <= (ac_counter_lb1) ? 0 : ac_counter + 1;
				ac_counter_lb1 <= (ac_counter == (AC_NUMBER - 2)) ? 1 : 0;
			end
		end
		else
		begin
			ac_counter     <= 0;
			ac_counter_lb1 <= 0;
		end
	end
end

//---------------------------------------------------------------------------------------------------//
//Stop_enable and acknowledge


always @(posedge clk)
begin
	if (~clr)
		dt_ack <= 0;
	else
		dt_ack <= stop_enable;
end  


//---------------------------------------------------------------------------------------------------//
//
always @(*)
begin
	operation_wr = 0;
	case(ac_counter)
		0:begin operation_wr = 0; end
		1:begin operation_wr = 0; end
		2:begin operation_wr = 1; end
		3:begin operation_wr = (rw) ? 0 : 1; end
	endcase
end

//---------------------------------------------------------------------------------------------------//
//PSRAM signals

always @(posedge clk)
begin
	if(~clr)
	begin
		address <= 0;
		nbyte_en <= 2'b11;
		ncs0 <= 1;
        //ncs1 <= 1;//Flash
		data_reg <= 0;
		noe0  <= 1;
        //noe1  <= 1;//Flash
		nwe   <= 1;
        
        data_out <= 0;
        active_data <= 0;
	end
    else
	begin
		if(enable)
		begin
			case(op_counter)
		        0:
				begin
					ncs0 <= 0;
					nbyte_en <= 2'b00;
					address <= max_addr[24:0];
		  
					active_data <= (operation_wr) ? 1 : 0;//write
					if(operation_wr)
						data_reg <= (ac_counter_lb1) ? data_in[15:0] : reg_addr[15:0];
				end
		
				1:
				begin
					noe0 <= operation_wr;
					nwe <= ~operation_wr;
				end
		
				6://fix data if read
				begin
					noe0 <= 1;
					nwe  <= 1;
					ncs0 <= 1;
					nbyte_en <= 2'b11;
					
					active_data <= 0;
					
					data_out <= (ac_counter_lb1) ? data : data_out;
				end
			endcase              
	    end
		else
		begin
			address <= 0;
			nbyte_en <= 2'b11;
			ncs0 <= 1;
			//ncs1 <= 1;//Flash
			data_reg <= 0;
			noe0  <= 1;
			//noe1  <= 1;//Flash
			nwe   <= 1;
			
			active_data <= 0;
			data_reg <= 0;
		end
	end
end

assign data = (active_data) ? data_reg : 16'hzzzz;
  
assign ncs1 = 1'b1;
assign noe1 = 1'b1;

endmodule
