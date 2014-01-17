`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1


module FIFO_TEST_COUNTER(
       DATA,
       Q,
       WE,
       RE,
       CLK,
       FULL,
       EMPTY,
       RESET
    );
input  [31:0] DATA;
output [31:0] Q;
input  WE;
input  RE;
input  CLK;
output FULL;
output EMPTY;
input  RESET;

    wire WEP, REP, \MEM_RADDR[0] , \RBINNXTSHIFT[0] , \MEM_WADDR[0] , 
        \WBINNXTSHIFT[0] , \MEM_RADDR[1] , \RBINNXTSHIFT[1] , 
        \MEM_WADDR[1] , \WBINNXTSHIFT[1] , \MEM_RADDR[2] , 
        \RBINNXTSHIFT[2] , \MEM_WADDR[2] , \WBINNXTSHIFT[2] , 
        \MEM_RADDR[3] , \RBINNXTSHIFT[3] , \MEM_WADDR[3] , 
        \WBINNXTSHIFT[3] , \MEM_RADDR[4] , \RBINNXTSHIFT[4] , 
        \MEM_WADDR[4] , \WBINNXTSHIFT[4] , \MEM_RADDR[5] , 
        \RBINNXTSHIFT[5] , \MEM_WADDR[5] , \WBINNXTSHIFT[5] , 
        \MEM_RADDR[6] , \RBINNXTSHIFT[6] , \MEM_WADDR[6] , 
        \WBINNXTSHIFT[6] , \MEM_RADDR[7] , \RBINNXTSHIFT[7] , 
        \MEM_WADDR[7] , \WBINNXTSHIFT[7] , FULLINT, MEMORYWE, MEMWENEG, 
        \WGRY[0] , \WGRY[1] , \WGRY[2] , \WGRY[3] , \WGRY[4] , 
        \WGRY[5] , \WGRY[6] , \WGRY[7] , EMPTYINT, MEMORYRE, MEMRENEG, 
        DVLDI, DVLDX, \RGRY[0] , \RGRY[1] , \RGRY[2] , \RGRY[3] , 
        \RGRY[4] , \RGRY[5] , \RGRY[6] , \RGRY[7] , \QXI[0] , \QXI[1] , 
        \QXI[2] , \QXI[3] , \QXI[4] , \QXI[5] , \QXI[6] , \QXI[7] , 
        \QXI[8] , \QXI[9] , \QXI[10] , \QXI[11] , \QXI[12] , \QXI[13] , 
        \QXI[14] , \QXI[15] , \QXI[16] , \QXI[17] , \QXI[18] , 
        \QXI[19] , \QXI[20] , \QXI[21] , \QXI[22] , \QXI[23] , 
        \QXI[24] , \QXI[25] , \QXI[26] , \QXI[27] , \QXI[28] , 
        \QXI[29] , \QXI[30] , \QXI[31] , NAND2_1_Y, XOR2_20_Y, 
        XOR2_16_Y, XOR2_10_Y, XOR2_34_Y, XOR2_30_Y, XOR2_17_Y, 
        XOR2_23_Y, XOR2_29_Y, AND2_25_Y, AND2_5_Y, AND2_2_Y, AND2_28_Y, 
        AND2_6_Y, AND2_29_Y, AND2_9_Y, XOR2_22_Y, XOR2_19_Y, XOR2_9_Y, 
        XOR2_44_Y, XOR2_41_Y, XOR2_38_Y, XOR2_0_Y, XOR2_31_Y, 
        AND2_12_Y, AO1_12_Y, AND2_37_Y, AO1_2_Y, AND2_34_Y, AO1_3_Y, 
        AND2_13_Y, AND2_7_Y, AO1_20_Y, AND2_32_Y, AO1_14_Y, AND2_31_Y, 
        AND2_33_Y, AND2_24_Y, AND2_3_Y, AND2_8_Y, AND2_18_Y, AO1_1_Y, 
        AO1_15_Y, AO1_10_Y, AO1_4_Y, AO1_13_Y, AO1_7_Y, XOR2_26_Y, 
        XOR2_14_Y, XOR2_45_Y, XOR2_36_Y, XOR2_39_Y, XOR2_12_Y, 
        XOR2_21_Y, AND2A_0_Y, XOR2_8_Y, XOR2_13_Y, XOR2_27_Y, 
        XOR2_28_Y, XOR2_42_Y, XOR2_46_Y, XOR2_35_Y, XOR2_11_Y, 
        AND2_21_Y, AND2_11_Y, AND2_26_Y, AND2_1_Y, AND2_10_Y, AND2_0_Y, 
        AND2_19_Y, XOR2_37_Y, XOR2_3_Y, XOR2_6_Y, XOR2_1_Y, XOR2_7_Y, 
        XOR2_15_Y, XOR2_33_Y, XOR2_2_Y, AND2_35_Y, AO1_16_Y, AND2_22_Y, 
        AO1_6_Y, AND2_17_Y, AO1_21_Y, AND2_4_Y, AND2_16_Y, AO1_9_Y, 
        AND2_14_Y, AO1_5_Y, AND2_30_Y, AND2_15_Y, AND2_20_Y, AND2_27_Y, 
        AND2_23_Y, AND2_36_Y, AO1_8_Y, AO1_0_Y, AO1_17_Y, AO1_11_Y, 
        AO1_18_Y, AO1_19_Y, XOR2_43_Y, XOR2_4_Y, XOR2_5_Y, XOR2_32_Y, 
        XOR2_24_Y, XOR2_40_Y, XOR2_18_Y, NAND2_0_Y, AND3_0_Y, 
        XOR2_25_Y, XNOR2_1_Y, XNOR2_9_Y, XNOR2_12_Y, XNOR2_11_Y, 
        XNOR2_0_Y, XNOR2_2_Y, XNOR2_8_Y, AND3_2_Y, AND3_1_Y, AND3_5_Y, 
        XNOR2_13_Y, XNOR2_5_Y, XNOR2_3_Y, XNOR2_6_Y, XNOR2_7_Y, 
        XNOR2_14_Y, XNOR2_4_Y, XNOR2_10_Y, AND3_4_Y, AND3_3_Y, VCC, 
        GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    DFN1E1C0 \DFN1E1C0_Q[27]  (.D(\QXI[27] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[27]));
    AND2 AND2_2 (.A(\MEM_WADDR[3] ), .B(GND), .Y(AND2_2_Y));
    DFN1E1C0 \DFN1E1C0_Q[23]  (.D(\QXI[23] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[23]));
    AND2 AND2_20 (.A(AND2_35_Y), .B(XOR2_6_Y), .Y(AND2_20_Y));
    XNOR2 XNOR2_13 (.A(\RBINNXTSHIFT[7] ), .B(\MEM_WADDR[7] ), .Y(
        XNOR2_13_Y));
    AO1 AO1_11 (.A(XOR2_7_Y), .B(AO1_17_Y), .C(AND2_1_Y), .Y(AO1_11_Y));
    AND2 AND2_11 (.A(\MEM_RADDR[2] ), .B(GND), .Y(AND2_11_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_14_Y), .B(AO1_1_Y), .Y(
        \WBINNXTSHIFT[2] ));
    AND2 AND2_22 (.A(XOR2_6_Y), .B(XOR2_1_Y), .Y(AND2_22_Y));
    XNOR2 XNOR2_9 (.A(\MEM_RADDR[1] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XNOR2_9_Y));
    DFN1C0 DFN1C0_FULL (.D(FULLINT), .CLK(CLK), .CLR(RESET), .Q(FULL));
    XOR2 XOR2_19 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_19_Y));
    XOR2 XOR2_1 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_1_Y));
    XOR2 XOR2_23 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_23_Y));
    DFN1E1C0 \DFN1E1C0_Q[1]  (.D(\QXI[1] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[1]));
    DFN1E1C0 \DFN1E1C0_Q[4]  (.D(\QXI[4] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[4]));
    DFN1E1C0 \DFN1E1C0_Q[7]  (.D(\QXI[7] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[7]));
    XOR2 XOR2_38 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_38_Y));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    AO1 AO1_7 (.A(XOR2_0_Y), .B(AO1_13_Y), .C(AND2_29_Y), .Y(AO1_7_Y));
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_23_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[6] ));
    AND2 AND2_18 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_18_Y));
    AND2 AND2_15 (.A(AND2_16_Y), .B(AND2_17_Y), .Y(AND2_15_Y));
    XOR2 XOR2_45 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_45_Y));
    AND2 AND2_1 (.A(\MEM_RADDR[4] ), .B(GND), .Y(AND2_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[0] ));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[1] ));
    AO1 AO1_8 (.A(XOR2_3_Y), .B(AND2_36_Y), .C(AND2_21_Y), .Y(AO1_8_Y));
    AND2 AND2_10 (.A(\MEM_RADDR[5] ), .B(GND), .Y(AND2_10_Y));
    AND2 AND2_7 (.A(AND2_12_Y), .B(AND2_37_Y), .Y(AND2_7_Y));
    XOR2 XOR2_20 (.A(\WBINNXTSHIFT[0] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XOR2_20_Y));
    AND2 AND2_12 (.A(XOR2_22_Y), .B(XOR2_19_Y), .Y(AND2_12_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_17_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[5] ));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[4] ));
    AO1 AO1_15 (.A(XOR2_9_Y), .B(AO1_1_Y), .C(AND2_5_Y), .Y(AO1_15_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_29_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[7] ));
    AND2 AND2_EMPTYINT (.A(AND3_5_Y), .B(XNOR2_13_Y), .Y(EMPTYINT));
    RAM512X18 \RAM512X18_QXI[31]  (.RADDR8(GND), .RADDR7(GND), .RADDR6(
        \MEM_RADDR[6] ), .RADDR5(\MEM_RADDR[5] ), .RADDR4(
        \MEM_RADDR[4] ), .RADDR3(\MEM_RADDR[3] ), .RADDR2(
        \MEM_RADDR[2] ), .RADDR1(\MEM_RADDR[1] ), .RADDR0(
        \MEM_RADDR[0] ), .WADDR8(GND), .WADDR7(GND), .WADDR6(
        \MEM_WADDR[6] ), .WADDR5(\MEM_WADDR[5] ), .WADDR4(
        \MEM_WADDR[4] ), .WADDR3(\MEM_WADDR[3] ), .WADDR2(
        \MEM_WADDR[2] ), .WADDR1(\MEM_WADDR[1] ), .WADDR0(
        \MEM_WADDR[0] ), .WD17(GND), .WD16(DATA[31]), .WD15(DATA[30]), 
        .WD14(DATA[29]), .WD13(DATA[28]), .WD12(DATA[27]), .WD11(
        DATA[26]), .WD10(DATA[25]), .WD9(DATA[24]), .WD8(GND), .WD7(
        DATA[23]), .WD6(DATA[22]), .WD5(DATA[21]), .WD4(DATA[20]), 
        .WD3(DATA[19]), .WD2(DATA[18]), .WD1(DATA[17]), .WD0(DATA[16]), 
        .RW0(GND), .RW1(VCC), .WW0(GND), .WW1(VCC), .PIPE(GND), .REN(
        MEMRENEG), .WEN(MEMWENEG), .RCLK(CLK), .WCLK(CLK), .RESET(
        RESET), .RD17(), .RD16(\QXI[31] ), .RD15(\QXI[30] ), .RD14(
        \QXI[29] ), .RD13(\QXI[28] ), .RD12(\QXI[27] ), .RD11(
        \QXI[26] ), .RD10(\QXI[25] ), .RD9(\QXI[24] ), .RD8(), .RD7(
        \QXI[23] ), .RD6(\QXI[22] ), .RD5(\QXI[21] ), .RD4(\QXI[20] ), 
        .RD3(\QXI[19] ), .RD2(\QXI[18] ), .RD1(\QXI[17] ), .RD0(
        \QXI[16] ));
    XOR2 XOR2_24 (.A(\MEM_RADDR[5] ), .B(GND), .Y(XOR2_24_Y));
    XOR2 XOR2_21 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_21_Y));
    DFN1E1C0 \DFN1E1C0_Q[25]  (.D(\QXI[25] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[25]));
    DFN1E1C0 \DFN1E1C0_Q[24]  (.D(\QXI[24] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[24]));
    XOR2 XOR2_16 (.A(\WBINNXTSHIFT[1] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XOR2_16_Y));
    AND3 AND3_3 (.A(XNOR2_14_Y), .B(XNOR2_4_Y), .C(XNOR2_10_Y), .Y(
        AND3_3_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_6 (.A(\MEM_WADDR[5] ), .B(GND), .Y(AND2_6_Y));
    AND3 AND3_0 (.A(XNOR2_11_Y), .B(AND3_2_Y), .C(AND3_1_Y), .Y(
        AND3_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[2] ));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_27_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[2] ));
    XOR2 XOR2_33 (.A(\MEM_RADDR[6] ), .B(GND), .Y(XOR2_33_Y));
    XNOR2 XNOR2_2 (.A(\MEM_RADDR[5] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_2_Y));
    AO1 AO1_14 (.A(AND2_32_Y), .B(AO1_10_Y), .C(AO1_20_Y), .Y(AO1_14_Y)
        );
    XOR2 XOR2_4 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_4_Y));
    AND3 AND3_1 (.A(XNOR2_0_Y), .B(XNOR2_2_Y), .C(XNOR2_8_Y), .Y(
        AND3_1_Y));
    AND2 AND2_24 (.A(AND2_12_Y), .B(XOR2_9_Y), .Y(AND2_24_Y));
    XNOR2 XNOR2_0 (.A(\MEM_RADDR[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_0_Y));
    AND2 AND2_31 (.A(AND2_7_Y), .B(AND2_32_Y), .Y(AND2_31_Y));
    XOR2 XOR2_18 (.A(\MEM_RADDR[7] ), .B(GND), .Y(XOR2_18_Y));
    DFN1E1C0 \DFN1E1C0_Q[18]  (.D(\QXI[18] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[18]));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_32_Y), .B(AO1_17_Y), .Y(
        \RBINNXTSHIFT[4] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_13_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[1] ));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_34_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[3] ));
    XOR2 XOR2_8 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_8_Y));
    DFN1E1C0 \DFN1E1C0_Q[6]  (.D(\QXI[6] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[6]));
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_40_Y), .B(AO1_18_Y), .Y(
        \RBINNXTSHIFT[6] ));
    XOR2 XOR2_30 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_30_Y));
    AND2 AND2_35 (.A(XOR2_37_Y), .B(XOR2_3_Y), .Y(AND2_35_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[7] ));
    AND2 AND2_29 (.A(\MEM_WADDR[6] ), .B(GND), .Y(AND2_29_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[4] ));
    XOR2 XOR2_34 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_34_Y));
    XOR2 XOR2_31 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_31_Y));
    RAM512X18 \RAM512X18_QXI[15]  (.RADDR8(GND), .RADDR7(GND), .RADDR6(
        \MEM_RADDR[6] ), .RADDR5(\MEM_RADDR[5] ), .RADDR4(
        \MEM_RADDR[4] ), .RADDR3(\MEM_RADDR[3] ), .RADDR2(
        \MEM_RADDR[2] ), .RADDR1(\MEM_RADDR[1] ), .RADDR0(
        \MEM_RADDR[0] ), .WADDR8(GND), .WADDR7(GND), .WADDR6(
        \MEM_WADDR[6] ), .WADDR5(\MEM_WADDR[5] ), .WADDR4(
        \MEM_WADDR[4] ), .WADDR3(\MEM_WADDR[3] ), .WADDR2(
        \MEM_WADDR[2] ), .WADDR1(\MEM_WADDR[1] ), .WADDR0(
        \MEM_WADDR[0] ), .WD17(GND), .WD16(DATA[15]), .WD15(DATA[14]), 
        .WD14(DATA[13]), .WD13(DATA[12]), .WD12(DATA[11]), .WD11(
        DATA[10]), .WD10(DATA[9]), .WD9(DATA[8]), .WD8(GND), .WD7(
        DATA[7]), .WD6(DATA[6]), .WD5(DATA[5]), .WD4(DATA[4]), .WD3(
        DATA[3]), .WD2(DATA[2]), .WD1(DATA[1]), .WD0(DATA[0]), .RW0(
        GND), .RW1(VCC), .WW0(GND), .WW1(VCC), .PIPE(GND), .REN(
        MEMRENEG), .WEN(MEMWENEG), .RCLK(CLK), .WCLK(CLK), .RESET(
        RESET), .RD17(), .RD16(\QXI[15] ), .RD15(\QXI[14] ), .RD14(
        \QXI[13] ), .RD13(\QXI[12] ), .RD12(\QXI[11] ), .RD11(
        \QXI[10] ), .RD10(\QXI[9] ), .RD9(\QXI[8] ), .RD8(), .RD7(
        \QXI[7] ), .RD6(\QXI[6] ), .RD5(\QXI[5] ), .RD4(\QXI[4] ), 
        .RD3(\QXI[3] ), .RD2(\QXI[2] ), .RD1(\QXI[1] ), .RD0(\QXI[0] ));
    INV WEBUBBLE (.A(WE), .Y(WEP));
    AND2 AND2_3 (.A(AND2_7_Y), .B(XOR2_41_Y), .Y(AND2_3_Y));
    AND2 AND2_30 (.A(AND2_16_Y), .B(AND2_14_Y), .Y(AND2_30_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_36_Y), .B(AO1_10_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XNOR2 XNOR2_6 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_6_Y));
    AND2 AND2_14 (.A(AND2_17_Y), .B(AND2_4_Y), .Y(AND2_14_Y));
    AND2 AND2_32 (.A(AND2_34_Y), .B(AND2_13_Y), .Y(AND2_32_Y));
    XOR2 \XOR2_WBINNXTSHIFT[6]  (.A(XOR2_12_Y), .B(AO1_13_Y), .Y(
        \WBINNXTSHIFT[6] ));
    DFN1C0 \DFN1C0_MEM_RADDR[5]  (.D(\RBINNXTSHIFT[5] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[5] ));
    XOR2 XOR2_46 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_46_Y));
    XNOR2 XNOR2_11 (.A(\MEM_RADDR[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_11_Y));
    AO1 AO1_2 (.A(XOR2_38_Y), .B(AND2_28_Y), .C(AND2_6_Y), .Y(AO1_2_Y));
    DFN1C0 \DFN1C0_WGRY[0]  (.D(XOR2_20_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[0] ));
    AND2 AND2_26 (.A(\MEM_RADDR[3] ), .B(GND), .Y(AND2_26_Y));
    XOR2 XOR2_9 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_9_Y));
    AND3 AND3_5 (.A(XNOR2_7_Y), .B(AND3_4_Y), .C(AND3_3_Y), .Y(
        AND3_5_Y));
    AND2 AND2_23 (.A(AND2_15_Y), .B(XOR2_33_Y), .Y(AND2_23_Y));
    XNOR2 XNOR2_4 (.A(\RBINNXTSHIFT[5] ), .B(\MEM_WADDR[5] ), .Y(
        XNOR2_4_Y));
    XOR2 XOR2_5 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_5_Y));
    AND2 AND2_19 (.A(\MEM_RADDR[7] ), .B(GND), .Y(AND2_19_Y));
    DFN1E1C0 \DFN1E1C0_Q[0]  (.D(\QXI[0] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[0]));
    DFN1C0 \DFN1C0_MEM_RADDR[6]  (.D(\RBINNXTSHIFT[6] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[6] ));
    XOR2 XOR2_22 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(XOR2_22_Y));
    DFN1E1C0 \DFN1E1C0_Q[16]  (.D(\QXI[16] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[16]));
    AO1 AO1_1 (.A(XOR2_19_Y), .B(AND2_18_Y), .C(AND2_25_Y), .Y(AO1_1_Y)
        );
    XOR2 XOR2_13 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_13_Y));
    INV REBUBBLE (.A(RE), .Y(REP));
    AO1 AO1_3 (.A(XOR2_31_Y), .B(AND2_29_Y), .C(AND2_9_Y), .Y(AO1_3_Y));
    AO1 AO1_18 (.A(AND2_17_Y), .B(AO1_17_Y), .C(AO1_6_Y), .Y(AO1_18_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_5_Y), .B(AO1_0_Y), .Y(
        \RBINNXTSHIFT[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[7]  (.D(\RBINNXTSHIFT[7] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[7] ));
    AND2 AND2_16 (.A(AND2_35_Y), .B(AND2_22_Y), .Y(AND2_16_Y));
    AND2 AND2_13 (.A(XOR2_0_Y), .B(XOR2_31_Y), .Y(AND2_13_Y));
    XOR2 XOR2_10 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_10_Y));
    XNOR2 XNOR2_1 (.A(\MEM_RADDR[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        XNOR2_1_Y));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_42_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[4] ));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[2] ));
    XOR2 XOR2_27 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_27_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(REP), .Y(MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_45_Y), .B(AO1_15_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_7_Y));
    AND2 AND2_5 (.A(\MEM_WADDR[2] ), .B(GND), .Y(AND2_5_Y));
    XOR2 XOR2_14 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_14_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[1] ), .Y(
        XNOR2_3_Y));
    XOR2 XOR2_11 (.A(\RBINNXTSHIFT[7] ), .B(GND), .Y(XOR2_11_Y));
    DFN1E1C0 \DFN1E1C0_Q[31]  (.D(\QXI[31] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[31]));
    XOR2 XOR2_25 (.A(\MEM_RADDR[7] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_25_Y));
    DFN1E1C0 \DFN1E1C0_Q[28]  (.D(\QXI[28] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[28]));
    DFN1E1C0 \DFN1E1C0_Q[30]  (.D(\QXI[30] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[30]));
    DFN1E1C0 \DFN1E1C0_Q[11]  (.D(\QXI[11] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[11]));
    AND2 AND2_34 (.A(XOR2_41_Y), .B(XOR2_38_Y), .Y(AND2_34_Y));
    AO1 AO1_6 (.A(XOR2_15_Y), .B(AND2_1_Y), .C(AND2_10_Y), .Y(AO1_6_Y));
    DFN1E1C0 \DFN1E1C0_Q[10]  (.D(\QXI[10] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[10]));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[3] ));
    AND3 AND3_2 (.A(XNOR2_1_Y), .B(XNOR2_9_Y), .C(XNOR2_12_Y), .Y(
        AND3_2_Y));
    AO1 AO1_12 (.A(XOR2_44_Y), .B(AND2_5_Y), .C(AND2_2_Y), .Y(AO1_12_Y)
        );
    XOR2 XOR2_32 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_32_Y));
    AND2 AND2_9 (.A(\MEM_WADDR[7] ), .B(GND), .Y(AND2_9_Y));
    DFN1E1C0 \DFN1E1C0_Q[9]  (.D(\QXI[9] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[9]));
    DFN1E1C0 \DFN1E1C0_Q[5]  (.D(\QXI[5] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[5]));
    XOR2 XOR2_43 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_43_Y));
    AO1 AO1_9 (.A(AND2_4_Y), .B(AO1_6_Y), .C(AO1_21_Y), .Y(AO1_9_Y));
    DFN1C0 DFN1C0_DVLDX (.D(DVLDI), .CLK(CLK), .CLR(RESET), .Q(DVLDX));
    NAND2 NAND2_0 (.A(FULL), .B(VCC), .Y(NAND2_0_Y));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_35_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[6] ));
    AND2 AND2_27 (.A(AND2_16_Y), .B(XOR2_7_Y), .Y(AND2_27_Y));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(CLK), .CLR(RESET), .Q(
        DVLDI));
    XNOR2 XNOR2_10 (.A(\RBINNXTSHIFT[6] ), .B(\MEM_WADDR[6] ), .Y(
        XNOR2_10_Y));
    DFN1E1C0 \DFN1E1C0_Q[12]  (.D(\QXI[12] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[12]));
    AND2 AND2_MEMORYWE (.A(NAND2_0_Y), .B(WEP), .Y(MEMORYWE));
    AO1 AO1_20 (.A(AND2_13_Y), .B(AO1_2_Y), .C(AO1_3_Y), .Y(AO1_20_Y));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_10_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[2] ));
    AO1 AO1_0 (.A(XOR2_6_Y), .B(AO1_8_Y), .C(AND2_11_Y), .Y(AO1_0_Y));
    XOR2 XOR2_29 (.A(\WBINNXTSHIFT[7] ), .B(GND), .Y(XOR2_29_Y));
    XOR2 XOR2_40 (.A(\MEM_RADDR[6] ), .B(GND), .Y(XOR2_40_Y));
    DFN1E1C0 \DFN1E1C0_Q[26]  (.D(\QXI[26] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[26]));
    XOR2 XOR2_2 (.A(\MEM_RADDR[7] ), .B(GND), .Y(XOR2_2_Y));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_46_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[5] ));
    AND2 AND2_36 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_36_Y));
    XOR2 XOR2_37 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(XOR2_37_Y));
    AND2A AND2A_0 (.A(EMPTY), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_11_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[7] ));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_24_Y), .B(AO1_11_Y), .Y(
        \RBINNXTSHIFT[5] ));
    AND2 AND2_33 (.A(AND2_7_Y), .B(AND2_34_Y), .Y(AND2_33_Y));
    XOR2 XOR2_44 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_44_Y));
    DFN1E1C0 \DFN1E1C0_Q[19]  (.D(\QXI[19] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[19]));
    AO1 AO1_10 (.A(AND2_37_Y), .B(AO1_1_Y), .C(AO1_12_Y), .Y(AO1_10_Y));
    XOR2 XOR2_41 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_35_Y));
    DFN1C0 \DFN1C0_WGRY[1]  (.D(XOR2_16_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[1] ));
    DFN1P0 DFN1P0_EMPTY (.D(EMPTYINT), .CLK(CLK), .PRE(RESET), .Q(
        EMPTY));
    DFN1E1C0 \DFN1E1C0_Q[3]  (.D(\QXI[3] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[3]));
    AND2 AND2_0 (.A(\MEM_RADDR[6] ), .B(GND), .Y(AND2_0_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_18_Y), .B(AO1_19_Y), .Y(
        \RBINNXTSHIFT[7] ));
    AO1 AO1_16 (.A(XOR2_1_Y), .B(AND2_11_Y), .C(AND2_26_Y), .Y(
        AO1_16_Y));
    AND2 AND2_17 (.A(XOR2_7_Y), .B(XOR2_15_Y), .Y(AND2_17_Y));
    DFN1E1C0 \DFN1E1C0_Q[17]  (.D(\QXI[17] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[17]));
    XOR2 XOR2_6 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_6_Y));
    AO1 AO1_13 (.A(AND2_34_Y), .B(AO1_10_Y), .C(AO1_2_Y), .Y(AO1_13_Y));
    DFN1E1C0 \DFN1E1C0_Q[13]  (.D(\QXI[13] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[13]));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[6] ));
    XOR2 \XOR2_WBINNXTSHIFT[5]  (.A(XOR2_39_Y), .B(AO1_4_Y), .Y(
        \WBINNXTSHIFT[5] ));
    XNOR2 XNOR2_12 (.A(\MEM_RADDR[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_7_Y));
    XOR2 XOR2_12 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_12_Y));
    AO1 AO1_19 (.A(XOR2_33_Y), .B(AO1_18_Y), .C(AND2_0_Y), .Y(AO1_19_Y)
        );
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_21_Y), .B(AO1_7_Y), .Y(
        \WBINNXTSHIFT[7] ));
    XOR2 XOR2_26 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_26_Y));
    AND2 AND2_4 (.A(XOR2_33_Y), .B(XOR2_2_Y), .Y(AND2_4_Y));
    DFN1E1C0 \DFN1E1C0_Q[21]  (.D(\QXI[21] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[21]));
    AND2 AND2_FULLINT (.A(AND3_0_Y), .B(XOR2_25_Y), .Y(FULLINT));
    DFN1E1C0 \DFN1E1C0_Q[2]  (.D(\QXI[2] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[2]));
    DFN1E1C0 \DFN1E1C0_Q[20]  (.D(\QXI[20] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[20]));
    XNOR2 XNOR2_5 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[0] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_5 (.A(AND2_14_Y), .B(AO1_17_Y), .C(AO1_9_Y), .Y(AO1_5_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_28_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[3] ));
    XOR2 XOR2_39 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_39_Y));
    AND2 AND2_8 (.A(AND2_33_Y), .B(XOR2_0_Y), .Y(AND2_8_Y));
    XOR2 XOR2_3 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_3_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[1] ));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_43_Y), .B(AND2_36_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_17_Y));
    DFN1E1C0 \DFN1E1C0_Q[15]  (.D(\QXI[15] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[15]));
    XOR2 XOR2_28 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_28_Y));
    DFN1E1C0 \DFN1E1C0_Q[14]  (.D(\QXI[14] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[14]));
    XOR2 XOR2_15 (.A(\MEM_RADDR[5] ), .B(GND), .Y(XOR2_15_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[5] ));
    AO1 AO1_17 (.A(AND2_22_Y), .B(AO1_8_Y), .C(AO1_16_Y), .Y(AO1_17_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[0] ));
    DFN1E1C0 \DFN1E1C0_Q[22]  (.D(\QXI[22] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[22]));
    DFN1E1C0 \DFN1E1C0_Q[8]  (.D(\QXI[8] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[8]));
    AND3 AND3_4 (.A(XNOR2_5_Y), .B(XNOR2_3_Y), .C(XNOR2_6_Y), .Y(
        AND3_4_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_8_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_26_Y), .B(AND2_18_Y), .Y(
        \WBINNXTSHIFT[1] ));
    AND2 AND2_21 (.A(\MEM_RADDR[1] ), .B(GND), .Y(AND2_21_Y));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_30_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[4] ));
    XOR2 XOR2_0 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_0_Y));
    NAND2 NAND2_1 (.A(EMPTY), .B(VCC), .Y(NAND2_1_Y));
    AO1 AO1_4 (.A(XOR2_41_Y), .B(AO1_10_Y), .C(AND2_28_Y), .Y(AO1_4_Y));
    AND2 AND2_37 (.A(XOR2_9_Y), .B(XOR2_44_Y), .Y(AND2_37_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_4_Y), .B(AO1_8_Y), .Y(
        \RBINNXTSHIFT[2] ));
    XNOR2 XNOR2_14 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_14_Y));
    XOR2 XOR2_42 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_42_Y));
    DFN1E1C0 \DFN1E1C0_Q[29]  (.D(\QXI[29] ), .CLK(CLK), .CLR(RESET), 
        .E(DVLDI), .Q(Q[29]));
    AO1 AO1_21 (.A(XOR2_2_Y), .B(AND2_0_Y), .C(AND2_19_Y), .Y(AO1_21_Y)
        );
    XOR2 XOR2_36 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_36_Y));
    XNOR2 XNOR2_8 (.A(\MEM_RADDR[6] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_8_Y));
    AND2 AND2_28 (.A(\MEM_WADDR[4] ), .B(GND), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(\MEM_WADDR[1] ), .B(GND), .Y(AND2_25_Y));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:10.1.3.1
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3SOC2
// OUTFORMAT:Verilog
// LPMTYPE:LPM_SOFTFIFO
// LPM_HINT:MEMFF
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:Z:/russ/private/research/insight/git/sw/smartfusion/impl/libero/insight/smartgen\FIFO_TEST_COUNTER
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:32
// WDEPTH:128
// RWIDTH:32
// RDEPTH:128
// CLKS:1
// CLOCK_PN:CLK
// WCLK_EDGE:RISE
// ACLR_PN:RESET
// RESET_POLARITY:0
// INIT_RAM:F
// WE_POLARITY:0
// RE_POLARITY:0
// FF_PN:FULL
// AF_PN:AFULL
// WACK_PN:WACK
// OVRFLOW_PN:OVERFLOW
// WRCNT_PN:WRCNT
// WE_PN:WE
// EF_PN:EMPTY
// AE_PN:AEMPTY
// DVLD_PN:DVLD
// UDRFLOW_PN:UNDERFLOW
// RDCNT_PN:RDCNT
// RE_PN:RE
// CONTROLLERONLY:F
// FSTOP:YES
// ESTOP:YES
// WRITEACK:NO
// OVERFLOW:NO
// WRCOUNT:NO
// DATAVALID:NO
// UNDERFLOW:NO
// RDCOUNT:NO
// AF_PORT_PN:AFVAL
// AE_PORT_PN:AEVAL
// AFFLAG:NONE
// AEFLAG:NONE
// DATA_IN_PN:DATA
// DATA_OUT_PN:Q
// CASCADE:0

// _End_Comments_

