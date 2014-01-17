// VersionROM.v

// This is a simple APB-accessible 4-word ROM
// used for storing FPGA design type and version information.

module VersionROM(
input           PRESETn,
input           PCLK,
input           PSEL,
input           PENABLE,
input           PWRITE,
input   [3:0]   PADDR,
input   [15:0]  PWDATA,
output  [15:0]  PRDATA,
output          PREADY,
output          PSLVERR
);

reg     [15:0]  PRDATA;

// Add new design types below

`define A2F500_KIT     16'hA2F5

// Change the following macros if the FPGA design type/version needs to be udpated

`define FPGA_MAGIC          `A2F500_KIT
`define FPGA_VERSION_BYTE1  1
`define FPGA_VERSION_BYTE2  2
`define FPGA_VERSION_BYTE3  0


assign PREADY = 1'b1;
assign PSLVERR = 1'b0;

// APB read cycle

always @ (posedge PCLK or negedge PRESETn)
begin
    if (!PRESETn)
        PRDATA <= 0;
    else if (PSEL && !PWRITE && !PENABLE)
        case (PADDR)
            0:
                PRDATA <= `FPGA_MAGIC;
            4:
                PRDATA <= `FPGA_VERSION_BYTE1;
            8:
                PRDATA <= `FPGA_VERSION_BYTE2;
           12:
                PRDATA <= `FPGA_VERSION_BYTE3;
        endcase
end

endmodule