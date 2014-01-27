`timescale 1 ns/100 ps
// Version: v11.1 SP3 11.1.3.1


module fifo_pixel_data(
       cam0_fifo_write_data,
       cam0_fifo_read_data,
       cam0_fifo_write_enable,
       cam0_fifo_read_enable,
       clk,
       cam0_fifo_full,
       cam0_fifo_empty,
       reset,
       cam0_fifo_afull,
       cam0_fifo_data_valid,
       cam0_fifo_overflow
    );
input  [7:0] cam0_fifo_write_data;
output [31:0] cam0_fifo_read_data;
input  cam0_fifo_write_enable;
input  cam0_fifo_read_enable;
input  clk;
output cam0_fifo_full;
output cam0_fifo_empty;
input  reset;
output cam0_fifo_afull;
output cam0_fifo_data_valid;
output cam0_fifo_overflow;

    wire READ_RESET_P, \MEM_WADDR[0] , \MEM_WADDR[1] , \MEM_WADDR[2] , 
        \MEM_WADDR[3] , \MEM_WADDR[4] , \MEM_WADDR[5] , \MEM_WADDR[6] , 
        \MEM_WADDR[7] , \MEM_WADDR[8] , \MEM_WADDR[9] , 
        \MEM_WADDR[10] , \MEM_WADDR[11] , \MEM_WADDR[12] , 
        \WBINNXTSHIFT[0] , \WBINNXTSHIFT[1] , \WBINNXTSHIFT[2] , 
        \WBINNXTSHIFT[3] , \WBINNXTSHIFT[4] , \WBINNXTSHIFT[5] , 
        \WBINNXTSHIFT[6] , \WBINNXTSHIFT[7] , \WBINNXTSHIFT[8] , 
        \WBINNXTSHIFT[9] , \WBINNXTSHIFT[10] , \WBINNXTSHIFT[11] , 
        \WBINNXTSHIFT[12] , \RBINSYNCSHIFT[0] , \RBINSYNCSHIFT[2] , 
        \RBINSYNCSHIFT[3] , \RBINSYNCSHIFT[4] , \RBINSYNCSHIFT[5] , 
        \RBINSYNCSHIFT[6] , \RBINSYNCSHIFT[7] , \RBINSYNCSHIFT[8] , 
        \RBINSYNCSHIFT[9] , \RBINSYNCSHIFT[10] , \RBINSYNCSHIFT[11] , 
        \RBINSYNCSHIFT[12] , \RBINNXTSHIFT[0] , \RBINNXTSHIFT[1] , 
        \RBINNXTSHIFT[2] , \RBINNXTSHIFT[3] , \RBINNXTSHIFT[4] , 
        \RBINNXTSHIFT[5] , \RBINNXTSHIFT[6] , \RBINNXTSHIFT[7] , 
        \RBINNXTSHIFT[8] , \RBINNXTSHIFT[9] , \RBINNXTSHIFT[10] , 
        FULLINT, MEMORYWE, MEMWENEG, \WDIFF[0] , \WDIFF[1] , 
        \WDIFF[2] , \WDIFF[3] , \WDIFF[4] , \WDIFF[5] , \WDIFF[6] , 
        \WDIFF[7] , \WDIFF[8] , \WDIFF[9] , \WDIFF[10] , \WDIFF[11] , 
        \WDIFF[12] , \AFVALCONST[0] , \AFVALCONST[5] , \WGRY[0] , 
        \WGRY[1] , \WGRY[2] , \WGRY[3] , \WGRY[4] , \WGRY[5] , 
        \WGRY[6] , \WGRY[7] , \WGRY[8] , \WGRY[9] , \WGRY[10] , 
        \WGRY[11] , \WGRY[12] , EMPTYINT, MEMORYRE, MEMRENEG, DVLDI, 
        \RGRY[0] , \RGRY[1] , \RGRY[2] , \RGRY[3] , \RGRY[4] , 
        \RGRY[5] , \RGRY[6] , \RGRY[7] , \RGRY[8] , \RGRY[9] , 
        \RGRY[10] , \QXI[0] , \QXI[1] , \QXI[2] , \QXI[3] , \QXI[4] , 
        \QXI[5] , \QXI[6] , \QXI[7] , \QXI[8] , \QXI[9] , \QXI[10] , 
        \QXI[11] , \QXI[12] , \QXI[13] , \QXI[14] , \QXI[15] , 
        \QXI[16] , \QXI[17] , \QXI[18] , \QXI[19] , \QXI[20] , 
        \QXI[21] , \QXI[22] , \QXI[23] , \QXI[24] , \QXI[25] , 
        \QXI[26] , \QXI[27] , \QXI[28] , \QXI[29] , \QXI[30] , 
        \QXI[31] , MX2_3_Y, MX2_6_Y, MX2_1_Y, MX2_5_Y, MX2_4_Y, 
        MX2_7_Y, MX2_0_Y, MX2_2_Y, DFN1E1C0_1_Q, DFN1E1C0_0_Q, 
        BUFF_0_Y, INV_4_Y, BUFF_1_Y, INV_13_Y, OR2_1_Y, OR2_2_Y, 
        OR2_3_Y, OR2_4_Y, OR2A_1_Y, OR2A_4_Y, OR2A_11_Y, OR2A_0_Y, 
        RAM4K9_4_DOUTB0, RAM4K9_4_DOUTB1, RAM4K9_3_DOUTB0, 
        RAM4K9_3_DOUTB1, RAM4K9_4_DOUTB2, RAM4K9_4_DOUTB3, 
        RAM4K9_3_DOUTB2, RAM4K9_3_DOUTB3, RAM4K9_4_DOUTB4, 
        RAM4K9_4_DOUTB5, RAM4K9_3_DOUTB4, RAM4K9_3_DOUTB5, 
        RAM4K9_4_DOUTB6, RAM4K9_4_DOUTB7, RAM4K9_3_DOUTB6, 
        RAM4K9_3_DOUTB7, RAM4K9_4_DOUTA0, RAM4K9_4_DOUTA1, 
        RAM4K9_3_DOUTA0, RAM4K9_3_DOUTA1, RAM4K9_5_DOUTB0, 
        RAM4K9_5_DOUTB1, RAM4K9_0_DOUTB0, RAM4K9_0_DOUTB1, 
        RAM4K9_5_DOUTB2, RAM4K9_5_DOUTB3, RAM4K9_0_DOUTB2, 
        RAM4K9_0_DOUTB3, RAM4K9_5_DOUTB4, RAM4K9_5_DOUTB5, 
        RAM4K9_0_DOUTB4, RAM4K9_0_DOUTB5, RAM4K9_5_DOUTB6, 
        RAM4K9_5_DOUTB7, RAM4K9_0_DOUTB6, RAM4K9_0_DOUTB7, 
        RAM4K9_5_DOUTA0, RAM4K9_5_DOUTA1, RAM4K9_0_DOUTA0, 
        RAM4K9_0_DOUTA1, RAM4K9_1_DOUTB0, RAM4K9_1_DOUTB1, 
        RAM4K9_6_DOUTB0, RAM4K9_6_DOUTB1, RAM4K9_1_DOUTB2, 
        RAM4K9_1_DOUTB3, RAM4K9_6_DOUTB2, RAM4K9_6_DOUTB3, 
        RAM4K9_1_DOUTB4, RAM4K9_1_DOUTB5, RAM4K9_6_DOUTB4, 
        RAM4K9_6_DOUTB5, RAM4K9_1_DOUTB6, RAM4K9_1_DOUTB7, 
        RAM4K9_6_DOUTB6, RAM4K9_6_DOUTB7, RAM4K9_1_DOUTA0, 
        RAM4K9_1_DOUTA1, RAM4K9_6_DOUTA0, RAM4K9_6_DOUTA1, 
        RAM4K9_2_DOUTB0, RAM4K9_2_DOUTB1, RAM4K9_7_DOUTB0, 
        RAM4K9_7_DOUTB1, RAM4K9_2_DOUTB2, RAM4K9_2_DOUTB3, 
        RAM4K9_7_DOUTB2, RAM4K9_7_DOUTB3, RAM4K9_2_DOUTB4, 
        RAM4K9_2_DOUTB5, RAM4K9_7_DOUTB4, RAM4K9_7_DOUTB5, 
        RAM4K9_2_DOUTB6, RAM4K9_2_DOUTB7, RAM4K9_7_DOUTB6, 
        RAM4K9_7_DOUTB7, RAM4K9_2_DOUTA0, RAM4K9_2_DOUTA1, 
        RAM4K9_7_DOUTA0, RAM4K9_7_DOUTA1, NAND2_1_Y, AOI1_0_Y, OR2_0_Y, 
        AND3_0_Y, NAND3A_4_Y, AO1_28_Y, AND2_6_Y, AO1D_0_Y, AO1_20_Y, 
        AND3_7_Y, NAND3A_2_Y, NAND3A_5_Y, OR2A_2_Y, AO1C_0_Y, 
        NOR3A_2_Y, OR2A_10_Y, NAND3A_3_Y, OR2A_8_Y, AO1C_1_Y, 
        NOR3A_0_Y, OR2A_5_Y, NAND3A_0_Y, XNOR2_13_Y, XNOR2_7_Y, 
        XNOR2_0_Y, OR2A_9_Y, AO1C_5_Y, AO1C_2_Y, OR2A_7_Y, AO1C_7_Y, 
        NOR2A_1_Y, AO1C_4_Y, AO1C_3_Y, XNOR2_30_Y, XNOR2_29_Y, 
        XNOR2_11_Y, XNOR2_6_Y, AND3_5_Y, OR2A_3_Y, AO1C_6_Y, NOR3A_1_Y, 
        OR2A_6_Y, NAND3A_1_Y, XNOR2_16_Y, XNOR2_5_Y, XNOR2_20_Y, 
        AND2_64_Y, XOR2_38_Y, XOR2_31_Y, XOR2_19_Y, XOR2_70_Y, 
        XOR2_59_Y, XOR2_33_Y, XOR2_46_Y, XOR2_56_Y, XOR2_58_Y, 
        XOR2_17_Y, XOR2_49_Y, XOR2_2_Y, XOR2_67_Y, AND2_63_Y, 
        AND2_12_Y, AND2_7_Y, AND2_70_Y, AND2_13_Y, AND2_76_Y, 
        AND2_15_Y, AND2_82_Y, AND2_71_Y, AND2_2_Y, AND2_5_Y, AND2_30_Y, 
        XOR2_43_Y, XOR2_35_Y, XOR2_18_Y, XOR2_84_Y, XOR2_80_Y, 
        XOR2_76_Y, XOR2_0_Y, XOR2_61_Y, XOR2_21_Y, XOR2_51_Y, 
        XOR2_78_Y, XOR2_26_Y, XOR2_29_Y, AND2_80_Y, AO1_32_Y, 
        AND2_79_Y, AO1_8_Y, AND2_83_Y, AO1_9_Y, AND2_62_Y, AO1_27_Y, 
        AND2_9_Y, AO1_51_Y, AND2_14_Y, AND2_38_Y, AO1_35_Y, AND2_33_Y, 
        AO1_42_Y, AND2_61_Y, AND2_56_Y, AND2_27_Y, AND2_26_Y, 
        AND2_29_Y, AND2_8_Y, AND2_53_Y, AND2_60_Y, AND2_75_Y, 
        AND2_22_Y, AO1_33_Y, AND2_54_Y, AND2_36_Y, AO1_1_Y, AO1_38_Y, 
        AO1_37_Y, AO1_30_Y, AO1_15_Y, AO1_19_Y, AO1_10_Y, AO1_40_Y, 
        AO1_22_Y, AO1_43_Y, AO1_23_Y, XOR2_63_Y, XOR2_12_Y, XOR2_87_Y, 
        XOR2_93_Y, XOR2_48_Y, XOR2_77_Y, XOR2_28_Y, XOR2_1_Y, 
        XOR2_79_Y, XOR2_32_Y, XOR2_64_Y, XOR2_13_Y, AND2A_0_Y, 
        XOR2_14_Y, XOR2_24_Y, XOR2_52_Y, XOR2_55_Y, XOR2_82_Y, 
        XOR2_88_Y, XOR2_72_Y, XOR2_20_Y, XOR2_71_Y, XOR2_39_Y, 
        XOR2_85_Y, AND2_47_Y, AND2_18_Y, AND2_65_Y, AND2_4_Y, 
        AND2_16_Y, AND2_1_Y, AND2_43_Y, AND2_31_Y, AND2_45_Y, 
        AND2_35_Y, XOR2_74_Y, XOR2_5_Y, XOR2_8_Y, XOR2_3_Y, XOR2_9_Y, 
        XOR2_27_Y, XOR2_68_Y, XOR2_4_Y, XOR2_16_Y, XOR2_83_Y, 
        XOR2_65_Y, AND2_11_Y, AO1_46_Y, AND2_25_Y, AO1_13_Y, AND2_20_Y, 
        AO1_53_Y, AND2_78_Y, AO1_48_Y, AND2_23_Y, AND2_44_Y, AO1_11_Y, 
        AND2_69_Y, AND2_59_Y, AND2_84_Y, AND2_3_Y, AND2_81_Y, AND2_0_Y, 
        AND2_90_Y, AND2_51_Y, AO1_21_Y, AND2_92_Y, AND2_86_Y, AO1_24_Y, 
        AO1_50_Y, AO1_25_Y, AO1_7_Y, AO1_0_Y, AO1_26_Y, AO1_49_Y, 
        AO1_36_Y, AO1_29_Y, XOR2_90_Y, XOR2_44_Y, XOR2_42_Y, XOR2_66_Y, 
        XOR2_91_Y, XOR2_23_Y, XOR2_86_Y, XOR2_81_Y, XOR2_92_Y, 
        XOR2_7_Y, NAND2_0_Y, NOR2A_0_Y, INV_2_Y, INV_14_Y, INV_5_Y, 
        INV_1_Y, INV_0_Y, INV_9_Y, INV_10_Y, INV_3_Y, INV_8_Y, 
        INV_11_Y, INV_7_Y, INV_12_Y, INV_6_Y, AND2_67_Y, AND2_58_Y, 
        AND2_10_Y, AND2_93_Y, AND2_37_Y, AND2_88_Y, AND2_91_Y, 
        AND2_32_Y, AND2_17_Y, AND2_87_Y, AND2_40_Y, AND2_68_Y, 
        AND2_89_Y, AND2_72_Y, XOR2_10_Y, XOR2_11_Y, XOR2_6_Y, 
        XOR2_57_Y, XOR2_22_Y, XOR2_45_Y, XOR2_40_Y, XOR2_94_Y, 
        XOR2_15_Y, XOR2_89_Y, XOR2_41_Y, XOR2_36_Y, AND2_46_Y, AO1_6_Y, 
        AND2_85_Y, AO1_4_Y, AND2_48_Y, AO1_17_Y, AND2_73_Y, AO1_44_Y, 
        AND2_57_Y, AO1_31_Y, AND2_39_Y, AND2_55_Y, AO1_2_Y, AND2_28_Y, 
        AO1_39_Y, AND2_74_Y, AND2_49_Y, AO1_41_Y, AND2_41_Y, AND2_77_Y, 
        AND2_42_Y, AND2_66_Y, AND2_52_Y, AND2_34_Y, AND2_50_Y, 
        AND2_21_Y, OR3_0_Y, AO1_18_Y, AO1_5_Y, AO1_47_Y, AO1_3_Y, 
        AO1_34_Y, AO1_14_Y, AO1_16_Y, AO1_52_Y, AO1_45_Y, AO1_12_Y, 
        XOR2_25_Y, XOR2_30_Y, XOR2_69_Y, XOR2_47_Y, XOR2_53_Y, 
        XOR2_34_Y, XOR2_37_Y, XOR2_73_Y, XOR2_60_Y, XOR2_75_Y, 
        XOR2_54_Y, XOR2_62_Y, AND2_24_Y, XOR2_50_Y, XNOR2_2_Y, 
        XNOR2_22_Y, XNOR2_26_Y, XNOR2_24_Y, XNOR2_1_Y, XNOR2_8_Y, 
        XNOR2_19_Y, XNOR2_10_Y, XNOR2_3_Y, XNOR2_4_Y, AND3_4_Y, 
        AND3_1_Y, AND3_3_Y, AND3_2_Y, AND2_19_Y, XNOR2_27_Y, 
        XNOR2_15_Y, XNOR2_9_Y, XNOR2_17_Y, XNOR2_18_Y, XNOR2_28_Y, 
        XNOR2_14_Y, XNOR2_23_Y, XNOR2_25_Y, XNOR2_21_Y, XNOR2_12_Y, 
        AND3_8_Y, AND3_9_Y, AND3_10_Y, AND3_6_Y, VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign \AFVALCONST[0]  = GND_power_net1;
    assign GND = GND_power_net1;
    assign \RBINSYNCSHIFT[0]  = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign \AFVALCONST[5]  = VCC_power_net1;
    
    INV INV_0 (.A(\RBINSYNCSHIFT[5] ), .Y(INV_0_Y));
    AO1 AO1_52 (.A(XOR2_15_Y), .B(AO1_16_Y), .C(AND2_40_Y), .Y(
        AO1_52_Y));
    MX2 \MX2_QXI[13]  (.A(RAM4K9_1_DOUTB3), .B(RAM4K9_6_DOUTB3), .S(
        DFN1E1C0_0_Q), .Y(\QXI[13] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[27]  (.D(\QXI[27] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[27]));
    MX2 \MX2_QXI[14]  (.A(RAM4K9_2_DOUTB2), .B(RAM4K9_7_DOUTB2), .S(
        DFN1E1C0_0_Q), .Y(\QXI[14] ));
    AND2 AND2_2 (.A(\MEM_WADDR[10] ), .B(GND), .Y(AND2_2_Y));
    AND3 AND3_6 (.A(XNOR2_18_Y), .B(XNOR2_28_Y), .C(XNOR2_14_Y), .Y(
        AND3_6_Y));
    AND2 AND2_20 (.A(XOR2_9_Y), .B(XOR2_27_Y), .Y(AND2_20_Y));
    XOR2 XOR2_82 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_82_Y));
    XNOR2 XNOR2_13 (.A(\WDIFF[3] ), .B(\AFVALCONST[0] ), .Y(XNOR2_13_Y)
        );
    AO1 AO1_11 (.A(AND2_78_Y), .B(AO1_13_Y), .C(AO1_53_Y), .Y(AO1_11_Y)
        );
    AND2 AND2_11 (.A(XOR2_74_Y), .B(XOR2_5_Y), .Y(AND2_11_Y));
    MX2 \MX2_QXI[22]  (.A(RAM4K9_2_DOUTB4), .B(RAM4K9_7_DOUTB4), .S(
        DFN1E1C0_0_Q), .Y(\QXI[22] ));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_12_Y), .B(AO1_1_Y), .Y(
        \WBINNXTSHIFT[2] ));
    AND2 AND2_22 (.A(AND2_29_Y), .B(XOR2_78_Y), .Y(AND2_22_Y));
    DFN1C0 \DFN1C0_RGRY[9]  (.D(XOR2_39_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[9] ));
    XNOR2 XNOR2_9 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_9_Y));
    AND2 AND2_71 (.A(\MEM_WADDR[9] ), .B(GND), .Y(AND2_71_Y));
    AO1C AO1C_3 (.A(\WDIFF[9] ), .B(\AFVALCONST[5] ), .C(AO1C_4_Y), .Y(
        AO1C_3_Y));
    RAM4K9 RAM4K9_7 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[7]), 
        .DINA0(cam0_fifo_write_data[6]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_3_Y), .BLKB(OR2_4_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_7_DOUTA1), 
        .DOUTA0(RAM4K9_7_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_7_DOUTB7), 
        .DOUTB6(RAM4K9_7_DOUTB6), .DOUTB5(RAM4K9_7_DOUTB5), .DOUTB4(
        RAM4K9_7_DOUTB4), .DOUTB3(RAM4K9_7_DOUTB3), .DOUTB2(
        RAM4K9_7_DOUTB2), .DOUTB1(RAM4K9_7_DOUTB1), .DOUTB0(
        RAM4K9_7_DOUTB0));
    OR2A OR2A_7 (.A(\WDIFF[7] ), .B(\AFVALCONST[5] ), .Y(OR2A_7_Y));
    XOR2 XOR2_19 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_19_Y));
    AND2 AND2_44 (.A(AND2_11_Y), .B(AND2_25_Y), .Y(AND2_44_Y));
    MX2 \MX2_QXI[10]  (.A(RAM4K9_5_DOUTB2), .B(RAM4K9_0_DOUTB2), .S(
        DFN1E1C0_0_Q), .Y(\QXI[10] ));
    AO1 AO1_31 (.A(XOR2_36_Y), .B(AND2_89_Y), .C(AND2_72_Y), .Y(
        AO1_31_Y));
    XOR2 XOR2_1 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_1_Y));
    XOR2 XOR2_23 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(XOR2_23_Y));
    MX2 \MX2_QXI[8]  (.A(RAM4K9_4_DOUTB2), .B(RAM4K9_3_DOUTB2), .S(
        DFN1E1C0_0_Q), .Y(\QXI[8] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[29]  (.D(\QXI[29] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[29]));
    OR2 OR2_2 (.A(BUFF_1_Y), .B(MEMRENEG), .Y(OR2_2_Y));
    INV INV_1 (.A(\RBINSYNCSHIFT[4] ), .Y(INV_1_Y));
    XOR2 XOR2_47 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(XOR2_47_Y));
    XOR2 XOR2_38 (.A(\WBINNXTSHIFT[0] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XOR2_38_Y));
    DFN1C0 DFN1C0_cam0_fifo_overflow (.D(AND2_64_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_overflow));
    MX2 \MX2_QXI[6]  (.A(RAM4K9_2_DOUTB0), .B(RAM4K9_7_DOUTB0), .S(
        DFN1E1C0_0_Q), .Y(\QXI[6] ));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE), 
        .Y(\RBINNXTSHIFT[0] ));
    AO1 AO1_7 (.A(XOR2_9_Y), .B(AO1_25_Y), .C(AND2_4_Y), .Y(AO1_7_Y));
    AO1C AO1C_1 (.A(\AFVALCONST[0] ), .B(\WDIFF[4] ), .C(
        \AFVALCONST[0] ), .Y(AO1C_1_Y));
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_46_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[6] ));
    AND2 AND2_18 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(AND2_18_Y));
    AND2 AND2_15 (.A(\MEM_WADDR[7] ), .B(GND), .Y(AND2_15_Y));
    AND2 AND2_84 (.A(AND2_44_Y), .B(AND2_20_Y), .Y(AND2_84_Y));
    AO1 AO1_25 (.A(AND2_25_Y), .B(AO1_24_Y), .C(AO1_46_Y), .Y(AO1_25_Y)
        );
    INV INV_7 (.A(\RBINSYNCSHIFT[11] ), .Y(INV_7_Y));
    AND2 AND2_78 (.A(XOR2_68_Y), .B(XOR2_4_Y), .Y(AND2_78_Y));
    AND2 AND2_75 (.A(AND2_56_Y), .B(XOR2_21_Y), .Y(AND2_75_Y));
    AO1C AO1C_7 (.A(\AFVALCONST[5] ), .B(\WDIFF[8] ), .C(OR2A_7_Y), .Y(
        AO1C_7_Y));
    XOR2 XOR2_45 (.A(\WBINNXTSHIFT[6] ), .B(INV_9_Y), .Y(XOR2_45_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[25]  (.D(\QXI[25] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[25]));
    XOR2 \XOR2_RBINNXTSHIFT[9]  (.A(XOR2_92_Y), .B(AO1_36_Y), .Y(
        \RBINNXTSHIFT[9] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[11]  (.D(\QXI[11] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[11]));
    AND2 AND2_1 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(AND2_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[0] ));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[3] ));
    XNOR2 XNOR2_21 (.A(\RBINNXTSHIFT[8] ), .B(\MEM_WADDR[10] ), .Y(
        XNOR2_21_Y));
    AND2 AND2_49 (.A(AND2_55_Y), .B(AND2_28_Y), .Y(AND2_49_Y));
    AO1 AO1_8 (.A(XOR2_76_Y), .B(AND2_70_Y), .C(AND2_13_Y), .Y(AO1_8_Y)
        );
    AND2 AND2_10 (.A(INV_2_Y), .B(INV_6_Y), .Y(AND2_10_Y));
    RAM4K9 RAM4K9_0 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[3]), 
        .DINA0(cam0_fifo_write_data[2]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_3_Y), .BLKB(OR2_4_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_0_DOUTA1), 
        .DOUTA0(RAM4K9_0_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_0_DOUTB7), 
        .DOUTB6(RAM4K9_0_DOUTB6), .DOUTB5(RAM4K9_0_DOUTB5), .DOUTB4(
        RAM4K9_0_DOUTB4), .DOUTB3(RAM4K9_0_DOUTB3), .DOUTB2(
        RAM4K9_0_DOUTB2), .DOUTB1(RAM4K9_0_DOUTB1), .DOUTB0(
        RAM4K9_0_DOUTB0));
    XOR2 XOR2_92 (.A(\RBINSYNCSHIFT[11] ), .B(GND), .Y(XOR2_92_Y));
    AND2 AND2_7 (.A(\MEM_WADDR[3] ), .B(GND), .Y(AND2_7_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[16]  (.D(\QXI[16] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[16]));
    XOR2 XOR2_20 (.A(\RBINNXTSHIFT[7] ), .B(\RBINNXTSHIFT[8] ), .Y(
        XOR2_20_Y));
    XOR2 XOR2_63 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_63_Y));
    XOR2 XOR2_87 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_87_Y));
    AND2 AND2_70 (.A(\MEM_WADDR[4] ), .B(GND), .Y(AND2_70_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[31]  (.D(\QXI[31] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[31]));
    MX2 \MX2_QXI[15]  (.A(RAM4K9_2_DOUTB3), .B(RAM4K9_7_DOUTB3), .S(
        DFN1E1C0_0_Q), .Y(\QXI[15] ));
    AND2 AND2_12 (.A(\MEM_WADDR[2] ), .B(GND), .Y(AND2_12_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_33_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[5] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[22]  (.D(\QXI[22] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[22]));
    AO1 AO1_42 (.A(AND2_14_Y), .B(AO1_27_Y), .C(AO1_51_Y), .Y(AO1_42_Y)
        );
    XOR2 XOR2_52 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_52_Y));
    AO1C AO1C_4 (.A(\AFVALCONST[5] ), .B(\WDIFF[9] ), .C(NOR2A_1_Y), 
        .Y(AO1C_4_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    AO1 AO1_50 (.A(XOR2_8_Y), .B(AO1_24_Y), .C(AND2_18_Y), .Y(AO1_50_Y)
        );
    AND2 AND2_72 (.A(\WBINNXTSHIFT[12] ), .B(INV_12_Y), .Y(AND2_72_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[4] ));
    AND2 AND2_61 (.A(AND2_9_Y), .B(AND2_14_Y), .Y(AND2_61_Y));
    MX2 MX2_5 (.A(RAM4K9_5_DOUTA1), .B(RAM4K9_0_DOUTA1), .S(
        DFN1E1C0_1_Q), .Y(MX2_5_Y));
    AO1 AO1_15 (.A(AND2_83_Y), .B(AO1_37_Y), .C(AO1_8_Y), .Y(AO1_15_Y));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_56_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[7] ));
    DFN1C0 \DFN1C0_MEM_WADDR[12]  (.D(\WBINNXTSHIFT[12] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[12] ));
    AND2 AND2_EMPTYINT (.A(AND2_19_Y), .B(XNOR2_27_Y), .Y(EMPTYINT));
    XOR2 XOR2_85 (.A(\RBINNXTSHIFT[10] ), .B(GND), .Y(XOR2_85_Y));
    AND2 AND2_89 (.A(\WBINNXTSHIFT[11] ), .B(INV_7_Y), .Y(AND2_89_Y));
    XOR2 XOR2_24 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_24_Y));
    AND2 AND2_57 (.A(XOR2_15_Y), .B(XOR2_89_Y), .Y(AND2_57_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[24]  (.D(\QXI[24] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[24]));
    MX2 \MX2_QXI[0]  (.A(RAM4K9_4_DOUTB0), .B(RAM4K9_3_DOUTB0), .S(
        DFN1E1C0_0_Q), .Y(\QXI[0] ));
    XOR2 XOR2_21 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_21_Y));
    NOR3A NOR3A_2 (.A(OR2A_2_Y), .B(AO1C_0_Y), .C(\WDIFF[0] ), .Y(
        NOR3A_2_Y));
    MX2 \MX2_QXI[5]  (.A(RAM4K9_1_DOUTB1), .B(RAM4K9_6_DOUTB1), .S(
        DFN1E1C0_0_Q), .Y(\QXI[5] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[9]  (.D(\QXI[9] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[9]));
    AO1 AO1_35 (.A(AND2_62_Y), .B(AO1_8_Y), .C(AO1_9_Y), .Y(AO1_35_Y));
    XOR2 \XOR2_WBINNXTSHIFT[9]  (.A(XOR2_79_Y), .B(AO1_40_Y), .Y(
        \WBINNXTSHIFT[9] ));
    MX2 \MX2_QXI[16]  (.A(RAM4K9_4_DOUTB4), .B(RAM4K9_3_DOUTB4), .S(
        DFN1E1C0_0_Q), .Y(\QXI[16] ));
    XOR2 \XOR2_WDIFF[5]  (.A(XOR2_53_Y), .B(AO1_47_Y), .Y(\WDIFF[5] ));
    MX2 \MX2_QXI[23]  (.A(RAM4K9_2_DOUTB5), .B(RAM4K9_7_DOUTB5), .S(
        DFN1E1C0_0_Q), .Y(\QXI[23] ));
    MX2 \MX2_QXI[24]  (.A(RAM4K9_4_DOUTB6), .B(RAM4K9_3_DOUTB6), .S(
        DFN1E1C0_0_Q), .Y(\QXI[24] ));
    INV INV_11 (.A(\RBINSYNCSHIFT[10] ), .Y(INV_11_Y));
    AND2 AND2_46 (.A(XOR2_10_Y), .B(XOR2_11_Y), .Y(AND2_46_Y));
    AO1 AO1_53 (.A(XOR2_4_Y), .B(AND2_1_Y), .C(AND2_43_Y), .Y(AO1_53_Y)
        );
    XNOR2 XNOR2_28 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[6] ), .Y(
        XNOR2_28_Y));
    XOR2 \XOR2_RBINNXTSHIFT[8]  (.A(XOR2_81_Y), .B(AO1_49_Y), .Y(
        \RBINNXTSHIFT[8] ));
    XOR2 XOR2_16 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(XOR2_16_Y));
    OR2 OR2_4 (.A(INV_13_Y), .B(MEMRENEG), .Y(OR2_4_Y));
    XOR2 XOR2_60 (.A(\WBINNXTSHIFT[9] ), .B(INV_8_Y), .Y(XOR2_60_Y));
    MX2 \MX2_QXI[18]  (.A(RAM4K9_5_DOUTB4), .B(RAM4K9_0_DOUTB4), .S(
        DFN1E1C0_0_Q), .Y(\QXI[18] ));
    AND2 AND2_68 (.A(\WBINNXTSHIFT[10] ), .B(INV_11_Y), .Y(AND2_68_Y));
    AND2 AND2_65 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(AND2_65_Y));
    AND2 AND2_43 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(AND2_43_Y));
    AO1 AO1_24 (.A(XOR2_5_Y), .B(AND2_86_Y), .C(AND2_47_Y), .Y(
        AO1_24_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[2]  (.D(\RBINNXTSHIFT[0] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[2] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[2]  (.D(\QXI[2] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[2]));
    DFN1P0 DFN1P0_cam0_fifo_empty (.D(EMPTYINT), .CLK(clk), .PRE(
        READ_RESET_P), .Q(cam0_fifo_empty));
    AND3 AND3_3 (.A(XNOR2_19_Y), .B(XNOR2_10_Y), .C(XNOR2_3_Y), .Y(
        AND3_3_Y));
    MX2 \MX2_QXI[20]  (.A(RAM4K9_1_DOUTB4), .B(RAM4K9_6_DOUTB4), .S(
        DFN1E1C0_0_Q), .Y(\QXI[20] ));
    INV INV_5 (.A(\RBINSYNCSHIFT[3] ), .Y(INV_5_Y));
    OR2 OR2_0 (.A(AOI1_0_Y), .B(cam0_fifo_full), .Y(OR2_0_Y));
    AND2 AND2_86 (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE), .Y(AND2_86_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_6 (.A(AND3_5_Y), .B(XNOR2_6_Y), .Y(AND2_6_Y));
    XOR2 XOR2_64 (.A(\MEM_WADDR[11] ), .B(GND), .Y(XOR2_64_Y));
    AND3 AND3_0 (.A(XNOR2_16_Y), .B(XNOR2_5_Y), .C(XNOR2_20_Y), .Y(
        AND3_0_Y));
    AND2 AND2_60 (.A(AND2_26_Y), .B(XOR2_0_Y), .Y(AND2_60_Y));
    XOR2 XOR2_61 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_61_Y));
    OR2A OR2A_4 (.A(MEMRENEG), .B(BUFF_1_Y), .Y(OR2A_4_Y));
    AND2 AND2_83 (.A(XOR2_80_Y), .B(XOR2_76_Y), .Y(AND2_83_Y));
    XOR2 XOR2_57 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(XOR2_57_Y));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_52_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[2] ));
    AND2 AND2_62 (.A(XOR2_0_Y), .B(XOR2_61_Y), .Y(AND2_62_Y));
    XOR2 XOR2_33 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_33_Y));
    INV INV_3 (.A(\RBINSYNCSHIFT[8] ), .Y(INV_3_Y));
    RAM4K9 RAM4K9_2 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[7]), 
        .DINA0(cam0_fifo_write_data[6]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_1_Y), .BLKB(OR2_2_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_2_DOUTA1), 
        .DOUTA0(RAM4K9_2_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_2_DOUTB7), 
        .DOUTB6(RAM4K9_2_DOUTB6), .DOUTB5(RAM4K9_2_DOUTB5), .DOUTB4(
        RAM4K9_2_DOUTB4), .DOUTB3(RAM4K9_2_DOUTB3), .DOUTB2(
        RAM4K9_2_DOUTB2), .DOUTB1(RAM4K9_2_DOUTB1), .DOUTB0(
        RAM4K9_2_DOUTB0));
    XNOR2 XNOR2_2 (.A(\RBINSYNCSHIFT[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_2_Y));
    XNOR2 XNOR2_19 (.A(\RBINSYNCSHIFT[8] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XNOR2_19_Y));
    XOR2 XOR2_49 (.A(\WBINNXTSHIFT[10] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XOR2_49_Y));
    XOR2 \XOR2_WBINNXTSHIFT[8]  (.A(XOR2_1_Y), .B(AO1_10_Y), .Y(
        \WBINNXTSHIFT[8] ));
    AO1 AO1_14 (.A(XOR2_40_Y), .B(AO1_34_Y), .C(AND2_17_Y), .Y(
        AO1_14_Y));
    XOR2 \XOR2_WDIFF[12]  (.A(XOR2_62_Y), .B(AO1_12_Y), .Y(\WDIFF[12] )
        );
    XOR2 XOR2_4 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(XOR2_4_Y));
    XOR2 \XOR2_WDIFF[0]  (.A(\WBINNXTSHIFT[0] ), .B(\RBINSYNCSHIFT[0] )
        , .Y(\WDIFF[0] ));
    AND3 AND3_1 (.A(AND3_3_Y), .B(AND3_4_Y), .C(AND3_2_Y), .Y(AND3_1_Y)
        );
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[20]  (.D(\QXI[20] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[20]));
    AND3 AND3_10 (.A(XNOR2_23_Y), .B(XNOR2_25_Y), .C(XNOR2_21_Y), .Y(
        AND3_10_Y));
    XOR2 XOR2_55 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_55_Y));
    AND2 AND2_24 (.A(AND3_1_Y), .B(XNOR2_4_Y), .Y(AND2_24_Y));
    XOR2 XOR2_72 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_72_Y));
    AO1 AO1_40 (.A(XOR2_21_Y), .B(AO1_10_Y), .C(AND2_82_Y), .Y(
        AO1_40_Y));
    AO1C AO1C_5 (.A(\WDIFF[6] ), .B(\AFVALCONST[0] ), .C(OR2A_9_Y), .Y(
        AO1C_5_Y));
    RAM4K9 RAM4K9_3 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[1]), 
        .DINA0(cam0_fifo_write_data[0]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_3_Y), .BLKB(OR2_4_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_3_DOUTA1), 
        .DOUTA0(RAM4K9_3_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_3_DOUTB7), 
        .DOUTB6(RAM4K9_3_DOUTB6), .DOUTB5(RAM4K9_3_DOUTB5), .DOUTB4(
        RAM4K9_3_DOUTB4), .DOUTB3(RAM4K9_3_DOUTB3), .DOUTB2(
        RAM4K9_3_DOUTB2), .DOUTB1(RAM4K9_3_DOUTB1), .DOUTB0(
        RAM4K9_3_DOUTB0));
    XNOR2 XNOR2_0 (.A(\WDIFF[5] ), .B(\AFVALCONST[5] ), .Y(XNOR2_0_Y));
    AND2 AND2_31 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(AND2_31_Y));
    OR2A OR2A_3 (.A(\WDIFF[12] ), .B(\AFVALCONST[0] ), .Y(OR2A_3_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[10]  (.D(\WBINNXTSHIFT[10] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[10] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[13]  (.D(\QXI[13] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[13]));
    AO1 AO1_34 (.A(AND2_48_Y), .B(AO1_47_Y), .C(AO1_4_Y), .Y(AO1_34_Y));
    XOR2 XOR2_18 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_18_Y));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_66_Y), .B(AO1_25_Y), .Y(
        \RBINNXTSHIFT[4] ));
    XNOR2 XNOR2_25 (.A(\RBINNXTSHIFT[7] ), .B(\MEM_WADDR[9] ), .Y(
        XNOR2_25_Y));
    MX2 \MX2_QXI[25]  (.A(RAM4K9_4_DOUTB7), .B(RAM4K9_3_DOUTB7), .S(
        DFN1E1C0_0_Q), .Y(\QXI[25] ));
    OR2A OR2A_6 (.A(\AFVALCONST[0] ), .B(\WDIFF[12] ), .Y(OR2A_6_Y));
    XOR2 XOR2_89 (.A(\WBINNXTSHIFT[10] ), .B(INV_11_Y), .Y(XOR2_89_Y));
    AO1 AO1_46 (.A(XOR2_3_Y), .B(AND2_18_Y), .C(AND2_65_Y), .Y(
        AO1_46_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[8]  (.D(\WBINNXTSHIFT[8] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[8] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_24_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[1] ));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_70_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[3] ));
    XOR2 XOR2_8 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(XOR2_8_Y));
    NAND3A NAND3A_0 (.A(\WDIFF[4] ), .B(\AFVALCONST[0] ), .C(OR2A_8_Y), 
        .Y(NAND3A_0_Y));
    AO1 AO1_43 (.A(XOR2_78_Y), .B(AO1_22_Y), .C(AND2_2_Y), .Y(AO1_43_Y)
        );
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_23_Y), .B(AO1_0_Y), .Y(
        \RBINNXTSHIFT[6] ));
    XOR2 XOR2_30 (.A(\WBINNXTSHIFT[2] ), .B(INV_14_Y), .Y(XOR2_30_Y));
    OR2A OR2A_2 (.A(\WDIFF[2] ), .B(\AFVALCONST[0] ), .Y(OR2A_2_Y));
    AND2 AND2_38 (.A(AND2_80_Y), .B(AND2_79_Y), .Y(AND2_38_Y));
    AND2 AND2_35 (.A(\RBINSYNCSHIFT[12] ), .B(GND), .Y(AND2_35_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[7] ));
    DFN1C0 \DFN1C0_WGRY[11]  (.D(XOR2_2_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[11] ));
    RAM4K9 RAM4K9_4 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[1]), 
        .DINA0(cam0_fifo_write_data[0]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_1_Y), .BLKB(OR2_2_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_4_DOUTA1), 
        .DOUTA0(RAM4K9_4_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_4_DOUTB7), 
        .DOUTB6(RAM4K9_4_DOUTB6), .DOUTB5(RAM4K9_4_DOUTB5), .DOUTB4(
        RAM4K9_4_DOUTB4), .DOUTB3(RAM4K9_4_DOUTB3), .DOUTB2(
        RAM4K9_4_DOUTB2), .DOUTB1(RAM4K9_4_DOUTB1), .DOUTB0(
        RAM4K9_4_DOUTB0));
    AND2 AND2_29 (.A(AND2_56_Y), .B(AND2_9_Y), .Y(AND2_29_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[3]  (.D(\RBINNXTSHIFT[1] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[3] ));
    MX2 \MX2_QXI[26]  (.A(RAM4K9_5_DOUTB6), .B(RAM4K9_0_DOUTB6), .S(
        DFN1E1C0_0_Q), .Y(\QXI[26] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[18]  (.D(\QXI[18] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[18]));
    XOR2 \XOR2_WBINNXTSHIFT[12]  (.A(XOR2_13_Y), .B(AO1_23_Y), .Y(
        \WBINNXTSHIFT[12] ));
    XOR2 XOR2_34 (.A(\WBINNXTSHIFT[6] ), .B(INV_9_Y), .Y(XOR2_34_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[6]  (.D(\RBINNXTSHIFT[4] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[6] ));
    XOR2 XOR2_31 (.A(\WBINNXTSHIFT[1] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XOR2_31_Y));
    AND2 AND2_3 (.A(AND2_59_Y), .B(AND2_23_Y), .Y(AND2_3_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[11]  (.D(\WBINNXTSHIFT[11] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[11] ));
    AO1 AO1_49 (.A(AND2_69_Y), .B(AO1_25_Y), .C(AO1_11_Y), .Y(AO1_49_Y)
        );
    AND2 AND2_30 (.A(\MEM_WADDR[12] ), .B(GND), .Y(AND2_30_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_93_Y), .B(AO1_37_Y), .Y(
        \WBINNXTSHIFT[4] ));
    MX2 \MX2_QXI[28]  (.A(RAM4K9_1_DOUTB6), .B(RAM4K9_6_DOUTB6), .S(
        DFN1E1C0_0_Q), .Y(\QXI[28] ));
    INV RESETBUBBLE (.A(reset), .Y(READ_RESET_P));
    XNOR2 XNOR2_6 (.A(\WDIFF[9] ), .B(\AFVALCONST[5] ), .Y(XNOR2_6_Y));
    AND2 AND2_14 (.A(XOR2_78_Y), .B(XOR2_26_Y), .Y(AND2_14_Y));
    MX2 \MX2_QXI[30]  (.A(RAM4K9_2_DOUTB6), .B(RAM4K9_7_DOUTB6), .S(
        DFN1E1C0_0_Q), .Y(\QXI[30] ));
    XOR2 \XOR2_WDIFF[11]  (.A(XOR2_54_Y), .B(AO1_45_Y), .Y(\WDIFF[11] )
        );
    INV INV_4 (.A(\MEM_WADDR[11] ), .Y(INV_4_Y));
    AND2 AND2_74 (.A(AND2_57_Y), .B(AND2_39_Y), .Y(AND2_74_Y));
    XOR2 XOR2_77 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_77_Y));
    AND2 AND2_32 (.A(\WBINNXTSHIFT[6] ), .B(INV_9_Y), .Y(AND2_32_Y));
    OR2A OR2A_1 (.A(MEMWENEG), .B(BUFF_0_Y), .Y(OR2A_1_Y));
    XOR2 \XOR2_WBINNXTSHIFT[6]  (.A(XOR2_77_Y), .B(AO1_15_Y), .Y(
        \WBINNXTSHIFT[6] ));
    AND3 AND3_8 (.A(XNOR2_15_Y), .B(XNOR2_9_Y), .C(XNOR2_17_Y), .Y(
        AND3_8_Y));
    OR2A OR2A_8 (.A(\WDIFF[5] ), .B(\AFVALCONST[5] ), .Y(OR2A_8_Y));
    NAND3A NAND3A_2 (.A(NOR3A_0_Y), .B(OR2A_5_Y), .C(NAND3A_0_Y), .Y(
        NAND3A_2_Y));
    XOR2 XOR2_46 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_46_Y));
    DFN1E1C0 DFN1E1C0_0 (.D(\RBINSYNCSHIFT[11] ), .CLK(clk), .CLR(
        READ_RESET_P), .E(OR2A_4_Y), .Q(DFN1E1C0_0_Q));
    XNOR2 XNOR2_11 (.A(\WDIFF[8] ), .B(\AFVALCONST[5] ), .Y(XNOR2_11_Y)
        );
    AO1 AO1_2 (.A(AND2_73_Y), .B(AO1_4_Y), .C(AO1_17_Y), .Y(AO1_2_Y));
    DFN1C0 \DFN1C0_WGRY[0]  (.D(XOR2_38_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[0] ));
    XOR2 XOR2_75 (.A(\WBINNXTSHIFT[10] ), .B(INV_11_Y), .Y(XOR2_75_Y));
    AND2 AND2_26 (.A(AND2_38_Y), .B(AND2_83_Y), .Y(AND2_26_Y));
    XOR2 XOR2_9 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(XOR2_9_Y));
    AND3 AND3_5 (.A(XNOR2_30_Y), .B(XNOR2_29_Y), .C(XNOR2_11_Y), .Y(
        AND3_5_Y));
    XOR2 \XOR2_WDIFF[2]  (.A(XOR2_30_Y), .B(OR3_0_Y), .Y(\WDIFF[2] ));
    INV INV_12 (.A(\RBINSYNCSHIFT[12] ), .Y(INV_12_Y));
    XOR2 XOR2_59 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_59_Y));
    AND2 AND2_23 (.A(XOR2_16_Y), .B(XOR2_83_Y), .Y(AND2_23_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[9]  (.D(\WBINNXTSHIFT[9] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[9] ));
    XNOR2 XNOR2_4 (.A(\RBINSYNCSHIFT[11] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XNOR2_4_Y));
    DFN1C0 \DFN1C0_RGRY[8]  (.D(XOR2_71_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[8] ));
    XOR2 XOR2_5 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(XOR2_5_Y));
    XNOR2 XNOR2_20 (.A(\AFVALCONST[0] ), .B(\WDIFF[12] ), .Y(
        XNOR2_20_Y));
    MX2 MX2_0 (.A(RAM4K9_2_DOUTA0), .B(RAM4K9_7_DOUTA0), .S(
        DFN1E1C0_1_Q), .Y(MX2_0_Y));
    DFN1C0 DFN1C0_cam0_fifo_data_valid (.D(DVLDI), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_data_valid));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[7]  (.D(\QXI[7] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[7]));
    AO1 AO1_28 (.A(AND2_6_Y), .B(AO1_20_Y), .C(AO1D_0_Y), .Y(AO1_28_Y));
    AND2 AND2_19 (.A(AND3_9_Y), .B(XNOR2_12_Y), .Y(AND2_19_Y));
    MX2 \MX2_QXI[19]  (.A(RAM4K9_5_DOUTB5), .B(RAM4K9_0_DOUTB5), .S(
        DFN1E1C0_0_Q), .Y(\QXI[19] ));
    MX2 \MX2_QXI[1]  (.A(RAM4K9_4_DOUTB1), .B(RAM4K9_3_DOUTB1), .S(
        DFN1E1C0_0_Q), .Y(\QXI[1] ));
    MX2 \MX2_QXI[3]  (.A(RAM4K9_5_DOUTB1), .B(RAM4K9_0_DOUTB1), .S(
        DFN1E1C0_0_Q), .Y(\QXI[3] ));
    AND2 AND2_79 (.A(XOR2_18_Y), .B(XOR2_84_Y), .Y(AND2_79_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[12]  (.D(\RBINNXTSHIFT[10] ), .CLK(
        clk), .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[12] ));
    XOR2 XOR2_86 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(XOR2_86_Y));
    XOR2 XOR2_22 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(XOR2_22_Y));
    AO1 AO1_1 (.A(XOR2_35_Y), .B(AND2_36_Y), .C(AND2_63_Y), .Y(AO1_1_Y)
        );
    XOR2 XOR2_13 (.A(\MEM_WADDR[12] ), .B(GND), .Y(XOR2_13_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[6]  (.D(\QXI[6] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[6]));
    INV INV_6 (.A(NOR2A_0_Y), .Y(INV_6_Y));
    XNOR2 XNOR2_18 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[5] ), .Y(
        XNOR2_18_Y));
    AND2 AND2_51 (.A(AND2_59_Y), .B(XOR2_16_Y), .Y(AND2_51_Y));
    AO1 AO1_3 (.A(XOR2_22_Y), .B(AO1_47_Y), .C(AND2_91_Y), .Y(AO1_3_Y));
    AND2 AND2_64 (.A(cam0_fifo_write_enable), .B(cam0_fifo_full), .Y(
        AND2_64_Y));
    AND2 AND2_47 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(AND2_47_Y));
    AO1 AO1_51 (.A(XOR2_26_Y), .B(AND2_2_Y), .C(AND2_5_Y), .Y(AO1_51_Y)
        );
    AO1 AO1_18 (.A(XOR2_11_Y), .B(OR3_0_Y), .C(AND2_93_Y), .Y(AO1_18_Y)
        );
    XOR2 XOR2_48 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_48_Y));
    AO1 AO1_47 (.A(AND2_85_Y), .B(AO1_18_Y), .C(AO1_6_Y), .Y(AO1_47_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_42_Y), .B(AO1_50_Y), .Y(
        \RBINNXTSHIFT[3] ));
    AO1C AO1C_0 (.A(\AFVALCONST[0] ), .B(\WDIFF[1] ), .C(
        \AFVALCONST[0] ), .Y(AO1C_0_Y));
    AND2 AND2_16 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(AND2_16_Y));
    XOR2 \XOR2_WDIFF[3]  (.A(XOR2_69_Y), .B(AO1_18_Y), .Y(\WDIFF[3] ));
    AND2 AND2_76 (.A(\MEM_WADDR[6] ), .B(GND), .Y(AND2_76_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[5]  (.D(\QXI[5] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[5]));
    AO1 AO1_38 (.A(XOR2_18_Y), .B(AO1_1_Y), .C(AND2_12_Y), .Y(AO1_38_Y)
        );
    DFN1C0 \DFN1C0_WGRY[9]  (.D(XOR2_17_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[9] ));
    OR2A OR2A_5 (.A(\AFVALCONST[5] ), .B(\WDIFF[5] ), .Y(OR2A_5_Y));
    XOR2 XOR2_62 (.A(\WBINNXTSHIFT[12] ), .B(INV_12_Y), .Y(XOR2_62_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[11]  (.D(\RBINNXTSHIFT[9] ), .CLK(clk)
        , .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[11] ));
    AND2 AND2_13 (.A(\MEM_WADDR[5] ), .B(GND), .Y(AND2_13_Y));
    AND2 AND2_87 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(AND2_87_Y));
    AND2 AND2_73 (.A(XOR2_40_Y), .B(XOR2_94_Y), .Y(AND2_73_Y));
    XOR2 XOR2_10 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(XOR2_10_Y));
    XNOR2 XNOR2_1 (.A(\RBINSYNCSHIFT[6] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_1_Y));
    AND2 AND2_58 (.A(\WBINNXTSHIFT[1] ), .B(INV_6_Y), .Y(AND2_58_Y));
    AND2 AND2_55 (.A(AND2_46_Y), .B(AND2_85_Y), .Y(AND2_55_Y));
    INV INV_8 (.A(\RBINSYNCSHIFT[9] ), .Y(INV_8_Y));
    MX2 MX2_2 (.A(RAM4K9_2_DOUTA1), .B(RAM4K9_7_DOUTA1), .S(
        DFN1E1C0_1_Q), .Y(MX2_2_Y));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_82_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[4] ));
    INV INV_14 (.A(\RBINSYNCSHIFT[2] ), .Y(INV_14_Y));
    XOR2 XOR2_88 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_88_Y));
    AND2 AND2_69 (.A(AND2_20_Y), .B(AND2_78_Y), .Y(AND2_69_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[2] ));
    XOR2 XOR2_79 (.A(\MEM_WADDR[9] ), .B(GND), .Y(XOR2_79_Y));
    XOR2 XOR2_27 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(XOR2_27_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(cam0_fifo_read_enable), .Y(
        MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_87_Y), .B(AO1_38_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\RBINSYNCSHIFT[12] ), .B(GND), .Y(XOR2_7_Y));
    AND2 AND2_5 (.A(\MEM_WADDR[11] ), .B(GND), .Y(AND2_5_Y));
    XOR2 XOR2_56 (.A(\WBINNXTSHIFT[7] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_56_Y));
    XOR2 XOR2_14 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_14_Y));
    AND2 AND2_91 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(AND2_91_Y));
    AND2 AND2_50 (.A(AND2_49_Y), .B(XOR2_15_Y), .Y(AND2_50_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[9]  (.D(\RBINNXTSHIFT[7] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[9] ));
    XNOR2 XNOR2_3 (.A(\RBINSYNCSHIFT[10] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XNOR2_3_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[7]  (.D(\RBINNXTSHIFT[5] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[7] ));
    XOR2 XOR2_11 (.A(\WBINNXTSHIFT[2] ), .B(INV_14_Y), .Y(XOR2_11_Y));
    XNOR2 XNOR2_22 (.A(\RBINSYNCSHIFT[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_22_Y));
    NAND3A NAND3A_3 (.A(\WDIFF[1] ), .B(\AFVALCONST[0] ), .C(OR2A_2_Y), 
        .Y(NAND3A_3_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[21]  (.D(\QXI[21] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[21]));
    AND2 AND2_52 (.A(AND2_55_Y), .B(XOR2_22_Y), .Y(AND2_52_Y));
    XOR2 XOR2_25 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(XOR2_25_Y));
    XNOR2 XNOR2_15 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_15_Y));
    AO1 AO1_22 (.A(AND2_9_Y), .B(AO1_10_Y), .C(AO1_27_Y), .Y(AO1_22_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[26]  (.D(\QXI[26] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[26]));
    BUFF BUFF_0 (.A(\MEM_WADDR[11] ), .Y(BUFF_0_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[1]  (.D(\QXI[1] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[1]));
    MX2 \MX2_QXI[11]  (.A(RAM4K9_5_DOUTB3), .B(RAM4K9_0_DOUTB3), .S(
        DFN1E1C0_0_Q), .Y(\QXI[11] ));
    MX2 \MX2_QXI[7]  (.A(RAM4K9_2_DOUTB1), .B(RAM4K9_7_DOUTB1), .S(
        DFN1E1C0_0_Q), .Y(\QXI[7] ));
    MX2 \MX2_QXI[29]  (.A(RAM4K9_1_DOUTB7), .B(RAM4K9_6_DOUTB7), .S(
        DFN1E1C0_0_Q), .Y(\QXI[29] ));
    AND2 AND2_34 (.A(AND2_77_Y), .B(XOR2_40_Y), .Y(AND2_34_Y));
    AND2 AND2_66 (.A(AND2_46_Y), .B(XOR2_6_Y), .Y(AND2_66_Y));
    AO1 AO1_41 (.A(AND2_74_Y), .B(AO1_16_Y), .C(AO1_39_Y), .Y(AO1_41_Y)
        );
    AO1 AO1_6 (.A(XOR2_57_Y), .B(AND2_37_Y), .C(AND2_88_Y), .Y(AO1_6_Y)
        );
    XOR2 XOR2_67 (.A(\WBINNXTSHIFT[12] ), .B(GND), .Y(XOR2_67_Y));
    AND2 AND2_63 (.A(\MEM_WADDR[1] ), .B(GND), .Y(AND2_63_Y));
    AND3 AND3_2 (.A(XNOR2_24_Y), .B(XNOR2_1_Y), .C(XNOR2_8_Y), .Y(
        AND3_2_Y));
    XNOR2 XNOR2_26 (.A(\RBINSYNCSHIFT[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_26_Y));
    AO1 AO1_12 (.A(XOR2_41_Y), .B(AO1_45_Y), .C(AND2_89_Y), .Y(
        AO1_12_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[17]  (.D(\QXI[17] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[17]));
    NOR3A NOR3A_1 (.A(OR2A_3_Y), .B(AO1C_6_Y), .C(\WDIFF[10] ), .Y(
        NOR3A_1_Y));
    XOR2 XOR2_32 (.A(\MEM_WADDR[10] ), .B(GND), .Y(XOR2_32_Y));
    OR3 OR3_0 (.A(AND2_67_Y), .B(AND2_58_Y), .C(AND2_10_Y), .Y(OR3_0_Y)
        );
    MX2 MX2_6 (.A(RAM4K9_4_DOUTA1), .B(RAM4K9_3_DOUTA1), .S(
        DFN1E1C0_1_Q), .Y(MX2_6_Y));
    AND2 AND2_9 (.A(XOR2_21_Y), .B(XOR2_51_Y), .Y(AND2_9_Y));
    XOR2 XOR2_65 (.A(\RBINSYNCSHIFT[12] ), .B(GND), .Y(XOR2_65_Y));
    AND2 AND2_90 (.A(AND2_84_Y), .B(XOR2_68_Y), .Y(AND2_90_Y));
    NOR3A NOR3A_0 (.A(OR2A_8_Y), .B(AO1C_1_Y), .C(\WDIFF[3] ), .Y(
        NOR3A_0_Y));
    XOR2 XOR2_58 (.A(\WBINNXTSHIFT[8] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XOR2_58_Y));
    XOR2 XOR2_43 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(XOR2_43_Y));
    AO1 AO1_32 (.A(XOR2_84_Y), .B(AND2_12_Y), .C(AND2_7_Y), .Y(
        AO1_32_Y));
    INV INV_2 (.A(\RBINSYNCSHIFT[0] ), .Y(INV_2_Y));
    MX2 \MX2_QXI[9]  (.A(RAM4K9_4_DOUTB3), .B(RAM4K9_3_DOUTB3), .S(
        DFN1E1C0_0_Q), .Y(\QXI[9] ));
    AND2 AND2_92 (.A(AND2_3_Y), .B(XOR2_65_Y), .Y(AND2_92_Y));
    MX2 MX2_7 (.A(RAM4K9_1_DOUTA1), .B(RAM4K9_6_DOUTA1), .S(
        DFN1E1C0_1_Q), .Y(MX2_7_Y));
    AO1 AO1_9 (.A(XOR2_61_Y), .B(AND2_76_Y), .C(AND2_15_Y), .Y(AO1_9_Y)
        );
    AND2 AND2_39 (.A(XOR2_41_Y), .B(XOR2_36_Y), .Y(AND2_39_Y));
    NAND2 NAND2_0 (.A(cam0_fifo_full), .B(VCC), .Y(NAND2_0_Y));
    NAND3A NAND3A_1 (.A(\WDIFF[11] ), .B(\AFVALCONST[5] ), .C(OR2A_3_Y)
        , .Y(NAND3A_1_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[19]  (.D(\QXI[19] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[19]));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_72_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[6] ));
    XOR2 XOR2_76 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_76_Y));
    AND2 AND2_27 (.A(AND2_56_Y), .B(AND2_61_Y), .Y(AND2_27_Y));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(clk), .CLR(READ_RESET_P), 
        .Q(DVLDI));
    OR2 OR2_1 (.A(BUFF_0_Y), .B(MEMWENEG), .Y(OR2_1_Y));
    MX2 MX2_3 (.A(RAM4K9_4_DOUTA0), .B(RAM4K9_3_DOUTA0), .S(
        DFN1E1C0_1_Q), .Y(MX2_3_Y));
    XNOR2 XNOR2_10 (.A(\RBINSYNCSHIFT[9] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XNOR2_10_Y));
    AND2 AND2_MEMORYWE (.A(NAND2_0_Y), .B(cam0_fifo_write_enable), .Y(
        MEMORYWE));
    XOR2 XOR2_83 (.A(\RBINSYNCSHIFT[11] ), .B(GND), .Y(XOR2_83_Y));
    XNOR2 XNOR2_27 (.A(\RBINNXTSHIFT[10] ), .B(\MEM_WADDR[12] ), .Y(
        XNOR2_27_Y));
    AO1 AO1_20 (.A(AND3_7_Y), .B(NAND3A_5_Y), .C(NAND3A_2_Y), .Y(
        AO1_20_Y));
    RAM4K9 RAM4K9_6 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[5]), 
        .DINA0(cam0_fifo_write_data[4]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_3_Y), .BLKB(OR2_4_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_6_DOUTA1), 
        .DOUTA0(RAM4K9_6_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_6_DOUTB7), 
        .DOUTB6(RAM4K9_6_DOUTB6), .DOUTB5(RAM4K9_6_DOUTB5), .DOUTB4(
        RAM4K9_6_DOUTB4), .DOUTB3(RAM4K9_6_DOUTB3), .DOUTB2(
        RAM4K9_6_DOUTB2), .DOUTB1(RAM4K9_6_DOUTB1), .DOUTB0(
        RAM4K9_6_DOUTB0));
    INV INV_13 (.A(\RBINSYNCSHIFT[11] ), .Y(INV_13_Y));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_19_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[2] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[15]  (.D(\QXI[15] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[15]));
    AO1 AO1_0 (.A(AND2_20_Y), .B(AO1_25_Y), .C(AO1_13_Y), .Y(AO1_0_Y));
    XOR2 XOR2_29 (.A(\MEM_WADDR[12] ), .B(GND), .Y(XOR2_29_Y));
    AO1 AO1_45 (.A(AND2_57_Y), .B(AO1_16_Y), .C(AO1_44_Y), .Y(AO1_45_Y)
        );
    XOR2 XOR2_40 (.A(\WBINNXTSHIFT[7] ), .B(INV_10_Y), .Y(XOR2_40_Y));
    XOR2 \XOR2_WDIFF[10]  (.A(XOR2_75_Y), .B(AO1_52_Y), .Y(\WDIFF[10] )
        );
    XOR2 XOR2_2 (.A(\WBINNXTSHIFT[11] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XOR2_2_Y));
    DFN1E1C0 DFN1E1C0_1 (.D(\MEM_WADDR[11] ), .CLK(clk), .CLR(
        READ_RESET_P), .E(OR2A_1_Y), .Q(DFN1E1C0_1_Q));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_88_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[5] ));
    XNOR2 XNOR2_30 (.A(\WDIFF[6] ), .B(\AFVALCONST[0] ), .Y(XNOR2_30_Y)
        );
    AND2A AND2A_0 (.A(cam0_fifo_empty), .B(cam0_fifo_read_enable), .Y(
        AND2A_0_Y));
    XOR2 XOR2_37 (.A(\WBINNXTSHIFT[7] ), .B(INV_10_Y), .Y(XOR2_37_Y));
    AND2 AND2_36 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_36_Y));
    XNOR2 \XNOR2_WDIFF[1]  (.A(XOR2_25_Y), .B(NOR2A_0_Y), .Y(
        \WDIFF[1] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[23]  (.D(\QXI[23] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[23]));
    AO1 AO1_26 (.A(XOR2_68_Y), .B(AO1_0_Y), .C(AND2_1_Y), .Y(AO1_26_Y));
    DFN1C0 \DFN1C0_WGRY[10]  (.D(XOR2_49_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[10] ));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[8]  (.D(\RBINNXTSHIFT[6] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[8] ));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_20_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[7] ));
    AND3 AND3_9 (.A(AND3_10_Y), .B(AND3_8_Y), .C(AND3_6_Y), .Y(
        AND3_9_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[12]  (.D(\QXI[12] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[12]));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_91_Y), .B(AO1_7_Y), .Y(
        \RBINNXTSHIFT[5] ));
    AO1 AO1_23 (.A(AND2_61_Y), .B(AO1_10_Y), .C(AO1_42_Y), .Y(AO1_23_Y)
        );
    AOI1 AOI1_0 (.A(AND3_0_Y), .B(AO1_28_Y), .C(NAND3A_4_Y), .Y(
        AOI1_0_Y));
    OR2 OR2_3 (.A(INV_4_Y), .B(MEMWENEG), .Y(OR2_3_Y));
    MX2 \MX2_QXI[21]  (.A(RAM4K9_1_DOUTB5), .B(RAM4K9_6_DOUTB5), .S(
        DFN1E1C0_0_Q), .Y(\QXI[21] ));
    AND2 AND2_33 (.A(AND2_83_Y), .B(AND2_62_Y), .Y(AND2_33_Y));
    XOR2 XOR2_44 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(XOR2_44_Y));
    AO1 AO1_10 (.A(AND2_33_Y), .B(AO1_37_Y), .C(AO1_35_Y), .Y(AO1_10_Y)
        );
    XOR2 XOR2_41 (.A(\WBINNXTSHIFT[11] ), .B(INV_7_Y), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_35_Y));
    XNOR2 XNOR2_24 (.A(\RBINSYNCSHIFT[5] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_24_Y));
    XOR2 \XOR2_RBINNXTSHIFT[10]  (.A(XOR2_7_Y), .B(AO1_29_Y), .Y(
        \RBINNXTSHIFT[10] ));
    MX2 \MX2_QXI[2]  (.A(RAM4K9_5_DOUTB0), .B(RAM4K9_0_DOUTB0), .S(
        DFN1E1C0_0_Q), .Y(\QXI[2] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[14]  (.D(\QXI[14] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[14]));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[10]  (.D(\RBINNXTSHIFT[8] ), .CLK(clk)
        , .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[10] ));
    XOR2 XOR2_80 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_80_Y));
    DFN1C0 \DFN1C0_WGRY[1]  (.D(XOR2_31_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[1] ));
    NOR2A NOR2A_1 (.A(\AFVALCONST[5] ), .B(\WDIFF[8] ), .Y(NOR2A_1_Y));
    XOR2 XOR2_78 (.A(\MEM_WADDR[10] ), .B(GND), .Y(XOR2_78_Y));
    RAM4K9 RAM4K9_5 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[3]), 
        .DINA0(cam0_fifo_write_data[2]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_1_Y), .BLKB(OR2_2_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_5_DOUTA1), 
        .DOUTA0(RAM4K9_5_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_5_DOUTB7), 
        .DOUTB6(RAM4K9_5_DOUTB6), .DOUTB5(RAM4K9_5_DOUTB5), .DOUTB4(
        RAM4K9_5_DOUTB4), .DOUTB3(RAM4K9_5_DOUTB3), .DOUTB2(
        RAM4K9_5_DOUTB2), .DOUTB1(RAM4K9_5_DOUTB1), .DOUTB0(
        RAM4K9_5_DOUTB0));
    AO1 AO1_30 (.A(XOR2_80_Y), .B(AO1_37_Y), .C(AND2_70_Y), .Y(
        AO1_30_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_86_Y), .B(AO1_26_Y), .Y(
        \RBINNXTSHIFT[7] ));
    AND2 AND2_41 (.A(AND2_49_Y), .B(AND2_74_Y), .Y(AND2_41_Y));
    AND2 AND2_0 (.A(AND2_44_Y), .B(XOR2_9_Y), .Y(AND2_0_Y));
    XOR2 XOR2_69 (.A(\WBINNXTSHIFT[3] ), .B(INV_5_Y), .Y(XOR2_69_Y));
    AO1 AO1_16 (.A(AND2_28_Y), .B(AO1_47_Y), .C(AO1_2_Y), .Y(AO1_16_Y));
    AND2 AND2_17 (.A(\WBINNXTSHIFT[7] ), .B(INV_10_Y), .Y(AND2_17_Y));
    NOR2A NOR2A_0 (.A(\RBINSYNCSHIFT[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        NOR2A_0_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[28]  (.D(\QXI[28] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[28]));
    AO1 AO1_29 (.A(AND2_23_Y), .B(AO1_49_Y), .C(AO1_48_Y), .Y(AO1_29_Y)
        );
    XOR2 XOR2_6 (.A(\WBINNXTSHIFT[3] ), .B(INV_5_Y), .Y(XOR2_6_Y));
    AND2 AND2_77 (.A(AND2_55_Y), .B(AND2_48_Y), .Y(AND2_77_Y));
    DFN1C0 \DFN1C0_WGRY[12]  (.D(XOR2_67_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[12] ));
    AND2 AND2_54 (.A(AND2_27_Y), .B(XOR2_29_Y), .Y(AND2_54_Y));
    MX2 \MX2_QXI[17]  (.A(RAM4K9_4_DOUTB5), .B(RAM4K9_3_DOUTB5), .S(
        DFN1E1C0_0_Q), .Y(\QXI[17] ));
    AO1 AO1_13 (.A(XOR2_27_Y), .B(AND2_4_Y), .C(AND2_16_Y), .Y(
        AO1_13_Y));
    XOR2 XOR2_93 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_93_Y));
    XOR2 XOR2_84 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_84_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[6] ));
    XOR2 \XOR2_WBINNXTSHIFT[5]  (.A(XOR2_48_Y), .B(AO1_30_Y), .Y(
        \WBINNXTSHIFT[5] ));
    XOR2 XOR2_81 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(XOR2_81_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[8]  (.D(\QXI[8] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[8]));
    XOR2 \XOR2_WDIFF[7]  (.A(XOR2_37_Y), .B(AO1_34_Y), .Y(\WDIFF[7] ));
    XOR2 XOR2_53 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(XOR2_53_Y));
    AO1 AO1_36 (.A(XOR2_16_Y), .B(AO1_49_Y), .C(AND2_31_Y), .Y(
        AO1_36_Y));
    XNOR2 XNOR2_23 (.A(\RBINNXTSHIFT[6] ), .B(\MEM_WADDR[8] ), .Y(
        XNOR2_23_Y));
    AND2 AND2_81 (.A(AND2_11_Y), .B(XOR2_8_Y), .Y(AND2_81_Y));
    XOR2 \XOR2_WBINNXTSHIFT[10]  (.A(XOR2_32_Y), .B(AO1_22_Y), .Y(
        \WBINNXTSHIFT[10] ));
    AO1 AO1_33 (.A(XOR2_29_Y), .B(AO1_23_Y), .C(AND2_30_Y), .Y(
        AO1_33_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[4]  (.D(\QXI[4] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[4]));
    AO1 AO1_44 (.A(XOR2_89_Y), .B(AND2_40_Y), .C(AND2_68_Y), .Y(
        AO1_44_Y));
    OR2A OR2A_0 (.A(MEMRENEG), .B(INV_13_Y), .Y(OR2A_0_Y));
    OR2A OR2A_10 (.A(\AFVALCONST[0] ), .B(\WDIFF[2] ), .Y(OR2A_10_Y));
    XNOR2 XNOR2_12 (.A(\RBINNXTSHIFT[9] ), .B(\MEM_WADDR[11] ), .Y(
        XNOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\WDIFF[4] ), .B(\AFVALCONST[0] ), .Y(XNOR2_7_Y));
    XOR2 XOR2_12 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_12_Y));
    AND2 AND2_48 (.A(XOR2_22_Y), .B(XOR2_45_Y), .Y(AND2_48_Y));
    AND2 AND2_45 (.A(\RBINSYNCSHIFT[11] ), .B(GND), .Y(AND2_45_Y));
    AO1 AO1_19 (.A(XOR2_0_Y), .B(AO1_15_Y), .C(AND2_76_Y), .Y(AO1_19_Y)
        );
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_28_Y), .B(AO1_19_Y), .Y(
        \WBINNXTSHIFT[7] ));
    XOR2 XOR2_26 (.A(\MEM_WADDR[11] ), .B(GND), .Y(XOR2_26_Y));
    DFN1C0 DFN1C0_cam0_fifo_afull (.D(OR2_0_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_afull));
    AND2 AND2_59 (.A(AND2_44_Y), .B(AND2_69_Y), .Y(AND2_59_Y));
    DFN1C0 \DFN1C0_RGRY[10]  (.D(XOR2_85_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[10] ));
    AND2 AND2_4 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(AND2_4_Y));
    XOR2 XOR2_90 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(XOR2_90_Y));
    AND2 AND2_FULLINT (.A(AND2_24_Y), .B(XOR2_50_Y), .Y(FULLINT));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[10]  (.D(\QXI[10] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[10]));
    AO1 AO1_39 (.A(AND2_39_Y), .B(AO1_44_Y), .C(AO1_31_Y), .Y(AO1_39_Y)
        );
    AND2 AND2_40 (.A(\WBINNXTSHIFT[9] ), .B(INV_8_Y), .Y(AND2_40_Y));
    XOR2 \XOR2_WDIFF[6]  (.A(XOR2_34_Y), .B(AO1_3_Y), .Y(\WDIFF[6] ));
    OR2A OR2A_11 (.A(MEMWENEG), .B(INV_4_Y), .Y(OR2A_11_Y));
    AND2 AND2_88 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(AND2_88_Y));
    AND2 AND2_85 (.A(XOR2_6_Y), .B(XOR2_57_Y), .Y(AND2_85_Y));
    XOR2 XOR2_50 (.A(\RBINSYNCSHIFT[12] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XOR2_50_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[30]  (.D(\QXI[30] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[30]));
    AND2 AND2_42 (.A(AND2_49_Y), .B(AND2_57_Y), .Y(AND2_42_Y));
    DFN1C0 \DFN1C0_WGRY[8]  (.D(XOR2_58_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[8] ));
    MX2 MX2_4 (.A(RAM4K9_1_DOUTA0), .B(RAM4K9_6_DOUTA0), .S(
        DFN1E1C0_1_Q), .Y(MX2_4_Y));
    XNOR2 XNOR2_5 (.A(\AFVALCONST[5] ), .B(\WDIFF[11] ), .Y(XNOR2_5_Y));
    AO1 AO1_5 (.A(XOR2_6_Y), .B(AO1_18_Y), .C(AND2_37_Y), .Y(AO1_5_Y));
    XOR2 \XOR2_WDIFF[4]  (.A(XOR2_47_Y), .B(AO1_5_Y), .Y(\WDIFF[4] ));
    AND2 AND2_67 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(AND2_67_Y));
    XNOR2 XNOR2_16 (.A(\AFVALCONST[5] ), .B(\WDIFF[10] ), .Y(
        XNOR2_16_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_55_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[3] ));
    XOR2 XOR2_94 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(XOR2_94_Y));
    MX2 \MX2_QXI[31]  (.A(RAM4K9_2_DOUTB7), .B(RAM4K9_7_DOUTB7), .S(
        DFN1E1C0_0_Q), .Y(\QXI[31] ));
    XOR2 XOR2_39 (.A(\RBINNXTSHIFT[9] ), .B(\RBINNXTSHIFT[10] ), .Y(
        XOR2_39_Y));
    AND2 AND2_8 (.A(AND2_80_Y), .B(XOR2_18_Y), .Y(AND2_8_Y));
    XOR2 XOR2_91 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(XOR2_91_Y));
    DFN1C0 DFN1C0_cam0_fifo_full (.D(FULLINT), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_full));
    AND2 AND2_80 (.A(XOR2_43_Y), .B(XOR2_35_Y), .Y(AND2_80_Y));
    XOR2 \XOR2_WDIFF[8]  (.A(XOR2_73_Y), .B(AO1_14_Y), .Y(\WDIFF[8] ));
    XOR2 XOR2_3 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(XOR2_3_Y));
    XOR2 XOR2_54 (.A(\WBINNXTSHIFT[11] ), .B(INV_7_Y), .Y(XOR2_54_Y));
    MX2 \MX2_QXI[4]  (.A(RAM4K9_1_DOUTB0), .B(RAM4K9_6_DOUTB0), .S(
        DFN1E1C0_0_Q), .Y(\QXI[4] ));
    XOR2 XOR2_51 (.A(\MEM_WADDR[9] ), .B(GND), .Y(XOR2_51_Y));
    AO1 AO1_27 (.A(XOR2_51_Y), .B(AND2_82_Y), .C(AND2_71_Y), .Y(
        AO1_27_Y));
    RAM4K9 RAM4K9_1 (.ADDRA11(GND), .ADDRA10(\MEM_WADDR[10] ), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(\RBINSYNCSHIFT[10] ), 
        .ADDRB7(\RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), 
        .ADDRB5(\RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), 
        .ADDRB3(\RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), 
        .ADDRB1(\RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(GND), .DINA2(GND), .DINA1(cam0_fifo_write_data[5]), 
        .DINA0(cam0_fifo_write_data[4]), .DINB8(GND), .DINB7(GND), 
        .DINB6(GND), .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND)
        , .DINB1(GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), 
        .WIDTHB0(VCC), .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), 
        .WMODEA(GND), .WMODEB(GND), .BLKA(OR2_1_Y), .BLKB(OR2_2_Y), 
        .WENA(GND), .WENB(VCC), .CLKA(clk), .CLKB(clk), .RESET(
        READ_RESET_P), .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), 
        .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(RAM4K9_1_DOUTA1), 
        .DOUTA0(RAM4K9_1_DOUTA0), .DOUTB8(), .DOUTB7(RAM4K9_1_DOUTB7), 
        .DOUTB6(RAM4K9_1_DOUTB6), .DOUTB5(RAM4K9_1_DOUTB5), .DOUTB4(
        RAM4K9_1_DOUTB4), .DOUTB3(RAM4K9_1_DOUTB3), .DOUTB2(
        RAM4K9_1_DOUTB2), .DOUTB1(RAM4K9_1_DOUTB1), .DOUTB0(
        RAM4K9_1_DOUTB0));
    AND2 AND2_82 (.A(\MEM_WADDR[8] ), .B(GND), .Y(AND2_82_Y));
    XOR2 XOR2_66 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(XOR2_66_Y));
    AND2 AND2_56 (.A(AND2_38_Y), .B(AND2_33_Y), .Y(AND2_56_Y));
    INV INV_10 (.A(\RBINSYNCSHIFT[7] ), .Y(INV_10_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[1] ));
    MX2 \MX2_QXI[12]  (.A(RAM4K9_1_DOUTB2), .B(RAM4K9_6_DOUTB2), .S(
        DFN1E1C0_0_Q), .Y(\QXI[12] ));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_90_Y), .B(AND2_86_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\WBINNXTSHIFT[9] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XOR2_17_Y));
    XOR2 XOR2_73 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(XOR2_73_Y));
    AND2 AND2_53 (.A(AND2_38_Y), .B(XOR2_80_Y), .Y(AND2_53_Y));
    AND3 AND3_7 (.A(XNOR2_13_Y), .B(XNOR2_7_Y), .C(XNOR2_0_Y), .Y(
        AND3_7_Y));
    XOR2 XOR2_28 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_28_Y));
    INV INV_9 (.A(\RBINSYNCSHIFT[6] ), .Y(INV_9_Y));
    MX2 \MX2_QXI[27]  (.A(RAM4K9_5_DOUTB7), .B(RAM4K9_0_DOUTB7), .S(
        DFN1E1C0_0_Q), .Y(\QXI[27] ));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[5] ));
    XOR2 XOR2_15 (.A(\WBINNXTSHIFT[9] ), .B(INV_8_Y), .Y(XOR2_15_Y));
    XOR2 \XOR2_WDIFF[9]  (.A(XOR2_60_Y), .B(AO1_16_Y), .Y(\WDIFF[9] ));
    AO1 AO1_17 (.A(XOR2_94_Y), .B(AND2_17_Y), .C(AND2_87_Y), .Y(
        AO1_17_Y));
    XNOR2 XNOR2_17 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_17_Y));
    AO1D AO1D_0 (.A(AO1C_2_Y), .B(AO1C_7_Y), .C(AO1C_3_Y), .Y(AO1D_0_Y)
        );
    NAND3A NAND3A_4 (.A(NOR3A_1_Y), .B(OR2A_6_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_4_Y));
    XOR2 \XOR2_WBINNXTSHIFT[11]  (.A(XOR2_64_Y), .B(AO1_43_Y), .Y(
        \WBINNXTSHIFT[11] ));
    AND3 AND3_4 (.A(XNOR2_2_Y), .B(XNOR2_22_Y), .C(XNOR2_26_Y), .Y(
        AND3_4_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_14_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_63_Y), .B(AND2_36_Y), .Y(
        \WBINNXTSHIFT[1] ));
    AND2 AND2_21 (.A(AND2_42_Y), .B(XOR2_41_Y), .Y(AND2_21_Y));
    AO1 AO1_37 (.A(AND2_79_Y), .B(AO1_1_Y), .C(AO1_32_Y), .Y(AO1_37_Y));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_59_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[4] ));
    OR2A OR2A_9 (.A(\AFVALCONST[5] ), .B(\WDIFF[7] ), .Y(OR2A_9_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[3]  (.D(\QXI[3] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[3]));
    XOR2 XOR2_0 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_0_Y));
    NAND2 NAND2_1 (.A(cam0_fifo_empty), .B(VCC), .Y(NAND2_1_Y));
    XOR2 XOR2_70 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_70_Y));
    NAND3A NAND3A_5 (.A(NOR3A_2_Y), .B(OR2A_10_Y), .C(NAND3A_3_Y), .Y(
        NAND3A_5_Y));
    AO1 AO1_4 (.A(XOR2_45_Y), .B(AND2_91_Y), .C(AND2_32_Y), .Y(AO1_4_Y)
        );
    XOR2 XOR2_68 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(XOR2_68_Y));
    AND2 AND2_37 (.A(\WBINNXTSHIFT[3] ), .B(INV_5_Y), .Y(AND2_37_Y));
    AND2 AND2_93 (.A(\WBINNXTSHIFT[2] ), .B(INV_14_Y), .Y(AND2_93_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_44_Y), .B(AO1_24_Y), .Y(
        \RBINNXTSHIFT[2] ));
    XNOR2 XNOR2_14 (.A(\RBINNXTSHIFT[5] ), .B(\MEM_WADDR[7] ), .Y(
        XNOR2_14_Y));
    XOR2 XOR2_42 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(XOR2_42_Y));
    XNOR2 XNOR2_29 (.A(\WDIFF[7] ), .B(\AFVALCONST[5] ), .Y(XNOR2_29_Y)
        );
    AO1 AO1_21 (.A(XOR2_65_Y), .B(AO1_29_Y), .C(AND2_35_Y), .Y(
        AO1_21_Y));
    XOR2 XOR2_36 (.A(\WBINNXTSHIFT[12] ), .B(INV_12_Y), .Y(XOR2_36_Y));
    BUFF BUFF_1 (.A(\RBINSYNCSHIFT[11] ), .Y(BUFF_1_Y));
    XOR2 XOR2_74 (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE), .Y(XOR2_74_Y));
    XNOR2 XNOR2_8 (.A(\RBINSYNCSHIFT[7] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XNOR2_8_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[0]  (.D(\QXI[0] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[0]));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[5]  (.D(\RBINNXTSHIFT[3] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[5] ));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[4]  (.D(\RBINNXTSHIFT[2] ), .CLK(clk), 
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[4] ));
    MX2 MX2_1 (.A(RAM4K9_5_DOUTA0), .B(RAM4K9_0_DOUTA0), .S(
        DFN1E1C0_1_Q), .Y(MX2_1_Y));
    AO1C AO1C_6 (.A(\AFVALCONST[5] ), .B(\WDIFF[11] ), .C(
        \AFVALCONST[5] ), .Y(AO1C_6_Y));
    XOR2 XOR2_71 (.A(\RBINNXTSHIFT[8] ), .B(\RBINNXTSHIFT[9] ), .Y(
        XOR2_71_Y));
    AND2 AND2_28 (.A(AND2_48_Y), .B(AND2_73_Y), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(XOR2_8_Y), .B(XOR2_3_Y), .Y(AND2_25_Y));
    AO1 AO1_48 (.A(XOR2_83_Y), .B(AND2_31_Y), .C(AND2_45_Y), .Y(
        AO1_48_Y));
    AO1C AO1C_2 (.A(\AFVALCONST[5] ), .B(\WDIFF[9] ), .C(AO1C_5_Y), .Y(
        AO1C_2_Y));
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
// LPMTYPE:LPM_SOFTFIFO
// LPM_HINT:MEMFF
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:\\vmware-host/Shared Folders/lab11 On My Mac/workspace/senseye-2/software/smartfusion/smartgen\fifo_pixel_data
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:8
// WDEPTH:4096
// RWIDTH:32
// RDEPTH:1024
// CLKS:1
// CLOCK_PN:clk
// WCLK_EDGE:RISE
// ACLR_PN:reset
// RESET_POLARITY:1
// INIT_RAM:F
// WE_POLARITY:1
// RE_POLARITY:1
// FF_PN:cam0_fifo_full
// AF_PN:cam0_fifo_afull
// WACK_PN:WACK
// OVRFLOW_PN:cam0_fifo_overflow
// WRCNT_PN:WRCNT
// WE_PN:cam0_fifo_write_enable
// EF_PN:cam0_fifo_empty
// AE_PN:AEMPTY
// DVLD_PN:cam0_fifo_data_valid
// UDRFLOW_PN:UNDERFLOW
// RDCNT_PN:RDCNT
// RE_PN:cam0_fifo_read_enable
// CONTROLLERONLY:F
// FSTOP:YES
// ESTOP:YES
// WRITEACK:NO
// OVERFLOW:YES
// WRCOUNT:NO
// DATAVALID:YES
// UNDERFLOW:NO
// RDCOUNT:NO
// AF_PORT_PN:AFVAL
// AE_PORT_PN:AEVAL
// AFFLAG:STATIC
// AEFLAG:NONE
// AFVAL:4000
// DATA_IN_PN:cam0_fifo_write_data
// DATA_OUT_PN:cam0_fifo_read_data
// CASCADE:1

// _End_Comments_

