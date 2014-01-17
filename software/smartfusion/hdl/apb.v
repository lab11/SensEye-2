/*
    Copyright (c) 2008-2011 EmCraft Systems.
    All rights reserved.
    EmCraft Systems proprietary and confidential.

    Description:
	  APB Slave Interface for PSRAM_CR IP

    $Revision: 0001 $
*/

module apb
(   
input wire clr,

//APB Bus
input wire  apb_pclk,
input wire  [5:0]apb_paddr,
input wire  apb_psel,
input wire  apb_penable,
input wire  apb_pwrite,
output reg [31:0] apb_prdata,
input wire  [31:0] apb_pwdata,

//CR_INT interface
output reg dt_req,
input wire dt_ack,
output wire dt_rw,

output wire [31:0] data_to_cr,//Data to CR registers (write operation)
input  wire [31:0] data_from_cr,//Data from CR registers (read operation)
output wire [31:0] max_addr,//PSRAM max address to access 
output wire [31:0] reg_addr//CR register address to access

);

//-------------------------------

parameter DATA_IN    = 0;//Data to PSRAM CR registers
parameter DATA_OUT   = 4;//Data from PSRAM CR registers
parameter PSRAM_ADDR = 8;//The biggest PSRAM address
parameter OPERATION  = 12;//Access to that register triggers data transfer / [16] - operation type 1-write, 0-read / [15:0] register address

parameter PSRAM_CR_MAGIC_ADDR = 16; // In that address a special value that indicates a presence of the PSRAM_IP is contained;

parameter [31:0] PSRAM_CR_MAGIC_REG = 32'h0000_7777; // Special value that indicates a presence of the PSRAM_IP;

//parameter CLK_DIV = 2;

//-------------------------------

reg data_in_sel;
reg data_out_sel;
reg psram_addr_sel;
reg operation_sel;

reg magic_reg_sel; // indicates a mode of reading the magic reg;

reg busy;

reg [31:0] data_in;
reg [31:0] data_out;
reg [31:0] psram_addr;
reg [31:0] operation;


//---------------------------------------------------------------------------------------------------//
//Registers Selector

always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                data_in_sel    <= 0;
                data_out_sel   <= 0;
                psram_addr_sel <= 0;
                operation_sel  <= 0;
            end
        else
            begin
                if(apb_psel & (~apb_penable))
                    begin
                        data_in_sel    <= (apb_paddr == DATA_IN) ? 1 : 0;
                        data_out_sel   <= (apb_paddr == DATA_OUT) ? 1 : 0;
                        psram_addr_sel <= (apb_paddr == PSRAM_ADDR) ? 1 : 0;
                        operation_sel  <= (apb_paddr == OPERATION) ? 1 : 0;
                        
                        magic_reg_sel <= (apb_paddr == PSRAM_CR_MAGIC_ADDR) ? 1 : 0;
                    end
                else
                    begin
                        data_in_sel    <= 0;
                        data_out_sel   <= 0;
                        psram_addr_sel <= 0;
                        operation_sel  <= 0;
                    end
            end
    end

//---------------------------------------------------------------------------------------------------//
//Write to Registers 

//data_in
always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                data_in <= 0;
            end
        else
            begin
                if(data_in_sel & apb_pwrite & (~busy))
                    begin
                        data_in <= apb_pwdata;
                    end
            end
    end
    
//psram_addr
always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                psram_addr <= 0;
            end
        else
            begin
                if(psram_addr_sel & apb_pwrite & (~busy))
                    begin
                        psram_addr <= apb_pwdata;
                    end
            end
    end

//operation
always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                operation <= 0;
            end
        else
            begin
                if(operation_sel & apb_pwrite & (~busy))
                    begin
                        operation <= apb_pwdata;
                    end
            end
    end
    
//---------------------------------------------------------------------------------------------------//
//Read from Registers    

always @(*)
    begin
        if(~apb_pwrite)
          begin
            case({data_in_sel, data_out_sel, psram_addr_sel, operation_sel, magic_reg_sel})
              5'b10000:
                begin
                  apb_prdata <= data_in;
                end
              5'b01000:
                begin
                  apb_prdata <= {busy, data_out[30:0]};
                end
              5'b00100:
                begin
                  apb_prdata <= psram_addr;
                end
              5'b00010:
                begin
                  apb_prdata <= operation;
                end
              5'b00001:
                begin
                  apb_prdata <= PSRAM_CR_MAGIC_REG;
                end
              default:
                begin
                  apb_prdata <= 32'h0000_0000;
                end
            endcase
          end
        else
          begin
            apb_prdata <= 32'h00000000;
          end
    end   
    
//---------------------------------------------------------------------------------------------------//
//Transfer request

always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                dt_req <= 0;
            end
        else
            begin
                dt_req <= (operation_sel & apb_pwrite & (~busy)) | (dt_req & (~dt_ack)); 
            end
    end
 
    
//---------------------------------------------------------------------------------------------------//    
//Busy
    
always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                busy <= 0;
            end
        else
            begin
                busy <= dt_req | dt_ack;//(apb_pwrite & (data_in_sel | tms_sel)) | (dt_req | tms_req) | (dt_ack | tms_ack);
            end
    end
    
//---------------------------------------------------------------------------------------------------//    
//Fix Data from SI

always @(posedge apb_pclk or posedge clr)
    begin
        if(clr == 1)
            begin
                data_out <= 0;
            end
        else
            begin
                if(dt_req & dt_ack)
                    begin
                        data_out <= data_from_cr;
                    end
            end
    end




 
assign data_to_cr = data_in;
 
assign max_addr = psram_addr;

assign reg_addr = {16'h0000,operation[15:0]};

assign dt_rw = operation[16]; 
 
      
    
endmodule
