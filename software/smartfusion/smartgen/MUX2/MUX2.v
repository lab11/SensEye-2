`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1


module MUX2(
       Data0_port,
       Data1_port,
       Sel0,
       Result
    );
input  Data0_port;
input  Data1_port;
input  Sel0;
output Result;

    
    MX2 MX2_Result (.A(Data0_port), .B(Data1_port), .S(Sel0), .Y(
        Result));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:10.1.3.1
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3SOC2
// OUTFORMAT:Verilog
// LPMTYPE:LPM_MUX
// LPM_HINT:None
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:Z:/russ/private/research/senseye/git/sw/smartfusion/impl/libero/insight/smartgen\MUX2
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:1
// SIZE:2
// SEL0_FANIN:AUTO
// SEL0_VAL:6
// SEL0_POLARITY:1
// SEL1_FANIN:AUTO
// SEL1_VAL:6
// SEL1_POLARITY:2
// SEL2_FANIN:AUTO
// SEL2_VAL:6
// SEL2_POLARITY:2
// SEL3_FANIN:AUTO
// SEL3_VAL:6
// SEL3_POLARITY:2
// SEL4_FANIN:AUTO
// SEL4_VAL:6
// SEL4_POLARITY:2

// _End_Comments_

