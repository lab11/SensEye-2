`timescale 1 ns/100 ps
// Version: v11.1 SP3 11.1.3.1


module FIFO_PIXEL_SELECT(
       WD,
       RD,
       WEN,
       REN,
       WADDR,
       RADDR,
       RWCLK,
       RESET
    );
input  [31:0] WD;
output [7:0] RD;
input  WEN;
input  REN;
input  [8:0] WADDR;
input  [10:0] RADDR;
input  RWCLK;
input  RESET;

    wire VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    RAM4K9 FIFO_PIXEL_SELECT_R0C0 (.ADDRA11(GND), .ADDRA10(GND), 
        .ADDRA9(GND), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(RADDR[10]), .ADDRB9(
        RADDR[9]), .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(
        RADDR[6]), .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(
        RADDR[3]), .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(
        RADDR[0]), .DINA8(GND), .DINA7(WD[25]), .DINA6(WD[24]), .DINA5(
        WD[17]), .DINA4(WD[16]), .DINA3(WD[9]), .DINA2(WD[8]), .DINA1(
        WD[1]), .DINA0(WD[0]), .DINB8(GND), .DINB7(GND), .DINB6(GND), 
        .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(GND)
        , .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(VCC), .WIDTHB0(VCC), 
        .WIDTHB1(GND), .PIPEA(GND), .PIPEB(VCC), .WMODEA(GND), .WMODEB(
        GND), .BLKA(WEN), .BLKB(REN), .WENA(GND), .WENB(VCC), .CLKA(
        RWCLK), .CLKB(RWCLK), .RESET(RESET), .DOUTA8(), .DOUTA7(), 
        .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(
        ), .DOUTA0(), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), 
        .DOUTB4(), .DOUTB3(), .DOUTB2(), .DOUTB1(RD[1]), .DOUTB0(RD[0])
        );
    RAM4K9 FIFO_PIXEL_SELECT_R0C3 (.ADDRA11(GND), .ADDRA10(GND), 
        .ADDRA9(GND), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(RADDR[10]), .ADDRB9(
        RADDR[9]), .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(
        RADDR[6]), .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(
        RADDR[3]), .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(
        RADDR[0]), .DINA8(GND), .DINA7(WD[31]), .DINA6(WD[30]), .DINA5(
        WD[23]), .DINA4(WD[22]), .DINA3(WD[15]), .DINA2(WD[14]), 
        .DINA1(WD[7]), .DINA0(WD[6]), .DINB8(GND), .DINB7(GND), .DINB6(
        GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), 
        .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(VCC), 
        .WIDTHB0(VCC), .WIDTHB1(GND), .PIPEA(GND), .PIPEB(VCC), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(WEN), .BLKB(REN), .WENA(GND), 
        .WENB(VCC), .CLKA(RWCLK), .CLKB(RWCLK), .RESET(RESET), .DOUTA8(
        ), .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), 
        .DOUTA2(), .DOUTA1(), .DOUTA0(), .DOUTB8(), .DOUTB7(), .DOUTB6(
        ), .DOUTB5(), .DOUTB4(), .DOUTB3(), .DOUTB2(), .DOUTB1(RD[7]), 
        .DOUTB0(RD[6]));
    RAM4K9 FIFO_PIXEL_SELECT_R0C1 (.ADDRA11(GND), .ADDRA10(GND), 
        .ADDRA9(GND), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(RADDR[10]), .ADDRB9(
        RADDR[9]), .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(
        RADDR[6]), .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(
        RADDR[3]), .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(
        RADDR[0]), .DINA8(GND), .DINA7(WD[27]), .DINA6(WD[26]), .DINA5(
        WD[19]), .DINA4(WD[18]), .DINA3(WD[11]), .DINA2(WD[10]), 
        .DINA1(WD[3]), .DINA0(WD[2]), .DINB8(GND), .DINB7(GND), .DINB6(
        GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), 
        .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(VCC), 
        .WIDTHB0(VCC), .WIDTHB1(GND), .PIPEA(GND), .PIPEB(VCC), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(WEN), .BLKB(REN), .WENA(GND), 
        .WENB(VCC), .CLKA(RWCLK), .CLKB(RWCLK), .RESET(RESET), .DOUTA8(
        ), .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), 
        .DOUTA2(), .DOUTA1(), .DOUTA0(), .DOUTB8(), .DOUTB7(), .DOUTB6(
        ), .DOUTB5(), .DOUTB4(), .DOUTB3(), .DOUTB2(), .DOUTB1(RD[3]), 
        .DOUTB0(RD[2]));
    RAM4K9 FIFO_PIXEL_SELECT_R0C2 (.ADDRA11(GND), .ADDRA10(GND), 
        .ADDRA9(GND), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(RADDR[10]), .ADDRB9(
        RADDR[9]), .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(
        RADDR[6]), .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(
        RADDR[3]), .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(
        RADDR[0]), .DINA8(GND), .DINA7(WD[29]), .DINA6(WD[28]), .DINA5(
        WD[21]), .DINA4(WD[20]), .DINA3(WD[13]), .DINA2(WD[12]), 
        .DINA1(WD[5]), .DINA0(WD[4]), .DINB8(GND), .DINB7(GND), .DINB6(
        GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), 
        .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(VCC), 
        .WIDTHB0(VCC), .WIDTHB1(GND), .PIPEA(GND), .PIPEB(VCC), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(WEN), .BLKB(REN), .WENA(GND), 
        .WENB(VCC), .CLKA(RWCLK), .CLKB(RWCLK), .RESET(RESET), .DOUTA8(
        ), .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), 
        .DOUTA2(), .DOUTA1(), .DOUTA0(), .DOUTB8(), .DOUTB7(), .DOUTB6(
        ), .DOUTB5(), .DOUTB4(), .DOUTB3(), .DOUTB2(), .DOUTB1(RD[5]), 
        .DOUTB0(RD[4]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.1.3.1
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3SOC2
// OUTFORMAT:Verilog
// LPMTYPE:LPM_RAM
// LPM_HINT:TWO
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:\\vmware-host/Shared Folders/lab11 On My Mac/workspace/senseye/sw/smartfusion/impl/libero/senseye/smartgen\FIFO_PIXEL_SELECT
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:32
// WDEPTH:392
// RWIDTH:8
// RDEPTH:1568
// CLKS:1
// CLOCK_PN:RWCLK
// RESET_PN:RESET
// RESET_POLARITY:0
// INIT_RAM:F
// DEFAULT_WORD:0x00
// CASCADE:1
// WCLK_EDGE:RISE
// PMODE2:1
// DATA_IN_PN:WD
// WADDRESS_PN:WADDR
// WE_PN:WEN
// DATA_OUT_PN:RD
// RADDRESS_PN:RADDR
// RE_PN:REN
// WE_POLARITY:0
// RE_POLARITY:0
// PTYPE:1

// _End_Comments_

