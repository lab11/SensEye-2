`timescale 1 ns/100 ps
// Version: v11.2 SP1 11.2.1.8


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
        \MEM_WADDR[10] , \WBINNXTSHIFT[0] , \WBINNXTSHIFT[1] ,
        \WBINNXTSHIFT[2] , \WBINNXTSHIFT[3] , \WBINNXTSHIFT[4] ,
        \WBINNXTSHIFT[5] , \WBINNXTSHIFT[6] , \WBINNXTSHIFT[7] ,
        \WBINNXTSHIFT[8] , \WBINNXTSHIFT[9] , \WBINNXTSHIFT[10] ,
        \RBINSYNCSHIFT[0] , \RBINSYNCSHIFT[2] , \RBINSYNCSHIFT[3] ,
        \RBINSYNCSHIFT[4] , \RBINSYNCSHIFT[5] , \RBINSYNCSHIFT[6] ,
        \RBINSYNCSHIFT[7] , \RBINSYNCSHIFT[8] , \RBINSYNCSHIFT[9] ,
        \RBINSYNCSHIFT[10] , \RBINNXTSHIFT[0] , \RBINNXTSHIFT[1] ,
        \RBINNXTSHIFT[2] , \RBINNXTSHIFT[3] , \RBINNXTSHIFT[4] ,
        \RBINNXTSHIFT[5] , \RBINNXTSHIFT[6] , \RBINNXTSHIFT[7] ,
        \RBINNXTSHIFT[8] , FULLINT, MEMORYWE, MEMWENEG, \WDIFF[0] ,
        \WDIFF[1] , \WDIFF[2] , \WDIFF[3] , \WDIFF[4] , \WDIFF[5] ,
        \WDIFF[6] , \WDIFF[7] , \WDIFF[8] , \WDIFF[9] , \WDIFF[10] ,
        \AFVALCONST[0] , \AFVALCONST[8] , \WGRY[0] , \WGRY[1] ,
        \WGRY[2] , \WGRY[3] , \WGRY[4] , \WGRY[5] , \WGRY[6] ,
        \WGRY[7] , \WGRY[8] , \WGRY[9] , \WGRY[10] , EMPTYINT,
        MEMORYRE, MEMRENEG, DVLDI, \RGRY[0] , \RGRY[1] , \RGRY[2] ,
        \RGRY[3] , \RGRY[4] , \RGRY[5] , \RGRY[6] , \RGRY[7] ,
        \RGRY[8] , \QXI[0] , \QXI[1] , \QXI[2] , \QXI[3] , \QXI[4] ,
        \QXI[5] , \QXI[6] , \QXI[7] , \QXI[8] , \QXI[9] , \QXI[10] ,
        \QXI[11] , \QXI[12] , \QXI[13] , \QXI[14] , \QXI[15] ,
        \QXI[16] , \QXI[17] , \QXI[18] , \QXI[19] , \QXI[20] ,
        \QXI[21] , \QXI[22] , \QXI[23] , \QXI[24] , \QXI[25] ,
        \QXI[26] , \QXI[27] , \QXI[28] , \QXI[29] , \QXI[30] ,
        \QXI[31] , \RAM4K9_QXI[25]_DOUTA0 , \RAM4K9_QXI[25]_DOUTA1 ,
        \RAM4K9_QXI[27]_DOUTA0 , \RAM4K9_QXI[27]_DOUTA1 ,
        \RAM4K9_QXI[29]_DOUTA0 , \RAM4K9_QXI[29]_DOUTA1 ,
        \RAM4K9_QXI[31]_DOUTA0 , \RAM4K9_QXI[31]_DOUTA1 , NAND2_1_Y,
        AOI1_0_Y, OR2_0_Y, AND3_6_Y, AO1_11_Y, AO1_22_Y, AND3_4_Y,
        NAND3A_2_Y, NAND3A_3_Y, OR2A_4_Y, AO1C_0_Y, NOR3A_1_Y,
        OR2A_3_Y, NAND3A_1_Y, OR2A_2_Y, AO1C_1_Y, NOR3A_0_Y, OR2A_5_Y,
        NAND3A_0_Y, XNOR2_26_Y, XNOR2_24_Y, XNOR2_8_Y, AND2_4_Y,
        NOR3_0_Y, NAND3A_4_Y, OR2A_0_Y, AO1C_2_Y, NOR3A_2_Y, OR2A_1_Y,
        NAND3A_5_Y, OA1A_0_Y, AND2A_0_Y, OA1C_0_Y, XNOR2_2_Y,
        XNOR2_25_Y, XNOR2_11_Y, XNOR2_3_Y, XNOR2_15_Y, XNOR2_22_Y,
        XNOR2_4_Y, AND3_0_Y, AND2_52_Y, XOR2_32_Y, XOR2_27_Y,
        XOR2_16_Y, XOR2_59_Y, XOR2_51_Y, XOR2_28_Y, XOR2_39_Y,
        XOR2_48_Y, XOR2_50_Y, XOR2_14_Y, XOR2_42_Y, AND2_51_Y,
        AND2_9_Y, AND2_5_Y, AND2_57_Y, AND2_10_Y, AND2_61_Y, AND2_13_Y,
        AND2_66_Y, AND2_58_Y, AND2_1_Y, XOR2_36_Y, XOR2_30_Y,
        XOR2_15_Y, XOR2_70_Y, XOR2_68_Y, XOR2_64_Y, XOR2_0_Y,
        XOR2_53_Y, XOR2_18_Y, XOR2_44_Y, XOR2_66_Y, AND2_17_Y,
        AO1_26_Y, AND2_11_Y, AO1_7_Y, AND2_65_Y, AO1_8_Y, AND2_64_Y,
        AO1_21_Y, AND2_67_Y, AND2_50_Y, AO1_29_Y, AND2_6_Y, AND2_12_Y,
        AND2_31_Y, AND2_28_Y, AND2_49_Y, AND2_45_Y, AND2_22_Y,
        AND2_21_Y, AO1_24_Y, AND2_24_Y, AND2_29_Y, AO1_1_Y, AO1_18_Y,
        AO1_41_Y, AO1_13_Y, AO1_33_Y, AO1_17_Y, AO1_28_Y, AO1_30_Y,
        AO1_9_Y, XOR2_25_Y, XOR2_54_Y, XOR2_10_Y, XOR2_72_Y, XOR2_77_Y,
        XOR2_41_Y, XOR2_65_Y, XOR2_24_Y, XOR2_1_Y, XOR2_67_Y,
        AND2A_1_Y, XOR2_11_Y, XOR2_21_Y, XOR2_45_Y, XOR2_47_Y,
        XOR2_69_Y, XOR2_73_Y, XOR2_61_Y, XOR2_17_Y, XOR2_60_Y,
        AND2_39_Y, AND2_16_Y, AND2_53_Y, AND2_3_Y, AND2_14_Y, AND2_0_Y,
        AND2_36_Y, AND2_25_Y, XOR2_63_Y, XOR2_4_Y, XOR2_6_Y, XOR2_2_Y,
        XOR2_7_Y, XOR2_23_Y, XOR2_57_Y, XOR2_3_Y, XOR2_13_Y, AND2_42_Y,
        AO1_36_Y, AND2_27_Y, AO1_12_Y, AND2_8_Y, AO1_42_Y, AND2_20_Y,
        AND2_18_Y, AO1_20_Y, AND2_63_Y, AND2_19_Y, AND2_37_Y,
        AND2_56_Y, AND2_48_Y, AND2_68_Y, AO1_6_Y, AND2_2_Y, AND2_71_Y,
        AO1_19_Y, AO1_0_Y, AO1_38_Y, AO1_23_Y, AO1_39_Y, AO1_40_Y,
        AO1_10_Y, XOR2_55_Y, XOR2_75_Y, XOR2_37_Y, XOR2_35_Y,
        XOR2_56_Y, XOR2_76_Y, XOR2_20_Y, XOR2_71_Y, NAND2_0_Y,
        NOR2A_0_Y, INV_2_Y, INV_10_Y, INV_4_Y, INV_1_Y, INV_0_Y,
        INV_7_Y, INV_8_Y, INV_3_Y, INV_6_Y, INV_9_Y, INV_5_Y,
        AND2_54_Y, AND2_47_Y, AND2_7_Y, AND2_76_Y, AND2_30_Y,
        AND2_74_Y, AND2_75_Y, AND2_26_Y, AND2_15_Y, AND2_72_Y,
        AND2_34_Y, AND2_55_Y, XOR2_8_Y, XOR2_9_Y, XOR2_5_Y, XOR2_49_Y,
        XOR2_19_Y, XOR2_38_Y, XOR2_33_Y, XOR2_78_Y, XOR2_12_Y,
        XOR2_74_Y, AND2_69_Y, AO1_5_Y, AND2_43_Y, AO1_3_Y, AND2_38_Y,
        AO1_15_Y, AND2_70_Y, AO1_34_Y, AND2_40_Y, AND2_59_Y, AO1_37_Y,
        AND2_46_Y, AND2_33_Y, AND2_44_Y, AO1_14_Y, AND2_23_Y,
        AND2_60_Y, AND2_41_Y, AND2_35_Y, AND2_62_Y, OR3_0_Y, AO1_16_Y,
        AO1_32_Y, AO1_25_Y, AO1_27_Y, AO1_31_Y, AO1_35_Y, AO1_2_Y,
        AO1_4_Y, XOR2_34_Y, XOR2_22_Y, XOR2_26_Y, XOR2_58_Y, XOR2_40_Y,
        XOR2_46_Y, XOR2_29_Y, XOR2_31_Y, XOR2_62_Y, XOR2_52_Y,
        AND3_1_Y, XOR2_43_Y, XNOR2_1_Y, XNOR2_16_Y, XNOR2_20_Y,
        XNOR2_18_Y, XNOR2_0_Y, XNOR2_5_Y, XNOR2_14_Y, XNOR2_7_Y,
        AND3_3_Y, AND2_32_Y, AND3_2_Y, AND3_8_Y, XNOR2_21_Y,
        XNOR2_10_Y, XNOR2_6_Y, XNOR2_12_Y, XNOR2_13_Y, XNOR2_23_Y,
        XNOR2_9_Y, XNOR2_17_Y, XNOR2_19_Y, AND3_7_Y, AND2_73_Y,
        AND3_5_Y, VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign \AFVALCONST[0]  = GND_power_net1;
    assign GND = GND_power_net1;
    assign \RBINSYNCSHIFT[0]  = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign \AFVALCONST[8]  = VCC_power_net1;

    INV INV_0 (.A(\RBINSYNCSHIFT[5] ), .Y(INV_0_Y));
    NOR3 NOR3_0 (.A(OA1A_0_Y), .B(AND2A_0_Y), .C(OA1C_0_Y), .Y(
        NOR3_0_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[27]  (.D(\QXI[27] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[27]));
    AND2 AND2_2 (.A(AND2_19_Y), .B(XOR2_13_Y), .Y(AND2_2_Y));
    AND3 AND3_6 (.A(AND3_0_Y), .B(XNOR2_22_Y), .C(XNOR2_4_Y), .Y(
        AND3_6_Y));
    AND2 AND2_20 (.A(XOR2_57_Y), .B(XOR2_3_Y), .Y(AND2_20_Y));
    XNOR2 XNOR2_13 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[5] ), .Y(
        XNOR2_13_Y));
    AO1 AO1_11 (.A(AND2_4_Y), .B(NAND3A_4_Y), .C(NOR3_0_Y), .Y(
        AO1_11_Y));
    AND2 AND2_11 (.A(XOR2_15_Y), .B(XOR2_70_Y), .Y(AND2_11_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_54_Y), .B(AO1_1_Y), .Y(
        \WBINNXTSHIFT[2] ));
    AND2 AND2_22 (.A(AND2_31_Y), .B(XOR2_0_Y), .Y(AND2_22_Y));
    XNOR2 XNOR2_9 (.A(\RBINNXTSHIFT[5] ), .B(\MEM_WADDR[7] ), .Y(
        XNOR2_9_Y));
    AND2 AND2_71 (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE), .Y(AND2_71_Y));
    XOR2 XOR2_19 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(XOR2_19_Y));
    AND2 AND2_44 (.A(AND2_59_Y), .B(AND2_38_Y), .Y(AND2_44_Y));
    AO1 AO1_31 (.A(AND2_38_Y), .B(AO1_25_Y), .C(AO1_3_Y), .Y(AO1_31_Y));
    XOR2 XOR2_23 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(XOR2_23_Y));
    XOR2 XOR2_1 (.A(\MEM_WADDR[9] ), .B(GND), .Y(XOR2_1_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[29]  (.D(\QXI[29] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[29]));
    INV INV_1 (.A(\RBINSYNCSHIFT[4] ), .Y(INV_1_Y));
    XOR2 XOR2_47 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_47_Y));
    XOR2 XOR2_38 (.A(\WBINNXTSHIFT[6] ), .B(INV_7_Y), .Y(XOR2_38_Y));
    DFN1C0 DFN1C0_cam0_fifo_overflow (.D(AND2_52_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_overflow));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE),
        .Y(\RBINNXTSHIFT[0] ));
    AO1C AO1C_1 (.A(\AFVALCONST[0] ), .B(\WDIFF[4] ), .C(
        \AFVALCONST[0] ), .Y(AO1C_1_Y));
    AO1 AO1_7 (.A(XOR2_64_Y), .B(AND2_57_Y), .C(AND2_10_Y), .Y(AO1_7_Y)
        );
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_39_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[6] ));
    AND2 AND2_18 (.A(AND2_42_Y), .B(AND2_27_Y), .Y(AND2_18_Y));
    AND2 AND2_15 (.A(\WBINNXTSHIFT[7] ), .B(INV_8_Y), .Y(AND2_15_Y));
    INV INV_7 (.A(\RBINSYNCSHIFT[6] ), .Y(INV_7_Y));
    AO1 AO1_25 (.A(AND2_43_Y), .B(AO1_16_Y), .C(AO1_5_Y), .Y(AO1_25_Y));
    AND2 AND2_75 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(AND2_75_Y));
    XOR2 XOR2_45 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_45_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[25]  (.D(\QXI[25] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[25]));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[11]  (.D(\QXI[11] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[11]));
    AND2 AND2_1 (.A(\MEM_WADDR[10] ), .B(GND), .Y(AND2_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[0] ));
    XNOR2 XNOR2_21 (.A(\RBINNXTSHIFT[8] ), .B(\MEM_WADDR[10] ), .Y(
        XNOR2_21_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[3] ));
    AND2 AND2_49 (.A(AND2_17_Y), .B(XOR2_15_Y), .Y(AND2_49_Y));
    AO1 AO1_8 (.A(XOR2_53_Y), .B(AND2_61_Y), .C(AND2_13_Y), .Y(AO1_8_Y)
        );
    AND2 AND2_10 (.A(\MEM_WADDR[5] ), .B(GND), .Y(AND2_10_Y));
    AND2 AND2_7 (.A(INV_2_Y), .B(INV_5_Y), .Y(AND2_7_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[16]  (.D(\QXI[16] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[16]));
    XOR2 XOR2_20 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(XOR2_20_Y));
    XOR2 XOR2_63 (.A(\RBINSYNCSHIFT[2] ), .B(MEMORYRE), .Y(XOR2_63_Y));
    AND2 AND2_70 (.A(XOR2_33_Y), .B(XOR2_78_Y), .Y(AND2_70_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[31]  (.D(\QXI[31] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[31]));
    AND2A AND2A_1 (.A(cam0_fifo_empty), .B(cam0_fifo_read_enable), .Y(
        AND2A_1_Y));
    AND2 AND2_12 (.A(AND2_50_Y), .B(AND2_6_Y), .Y(AND2_12_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_28_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[5] ));
    AO1 AO1_42 (.A(XOR2_3_Y), .B(AND2_0_Y), .C(AND2_36_Y), .Y(AO1_42_Y)
        );
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[22]  (.D(\QXI[22] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[22]));
    XOR2 XOR2_52 (.A(\WBINNXTSHIFT[10] ), .B(INV_9_Y), .Y(XOR2_52_Y));
    AND2 AND2_72 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(AND2_72_Y));
    AND2 AND2_61 (.A(\MEM_WADDR[6] ), .B(GND), .Y(AND2_61_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[4] ));
    AO1 AO1_15 (.A(XOR2_78_Y), .B(AND2_15_Y), .C(AND2_72_Y), .Y(
        AO1_15_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_48_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[7] ));
    AND2 AND2_EMPTYINT (.A(AND3_8_Y), .B(XNOR2_21_Y), .Y(EMPTYINT));
    XOR2 XOR2_24 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_24_Y));
    AND2 AND2_57 (.A(\MEM_WADDR[4] ), .B(GND), .Y(AND2_57_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[24]  (.D(\QXI[24] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[24]));
    XOR2 XOR2_21 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_21_Y));
    NOR3A NOR3A_2 (.A(OR2A_0_Y), .B(AO1C_2_Y), .C(\WDIFF[6] ), .Y(
        NOR3A_2_Y));
    AO1 AO1_35 (.A(XOR2_33_Y), .B(AO1_31_Y), .C(AND2_15_Y), .Y(
        AO1_35_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[9]  (.D(\QXI[9] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[9]));
    XOR2 \XOR2_WBINNXTSHIFT[9]  (.A(XOR2_1_Y), .B(AO1_30_Y), .Y(
        \WBINNXTSHIFT[9] ));
    XOR2 \XOR2_WDIFF[5]  (.A(XOR2_40_Y), .B(AO1_25_Y), .Y(\WDIFF[5] ));
    AND2 AND2_46 (.A(AND2_38_Y), .B(AND2_70_Y), .Y(AND2_46_Y));
    XOR2 \XOR2_RBINNXTSHIFT[8]  (.A(XOR2_71_Y), .B(AO1_10_Y), .Y(
        \RBINNXTSHIFT[8] ));
    XOR2 XOR2_16 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_16_Y));
    XOR2 XOR2_60 (.A(\RBINNXTSHIFT[8] ), .B(GND), .Y(XOR2_60_Y));
    AND2 AND2_68 (.A(AND2_37_Y), .B(XOR2_57_Y), .Y(AND2_68_Y));
    AND2 AND2_65 (.A(XOR2_68_Y), .B(XOR2_64_Y), .Y(AND2_65_Y));
    AND2 AND2_43 (.A(XOR2_5_Y), .B(XOR2_49_Y), .Y(AND2_43_Y));
    AO1 AO1_24 (.A(XOR2_66_Y), .B(AO1_9_Y), .C(AND2_1_Y), .Y(AO1_24_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[2]  (.D(\RBINNXTSHIFT[0] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[2] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[2]  (.D(\QXI[2] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[2]));
    DFN1P0 DFN1P0_cam0_fifo_empty (.D(EMPTYINT), .CLK(clk), .PRE(
        READ_RESET_P), .Q(cam0_fifo_empty));
    AND3 AND3_3 (.A(XNOR2_1_Y), .B(XNOR2_16_Y), .C(XNOR2_20_Y), .Y(
        AND3_3_Y));
    INV INV_5 (.A(NOR2A_0_Y), .Y(INV_5_Y));
    OR2 OR2_0 (.A(AOI1_0_Y), .B(cam0_fifo_full), .Y(OR2_0_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_6 (.A(AND2_65_Y), .B(AND2_64_Y), .Y(AND2_6_Y));
    XOR2 XOR2_64 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_64_Y));
    AND3 AND3_0 (.A(XNOR2_11_Y), .B(XNOR2_3_Y), .C(XNOR2_15_Y), .Y(
        AND3_0_Y));
    AND2 AND2_60 (.A(AND2_69_Y), .B(XOR2_5_Y), .Y(AND2_60_Y));
    XOR2 XOR2_61 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_61_Y));
    OR2A OR2A_4 (.A(\WDIFF[2] ), .B(\AFVALCONST[0] ), .Y(OR2A_4_Y));
    XOR2 XOR2_57 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(XOR2_57_Y));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_45_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[2] ));
    AND2 AND2_62 (.A(AND2_33_Y), .B(XOR2_12_Y), .Y(AND2_62_Y));
    XOR2 XOR2_33 (.A(\WBINNXTSHIFT[7] ), .B(INV_8_Y), .Y(XOR2_33_Y));
    INV INV_3 (.A(\RBINSYNCSHIFT[8] ), .Y(INV_3_Y));
    XNOR2 XNOR2_2 (.A(\WDIFF[9] ), .B(\AFVALCONST[8] ), .Y(XNOR2_2_Y));
    XOR2 \XOR2_WBINNXTSHIFT[8]  (.A(XOR2_24_Y), .B(AO1_28_Y), .Y(
        \WBINNXTSHIFT[8] ));
    XNOR2 XNOR2_19 (.A(\RBINNXTSHIFT[7] ), .B(\MEM_WADDR[9] ), .Y(
        XNOR2_19_Y));
    XOR2 XOR2_49 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(XOR2_49_Y));
    AO1 AO1_14 (.A(AND2_40_Y), .B(AO1_2_Y), .C(AO1_34_Y), .Y(AO1_14_Y));
    XOR2 XOR2_4 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(XOR2_4_Y));
    XOR2 \XOR2_WDIFF[0]  (.A(\WBINNXTSHIFT[0] ), .B(\RBINSYNCSHIFT[0] )
        , .Y(\WDIFF[0] ));
    AND3 AND3_1 (.A(AND2_32_Y), .B(AND3_3_Y), .C(AND3_2_Y), .Y(
        AND3_1_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[20]  (.D(\QXI[20] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[20]));
    XOR2 XOR2_55 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(XOR2_55_Y));
    AND2 AND2_24 (.A(AND2_28_Y), .B(XOR2_66_Y), .Y(AND2_24_Y));
    XOR2 XOR2_72 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_72_Y));
    AO1 AO1_40 (.A(XOR2_57_Y), .B(AO1_39_Y), .C(AND2_0_Y), .Y(AO1_40_Y)
        );
    XNOR2 XNOR2_0 (.A(\RBINSYNCSHIFT[6] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_0_Y));
    OR2A OR2A_3 (.A(\AFVALCONST[0] ), .B(\WDIFF[2] ), .Y(OR2A_3_Y));
    AND2 AND2_31 (.A(AND2_50_Y), .B(AND2_65_Y), .Y(AND2_31_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[10]  (.D(\WBINNXTSHIFT[10] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[10] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[13]  (.D(\QXI[13] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[13]));
    AO1 AO1_34 (.A(XOR2_74_Y), .B(AND2_34_Y), .C(AND2_55_Y), .Y(
        AO1_34_Y));
    XOR2 XOR2_18 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_18_Y));
    XNOR2 XNOR2_25 (.A(\WDIFF[10] ), .B(\AFVALCONST[0] ), .Y(
        XNOR2_25_Y));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_35_Y), .B(AO1_38_Y), .Y(
        \RBINNXTSHIFT[4] ));
    RAM4K9 \RAM4K9_QXI[29]  (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND),
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(GND), .ADDRB7(
        \RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), .ADDRB5(
        \RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), .ADDRB3(
        \RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), .ADDRB1(
        \RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), .DINA8(GND),
        .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND), .DINA3(GND)
        , .DINA2(GND), .DINA1(cam0_fifo_write_data[5]), .DINA0(
        cam0_fifo_write_data[4]), .DINB8(GND), .DINB7(GND), .DINB6(GND)
        , .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(
        GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), .WIDTHB0(VCC),
        .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), .WMODEA(GND), .WMODEB(
        GND), .BLKA(MEMWENEG), .BLKB(MEMRENEG), .WENA(GND), .WENB(VCC),
        .CLKA(clk), .CLKB(clk), .RESET(READ_RESET_P), .DOUTA8(),
        .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(
        ), .DOUTA1(\RAM4K9_QXI[29]_DOUTA1 ), .DOUTA0(
        \RAM4K9_QXI[29]_DOUTA0 ), .DOUTB8(), .DOUTB7(\QXI[29] ),
        .DOUTB6(\QXI[28] ), .DOUTB5(\QXI[21] ), .DOUTB4(\QXI[20] ),
        .DOUTB3(\QXI[13] ), .DOUTB2(\QXI[12] ), .DOUTB1(\QXI[5] ),
        .DOUTB0(\QXI[4] ));
    DFN1C0 \DFN1C0_MEM_WADDR[8]  (.D(\WBINNXTSHIFT[8] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[8] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_21_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[1] ));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_59_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[3] ));
    XOR2 XOR2_8 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(XOR2_8_Y));
    NAND3A NAND3A_0 (.A(\WDIFF[4] ), .B(\AFVALCONST[0] ), .C(OR2A_2_Y),
        .Y(NAND3A_0_Y));
    XOR2 XOR2_30 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_30_Y));
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_76_Y), .B(AO1_39_Y), .Y(
        \RBINNXTSHIFT[6] ));
    OR2A OR2A_2 (.A(\WDIFF[5] ), .B(\AFVALCONST[0] ), .Y(OR2A_2_Y));
    AND2 AND2_38 (.A(XOR2_19_Y), .B(XOR2_38_Y), .Y(AND2_38_Y));
    AND2 AND2_35 (.A(AND2_44_Y), .B(XOR2_33_Y), .Y(AND2_35_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[7] ));
    AND2 AND2_29 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_29_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[3]  (.D(\RBINNXTSHIFT[1] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[3] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[18]  (.D(\QXI[18] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[18]));
    XOR2 XOR2_34 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(XOR2_34_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[6]  (.D(\RBINNXTSHIFT[4] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[6] ));
    XOR2 XOR2_31 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(XOR2_31_Y));
    AND2 AND2_3 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(AND2_3_Y));
    AND2 AND2_30 (.A(\WBINNXTSHIFT[3] ), .B(INV_4_Y), .Y(AND2_30_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_72_Y), .B(AO1_41_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XNOR2 XNOR2_6 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_6_Y));
    INV RESETBUBBLE (.A(reset), .Y(READ_RESET_P));
    AND2 AND2_14 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(AND2_14_Y));
    OA1C OA1C_0 (.A(\AFVALCONST[8] ), .B(\WDIFF[9] ), .C(
        \AFVALCONST[0] ), .Y(OA1C_0_Y));
    INV INV_4 (.A(\RBINSYNCSHIFT[3] ), .Y(INV_4_Y));
    XOR2 XOR2_77 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_77_Y));
    AND2 AND2_74 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(AND2_74_Y));
    AND2 AND2_32 (.A(XNOR2_14_Y), .B(XNOR2_7_Y), .Y(AND2_32_Y));
    OR2A OR2A_1 (.A(\AFVALCONST[8] ), .B(\WDIFF[8] ), .Y(OR2A_1_Y));
    XOR2 \XOR2_WBINNXTSHIFT[6]  (.A(XOR2_41_Y), .B(AO1_33_Y), .Y(
        \WBINNXTSHIFT[6] ));
    AND3 AND3_8 (.A(AND2_73_Y), .B(AND3_7_Y), .C(AND3_5_Y), .Y(
        AND3_8_Y));
    NAND3A NAND3A_2 (.A(NOR3A_0_Y), .B(OR2A_5_Y), .C(NAND3A_0_Y), .Y(
        NAND3A_2_Y));
    XOR2 XOR2_46 (.A(\WBINNXTSHIFT[6] ), .B(INV_7_Y), .Y(XOR2_46_Y));
    XNOR2 XNOR2_11 (.A(\AFVALCONST[0] ), .B(\WDIFF[6] ), .Y(XNOR2_11_Y)
        );
    AO1 AO1_2 (.A(AND2_46_Y), .B(AO1_25_Y), .C(AO1_37_Y), .Y(AO1_2_Y));
    DFN1C0 \DFN1C0_WGRY[0]  (.D(XOR2_32_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[0] ));
    XOR2 XOR2_75 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(XOR2_75_Y));
    AND2 AND2_26 (.A(\WBINNXTSHIFT[6] ), .B(INV_7_Y), .Y(AND2_26_Y));
    XOR2 XOR2_9 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_9_Y));
    AND3 AND3_5 (.A(XNOR2_13_Y), .B(XNOR2_23_Y), .C(XNOR2_9_Y), .Y(
        AND3_5_Y));
    XOR2 \XOR2_WDIFF[2]  (.A(XOR2_22_Y), .B(OR3_0_Y), .Y(\WDIFF[2] ));
    XOR2 XOR2_59 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_59_Y));
    AND2 AND2_23 (.A(AND2_33_Y), .B(AND2_40_Y), .Y(AND2_23_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[9]  (.D(\WBINNXTSHIFT[9] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[9] ));
    XNOR2 XNOR2_4 (.A(\AFVALCONST[0] ), .B(\WDIFF[10] ), .Y(XNOR2_4_Y));
    DFN1C0 \DFN1C0_RGRY[8]  (.D(XOR2_60_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[8] ));
    XOR2 XOR2_5 (.A(\WBINNXTSHIFT[3] ), .B(INV_4_Y), .Y(XOR2_5_Y));
    XNOR2 XNOR2_20 (.A(\RBINSYNCSHIFT[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_20_Y));
    DFN1C0 DFN1C0_cam0_fifo_data_valid (.D(DVLDI), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_data_valid));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[7]  (.D(\QXI[7] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[7]));
    AO1 AO1_28 (.A(AND2_6_Y), .B(AO1_41_Y), .C(AO1_29_Y), .Y(AO1_28_Y));
    AND2 AND2_19 (.A(AND2_18_Y), .B(AND2_63_Y), .Y(AND2_19_Y));
    XOR2 XOR2_22 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_22_Y));
    AO1 AO1_1 (.A(XOR2_30_Y), .B(AND2_29_Y), .C(AND2_51_Y), .Y(AO1_1_Y)
        );
    XOR2 XOR2_13 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(XOR2_13_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[6]  (.D(\QXI[6] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[6]));
    INV INV_6 (.A(\RBINSYNCSHIFT[9] ), .Y(INV_6_Y));
    XNOR2 XNOR2_18 (.A(\RBINSYNCSHIFT[5] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_18_Y));
    AND2 AND2_51 (.A(\MEM_WADDR[1] ), .B(GND), .Y(AND2_51_Y));
    AO1 AO1_3 (.A(XOR2_38_Y), .B(AND2_75_Y), .C(AND2_26_Y), .Y(AO1_3_Y)
        );
    AND2 AND2_64 (.A(XOR2_0_Y), .B(XOR2_53_Y), .Y(AND2_64_Y));
    AND2 AND2_47 (.A(\WBINNXTSHIFT[1] ), .B(INV_5_Y), .Y(AND2_47_Y));
    AO1 AO1_18 (.A(XOR2_15_Y), .B(AO1_1_Y), .C(AND2_9_Y), .Y(AO1_18_Y));
    XOR2 XOR2_48 (.A(\WBINNXTSHIFT[7] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_48_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_37_Y), .B(AO1_0_Y), .Y(
        \RBINNXTSHIFT[3] ));
    AO1C AO1C_0 (.A(\AFVALCONST[0] ), .B(\WDIFF[1] ), .C(
        \AFVALCONST[0] ), .Y(AO1C_0_Y));
    AND2 AND2_16 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(AND2_16_Y));
    XOR2 \XOR2_WDIFF[3]  (.A(XOR2_26_Y), .B(AO1_16_Y), .Y(\WDIFF[3] ));
    AND2 AND2_76 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(AND2_76_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[5]  (.D(\QXI[5] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[5]));
    OR2A OR2A_5 (.A(\AFVALCONST[0] ), .B(\WDIFF[5] ), .Y(OR2A_5_Y));
    AO1 AO1_38 (.A(AND2_27_Y), .B(AO1_19_Y), .C(AO1_36_Y), .Y(AO1_38_Y)
        );
    DFN1C0 \DFN1C0_WGRY[9]  (.D(XOR2_14_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[9] ));
    XOR2 XOR2_62 (.A(\WBINNXTSHIFT[9] ), .B(INV_6_Y), .Y(XOR2_62_Y));
    AND2 AND2_13 (.A(\MEM_WADDR[7] ), .B(GND), .Y(AND2_13_Y));
    AND2 AND2_73 (.A(XNOR2_17_Y), .B(XNOR2_19_Y), .Y(AND2_73_Y));
    XOR2 XOR2_10 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_10_Y));
    XNOR2 XNOR2_1 (.A(\RBINSYNCSHIFT[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_1_Y));
    AND2 AND2_58 (.A(\MEM_WADDR[9] ), .B(GND), .Y(AND2_58_Y));
    AND2 AND2_55 (.A(\WBINNXTSHIFT[10] ), .B(INV_9_Y), .Y(AND2_55_Y));
    INV INV_8 (.A(\RBINSYNCSHIFT[7] ), .Y(INV_8_Y));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_69_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[4] ));
    AND2 AND2_69 (.A(XOR2_8_Y), .B(XOR2_9_Y), .Y(AND2_69_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[2] ));
    XOR2 XOR2_27 (.A(\WBINNXTSHIFT[1] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XOR2_27_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(cam0_fifo_read_enable), .Y(
        MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_10_Y), .B(AO1_18_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(XOR2_7_Y));
    AND2 AND2_5 (.A(\MEM_WADDR[3] ), .B(GND), .Y(AND2_5_Y));
    XOR2 XOR2_56 (.A(\RBINSYNCSHIFT[7] ), .B(GND), .Y(XOR2_56_Y));
    XOR2 XOR2_14 (.A(\WBINNXTSHIFT[9] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XOR2_14_Y));
    AND2 AND2_50 (.A(AND2_17_Y), .B(AND2_11_Y), .Y(AND2_50_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[9]  (.D(\RBINNXTSHIFT[7] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[9] ));
    XNOR2 XNOR2_3 (.A(\AFVALCONST[0] ), .B(\WDIFF[7] ), .Y(XNOR2_3_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[7]  (.D(\RBINNXTSHIFT[5] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[7] ));
    XOR2 XOR2_11 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_11_Y));
    XNOR2 XNOR2_22 (.A(\AFVALCONST[8] ), .B(\WDIFF[9] ), .Y(XNOR2_22_Y)
        );
    NAND3A NAND3A_3 (.A(NOR3A_1_Y), .B(OR2A_3_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_3_Y));
    AND2 AND2_52 (.A(cam0_fifo_write_enable), .B(cam0_fifo_full), .Y(
        AND2_52_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[21]  (.D(\QXI[21] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[21]));
    XOR2 XOR2_25 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_25_Y));
    XNOR2 XNOR2_15 (.A(\AFVALCONST[8] ), .B(\WDIFF[8] ), .Y(XNOR2_15_Y)
        );
    AO1 AO1_22 (.A(AND3_4_Y), .B(NAND3A_3_Y), .C(NAND3A_2_Y), .Y(
        AO1_22_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[26]  (.D(\QXI[26] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[26]));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[1]  (.D(\QXI[1] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[1]));
    AND2 AND2_34 (.A(\WBINNXTSHIFT[9] ), .B(INV_6_Y), .Y(AND2_34_Y));
    AO1 AO1_41 (.A(AND2_11_Y), .B(AO1_1_Y), .C(AO1_26_Y), .Y(AO1_41_Y));
    AND2 AND2_66 (.A(\MEM_WADDR[8] ), .B(GND), .Y(AND2_66_Y));
    AO1 AO1_6 (.A(XOR2_13_Y), .B(AO1_10_Y), .C(AND2_25_Y), .Y(AO1_6_Y));
    XOR2 XOR2_67 (.A(\MEM_WADDR[10] ), .B(GND), .Y(XOR2_67_Y));
    AND2 AND2_63 (.A(AND2_8_Y), .B(AND2_20_Y), .Y(AND2_63_Y));
    AND3 AND3_2 (.A(XNOR2_18_Y), .B(XNOR2_0_Y), .C(XNOR2_5_Y), .Y(
        AND3_2_Y));
    XNOR2 XNOR2_26 (.A(\WDIFF[3] ), .B(\AFVALCONST[0] ), .Y(XNOR2_26_Y)
        );
    AO1 AO1_12 (.A(XOR2_23_Y), .B(AND2_3_Y), .C(AND2_14_Y), .Y(
        AO1_12_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[17]  (.D(\QXI[17] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[17]));
    NOR3A NOR3A_1 (.A(OR2A_4_Y), .B(AO1C_0_Y), .C(\WDIFF[0] ), .Y(
        NOR3A_1_Y));
    XOR2 XOR2_32 (.A(\WBINNXTSHIFT[0] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XOR2_32_Y));
    OR3 OR3_0 (.A(AND2_54_Y), .B(AND2_47_Y), .C(AND2_7_Y), .Y(OR3_0_Y));
    AND2 AND2_9 (.A(\MEM_WADDR[2] ), .B(GND), .Y(AND2_9_Y));
    XOR2 XOR2_65 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_65_Y));
    NOR3A NOR3A_0 (.A(OR2A_2_Y), .B(AO1C_1_Y), .C(\WDIFF[3] ), .Y(
        NOR3A_0_Y));
    XOR2 XOR2_58 (.A(\WBINNXTSHIFT[4] ), .B(INV_1_Y), .Y(XOR2_58_Y));
    AO1 AO1_32 (.A(XOR2_5_Y), .B(AO1_16_Y), .C(AND2_30_Y), .Y(AO1_32_Y)
        );
    XOR2 XOR2_43 (.A(\RBINSYNCSHIFT[10] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XOR2_43_Y));
    INV INV_2 (.A(\RBINSYNCSHIFT[0] ), .Y(INV_2_Y));
    AO1 AO1_9 (.A(AND2_67_Y), .B(AO1_28_Y), .C(AO1_21_Y), .Y(AO1_9_Y));
    AND2 AND2_39 (.A(\RBINSYNCSHIFT[3] ), .B(GND), .Y(AND2_39_Y));
    NAND2 NAND2_0 (.A(cam0_fifo_full), .B(VCC), .Y(NAND2_0_Y));
    NAND3A NAND3A_1 (.A(\WDIFF[1] ), .B(\AFVALCONST[0] ), .C(OR2A_4_Y),
        .Y(NAND3A_1_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[19]  (.D(\QXI[19] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[19]));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_61_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[6] ));
    XOR2 XOR2_76 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(XOR2_76_Y));
    RAM4K9 \RAM4K9_QXI[27]  (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND),
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(GND), .ADDRB7(
        \RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), .ADDRB5(
        \RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), .ADDRB3(
        \RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), .ADDRB1(
        \RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), .DINA8(GND),
        .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND), .DINA3(GND)
        , .DINA2(GND), .DINA1(cam0_fifo_write_data[3]), .DINA0(
        cam0_fifo_write_data[2]), .DINB8(GND), .DINB7(GND), .DINB6(GND)
        , .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(
        GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), .WIDTHB0(VCC),
        .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), .WMODEA(GND), .WMODEB(
        GND), .BLKA(MEMWENEG), .BLKB(MEMRENEG), .WENA(GND), .WENB(VCC),
        .CLKA(clk), .CLKB(clk), .RESET(READ_RESET_P), .DOUTA8(),
        .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(
        ), .DOUTA1(\RAM4K9_QXI[27]_DOUTA1 ), .DOUTA0(
        \RAM4K9_QXI[27]_DOUTA0 ), .DOUTB8(), .DOUTB7(\QXI[27] ),
        .DOUTB6(\QXI[26] ), .DOUTB5(\QXI[19] ), .DOUTB4(\QXI[18] ),
        .DOUTB3(\QXI[11] ), .DOUTB2(\QXI[10] ), .DOUTB1(\QXI[3] ),
        .DOUTB0(\QXI[2] ));
    AND2 AND2_27 (.A(XOR2_6_Y), .B(XOR2_2_Y), .Y(AND2_27_Y));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_1_Y), .CLK(clk), .CLR(READ_RESET_P),
        .Q(DVLDI));
    XNOR2 XNOR2_10 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_10_Y));
    AND2 AND2_MEMORYWE (.A(NAND2_0_Y), .B(cam0_fifo_write_enable), .Y(
        MEMORYWE));
    AO1 AO1_20 (.A(AND2_20_Y), .B(AO1_12_Y), .C(AO1_42_Y), .Y(AO1_20_Y)
        );
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_16_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[2] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[15]  (.D(\QXI[15] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[15]));
    AO1 AO1_0 (.A(XOR2_6_Y), .B(AO1_19_Y), .C(AND2_16_Y), .Y(AO1_0_Y));
    RAM4K9 \RAM4K9_QXI[31]  (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND),
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(GND), .ADDRB7(
        \RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), .ADDRB5(
        \RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), .ADDRB3(
        \RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), .ADDRB1(
        \RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), .DINA8(GND),
        .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND), .DINA3(GND)
        , .DINA2(GND), .DINA1(cam0_fifo_write_data[7]), .DINA0(
        cam0_fifo_write_data[6]), .DINB8(GND), .DINB7(GND), .DINB6(GND)
        , .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(
        GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), .WIDTHB0(VCC),
        .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), .WMODEA(GND), .WMODEB(
        GND), .BLKA(MEMWENEG), .BLKB(MEMRENEG), .WENA(GND), .WENB(VCC),
        .CLKA(clk), .CLKB(clk), .RESET(READ_RESET_P), .DOUTA8(),
        .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(
        ), .DOUTA1(\RAM4K9_QXI[31]_DOUTA1 ), .DOUTA0(
        \RAM4K9_QXI[31]_DOUTA0 ), .DOUTB8(), .DOUTB7(\QXI[31] ),
        .DOUTB6(\QXI[30] ), .DOUTB5(\QXI[23] ), .DOUTB4(\QXI[22] ),
        .DOUTB3(\QXI[15] ), .DOUTB2(\QXI[14] ), .DOUTB1(\QXI[7] ),
        .DOUTB0(\QXI[6] ));
    XOR2 XOR2_29 (.A(\WBINNXTSHIFT[7] ), .B(INV_8_Y), .Y(XOR2_29_Y));
    XOR2 XOR2_40 (.A(\WBINNXTSHIFT[5] ), .B(INV_0_Y), .Y(XOR2_40_Y));
    XOR2 \XOR2_WDIFF[10]  (.A(XOR2_52_Y), .B(AO1_4_Y), .Y(\WDIFF[10] ));
    XOR2 XOR2_2 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(XOR2_2_Y));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_73_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[5] ));
    XOR2 XOR2_37 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(XOR2_37_Y));
    AND2A AND2A_0 (.A(\AFVALCONST[0] ), .B(\WDIFF[10] ), .Y(AND2A_0_Y));
    AND2 AND2_36 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(AND2_36_Y));
    XNOR2 \XNOR2_WDIFF[1]  (.A(XOR2_34_Y), .B(NOR2A_0_Y), .Y(
        \WDIFF[1] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[23]  (.D(\QXI[23] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[23]));
    AO1 AO1_26 (.A(XOR2_70_Y), .B(AND2_9_Y), .C(AND2_5_Y), .Y(AO1_26_Y)
        );
    DFN1C0 \DFN1C0_WGRY[10]  (.D(XOR2_42_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[10] ));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[8]  (.D(\RBINNXTSHIFT[6] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[8] ));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_17_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[7] ));
    OA1A OA1A_0 (.A(\AFVALCONST[8] ), .B(\WDIFF[9] ), .C(\WDIFF[10] ),
        .Y(OA1A_0_Y));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_56_Y), .B(AO1_23_Y), .Y(
        \RBINNXTSHIFT[5] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[12]  (.D(\QXI[12] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[12]));
    AO1 AO1_23 (.A(XOR2_7_Y), .B(AO1_38_Y), .C(AND2_3_Y), .Y(AO1_23_Y));
    AOI1 AOI1_0 (.A(AND3_6_Y), .B(AO1_22_Y), .C(AO1_11_Y), .Y(AOI1_0_Y)
        );
    AND2 AND2_33 (.A(AND2_59_Y), .B(AND2_46_Y), .Y(AND2_33_Y));
    XOR2 XOR2_44 (.A(\MEM_WADDR[9] ), .B(GND), .Y(XOR2_44_Y));
    AO1 AO1_10 (.A(AND2_63_Y), .B(AO1_38_Y), .C(AO1_20_Y), .Y(AO1_10_Y)
        );
    XOR2 XOR2_41 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\RBINSYNCSHIFT[6] ), .B(GND), .Y(XOR2_35_Y));
    XNOR2 XNOR2_24 (.A(\WDIFF[4] ), .B(\AFVALCONST[0] ), .Y(XNOR2_24_Y)
        );
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[14]  (.D(\QXI[14] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[14]));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[10]  (.D(\RBINNXTSHIFT[8] ), .CLK(clk)
        , .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[10] ));
    DFN1C0 \DFN1C0_WGRY[1]  (.D(XOR2_27_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[1] ));
    XOR2 XOR2_78 (.A(\WBINNXTSHIFT[8] ), .B(INV_3_Y), .Y(XOR2_78_Y));
    AO1 AO1_30 (.A(XOR2_18_Y), .B(AO1_28_Y), .C(AND2_66_Y), .Y(
        AO1_30_Y));
    AND2 AND2_41 (.A(AND2_59_Y), .B(XOR2_19_Y), .Y(AND2_41_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_20_Y), .B(AO1_40_Y), .Y(
        \RBINNXTSHIFT[7] ));
    AND2 AND2_0 (.A(\RBINSYNCSHIFT[8] ), .B(GND), .Y(AND2_0_Y));
    XOR2 XOR2_69 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_69_Y));
    AO1 AO1_16 (.A(XOR2_9_Y), .B(OR3_0_Y), .C(AND2_76_Y), .Y(AO1_16_Y));
    AND2 AND2_17 (.A(XOR2_36_Y), .B(XOR2_30_Y), .Y(AND2_17_Y));
    NOR2A NOR2A_0 (.A(\RBINSYNCSHIFT[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        NOR2A_0_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[28]  (.D(\QXI[28] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[28]));
    AO1 AO1_29 (.A(AND2_64_Y), .B(AO1_7_Y), .C(AO1_8_Y), .Y(AO1_29_Y));
    XOR2 XOR2_6 (.A(\RBINSYNCSHIFT[4] ), .B(GND), .Y(XOR2_6_Y));
    AND2 AND2_54 (.A(\WBINNXTSHIFT[1] ), .B(INV_2_Y), .Y(AND2_54_Y));
    AO1 AO1_13 (.A(XOR2_68_Y), .B(AO1_41_Y), .C(AND2_57_Y), .Y(
        AO1_13_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[6] ));
    XOR2 \XOR2_WBINNXTSHIFT[5]  (.A(XOR2_77_Y), .B(AO1_13_Y), .Y(
        \WBINNXTSHIFT[5] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[8]  (.D(\QXI[8] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[8]));
    XOR2 \XOR2_WDIFF[7]  (.A(XOR2_29_Y), .B(AO1_31_Y), .Y(\WDIFF[7] ));
    AO1 AO1_36 (.A(XOR2_2_Y), .B(AND2_16_Y), .C(AND2_53_Y), .Y(
        AO1_36_Y));
    XOR2 XOR2_53 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_53_Y));
    XNOR2 XNOR2_23 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[6] ), .Y(
        XNOR2_23_Y));
    AO1 AO1_33 (.A(AND2_65_Y), .B(AO1_41_Y), .C(AO1_7_Y), .Y(AO1_33_Y));
    XOR2 \XOR2_WBINNXTSHIFT[10]  (.A(XOR2_67_Y), .B(AO1_9_Y), .Y(
        \WBINNXTSHIFT[10] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[4]  (.D(\QXI[4] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[4]));
    OR2A OR2A_0 (.A(\WDIFF[8] ), .B(\AFVALCONST[8] ), .Y(OR2A_0_Y));
    XNOR2 XNOR2_12 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\RBINSYNCSHIFT[9] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XNOR2_7_Y));
    XOR2 XOR2_12 (.A(\WBINNXTSHIFT[9] ), .B(INV_6_Y), .Y(XOR2_12_Y));
    AND2 AND2_48 (.A(AND2_18_Y), .B(XOR2_7_Y), .Y(AND2_48_Y));
    AND2 AND2_45 (.A(AND2_50_Y), .B(XOR2_68_Y), .Y(AND2_45_Y));
    AO1 AO1_19 (.A(XOR2_4_Y), .B(AND2_71_Y), .C(AND2_39_Y), .Y(
        AO1_19_Y));
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_65_Y), .B(AO1_17_Y), .Y(
        \WBINNXTSHIFT[7] ));
    XOR2 XOR2_26 (.A(\WBINNXTSHIFT[3] ), .B(INV_4_Y), .Y(XOR2_26_Y));
    DFN1C0 DFN1C0_cam0_fifo_afull (.D(OR2_0_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_afull));
    AND2 AND2_59 (.A(AND2_69_Y), .B(AND2_43_Y), .Y(AND2_59_Y));
    AND2 AND2_4 (.A(XNOR2_2_Y), .B(XNOR2_25_Y), .Y(AND2_4_Y));
    AND2 AND2_FULLINT (.A(AND3_1_Y), .B(XOR2_43_Y), .Y(FULLINT));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[10]  (.D(\QXI[10] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[10]));
    AO1 AO1_39 (.A(AND2_8_Y), .B(AO1_38_Y), .C(AO1_12_Y), .Y(AO1_39_Y));
    AND2 AND2_40 (.A(XOR2_12_Y), .B(XOR2_74_Y), .Y(AND2_40_Y));
    XOR2 \XOR2_WDIFF[6]  (.A(XOR2_46_Y), .B(AO1_27_Y), .Y(\WDIFF[6] ));
    XOR2 XOR2_50 (.A(\WBINNXTSHIFT[8] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XOR2_50_Y));
    AND2 AND2_42 (.A(XOR2_63_Y), .B(XOR2_4_Y), .Y(AND2_42_Y));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[30]  (.D(\QXI[30] ), .CLK(
        clk), .CLR(READ_RESET_P), .E(DVLDI), .Q(
        cam0_fifo_read_data[30]));
    DFN1C0 \DFN1C0_WGRY[8]  (.D(XOR2_50_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[8] ));
    XNOR2 XNOR2_5 (.A(\RBINSYNCSHIFT[7] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_5 (.A(XOR2_49_Y), .B(AND2_30_Y), .C(AND2_74_Y), .Y(AO1_5_Y)
        );
    AND2 AND2_67 (.A(XOR2_18_Y), .B(XOR2_44_Y), .Y(AND2_67_Y));
    XNOR2 XNOR2_16 (.A(\RBINSYNCSHIFT[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_16_Y));
    XOR2 \XOR2_WDIFF[4]  (.A(XOR2_58_Y), .B(AO1_32_Y), .Y(\WDIFF[4] ));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_47_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[3] ));
    XOR2 XOR2_39 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_39_Y));
    AND2 AND2_8 (.A(XOR2_7_Y), .B(XOR2_23_Y), .Y(AND2_8_Y));
    DFN1C0 DFN1C0_cam0_fifo_full (.D(FULLINT), .CLK(clk), .CLR(
        READ_RESET_P), .Q(cam0_fifo_full));
    XOR2 \XOR2_WDIFF[8]  (.A(XOR2_31_Y), .B(AO1_35_Y), .Y(\WDIFF[8] ));
    XOR2 XOR2_3 (.A(\RBINSYNCSHIFT[9] ), .B(GND), .Y(XOR2_3_Y));
    XOR2 XOR2_54 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_54_Y));
    XOR2 XOR2_51 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_51_Y));
    AO1 AO1_27 (.A(XOR2_19_Y), .B(AO1_25_Y), .C(AND2_75_Y), .Y(
        AO1_27_Y));
    XOR2 XOR2_66 (.A(\MEM_WADDR[10] ), .B(GND), .Y(XOR2_66_Y));
    AND2 AND2_56 (.A(AND2_42_Y), .B(XOR2_6_Y), .Y(AND2_56_Y));
    INV INV_10 (.A(\RBINSYNCSHIFT[2] ), .Y(INV_10_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[1] ));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_55_Y), .B(AND2_71_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\RBINNXTSHIFT[7] ), .B(\RBINNXTSHIFT[8] ), .Y(
        XOR2_17_Y));
    XOR2 XOR2_73 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_73_Y));
    AND2 AND2_53 (.A(\RBINSYNCSHIFT[5] ), .B(GND), .Y(AND2_53_Y));
    AND3 AND3_7 (.A(XNOR2_10_Y), .B(XNOR2_6_Y), .C(XNOR2_12_Y), .Y(
        AND3_7_Y));
    XOR2 XOR2_28 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_28_Y));
    INV INV_9 (.A(\RBINSYNCSHIFT[10] ), .Y(INV_9_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\MEM_WADDR[5] ));
    XOR2 XOR2_15 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_15_Y));
    XOR2 \XOR2_WDIFF[9]  (.A(XOR2_62_Y), .B(AO1_2_Y), .Y(\WDIFF[9] ));
    AO1 AO1_17 (.A(XOR2_0_Y), .B(AO1_33_Y), .C(AND2_61_Y), .Y(AO1_17_Y)
        );
    XNOR2 XNOR2_17 (.A(\RBINNXTSHIFT[6] ), .B(\MEM_WADDR[8] ), .Y(
        XNOR2_17_Y));
    NAND3A NAND3A_4 (.A(NOR3A_2_Y), .B(OR2A_1_Y), .C(NAND3A_5_Y), .Y(
        NAND3A_4_Y));
    AND3 AND3_4 (.A(XNOR2_26_Y), .B(XNOR2_24_Y), .C(XNOR2_8_Y), .Y(
        AND3_4_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_11_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_25_Y), .B(AND2_29_Y), .Y(
        \WBINNXTSHIFT[1] ));
    AND2 AND2_21 (.A(AND2_12_Y), .B(XOR2_18_Y), .Y(AND2_21_Y));
    AO1 AO1_37 (.A(AND2_70_Y), .B(AO1_3_Y), .C(AO1_15_Y), .Y(AO1_37_Y));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_51_Y), .CLK(clk), .CLR(
        READ_RESET_P), .Q(\WGRY[4] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[3]  (.D(\QXI[3] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[3]));
    XOR2 XOR2_0 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_0_Y));
    XOR2 XOR2_70 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_70_Y));
    NAND2 NAND2_1 (.A(cam0_fifo_empty), .B(VCC), .Y(NAND2_1_Y));
    NAND3A NAND3A_5 (.A(\WDIFF[7] ), .B(\AFVALCONST[0] ), .C(OR2A_0_Y),
        .Y(NAND3A_5_Y));
    AO1 AO1_4 (.A(XOR2_12_Y), .B(AO1_2_Y), .C(AND2_34_Y), .Y(AO1_4_Y));
    XOR2 XOR2_68 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_68_Y));
    RAM4K9 \RAM4K9_QXI[25]  (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        \MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND),
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(GND), .ADDRB7(
        \RBINSYNCSHIFT[9] ), .ADDRB6(\RBINSYNCSHIFT[8] ), .ADDRB5(
        \RBINSYNCSHIFT[7] ), .ADDRB4(\RBINSYNCSHIFT[6] ), .ADDRB3(
        \RBINSYNCSHIFT[5] ), .ADDRB2(\RBINSYNCSHIFT[4] ), .ADDRB1(
        \RBINSYNCSHIFT[3] ), .ADDRB0(\RBINSYNCSHIFT[2] ), .DINA8(GND),
        .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND), .DINA3(GND)
        , .DINA2(GND), .DINA1(cam0_fifo_write_data[1]), .DINA0(
        cam0_fifo_write_data[0]), .DINB8(GND), .DINB7(GND), .DINB6(GND)
        , .DINB5(GND), .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(
        GND), .DINB0(GND), .WIDTHA0(VCC), .WIDTHA1(GND), .WIDTHB0(VCC),
        .WIDTHB1(VCC), .PIPEA(GND), .PIPEB(GND), .WMODEA(GND), .WMODEB(
        GND), .BLKA(MEMWENEG), .BLKB(MEMRENEG), .WENA(GND), .WENB(VCC),
        .CLKA(clk), .CLKB(clk), .RESET(READ_RESET_P), .DOUTA8(),
        .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(
        ), .DOUTA1(\RAM4K9_QXI[25]_DOUTA1 ), .DOUTA0(
        \RAM4K9_QXI[25]_DOUTA0 ), .DOUTB8(), .DOUTB7(\QXI[25] ),
        .DOUTB6(\QXI[24] ), .DOUTB5(\QXI[17] ), .DOUTB4(\QXI[16] ),
        .DOUTB3(\QXI[9] ), .DOUTB2(\QXI[8] ), .DOUTB1(\QXI[1] ),
        .DOUTB0(\QXI[0] ));
    AND2 AND2_37 (.A(AND2_18_Y), .B(AND2_8_Y), .Y(AND2_37_Y));
    XNOR2 XNOR2_14 (.A(\RBINSYNCSHIFT[8] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XNOR2_14_Y));
    XOR2 XOR2_42 (.A(\WBINNXTSHIFT[10] ), .B(GND), .Y(XOR2_42_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_75_Y), .B(AO1_19_Y), .Y(
        \RBINNXTSHIFT[2] ));
    AO1 AO1_21 (.A(XOR2_44_Y), .B(AND2_66_Y), .C(AND2_58_Y), .Y(
        AO1_21_Y));
    XOR2 XOR2_36 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(XOR2_36_Y));
    XOR2 XOR2_74 (.A(\WBINNXTSHIFT[10] ), .B(INV_9_Y), .Y(XOR2_74_Y));
    XNOR2 XNOR2_8 (.A(\WDIFF[5] ), .B(\AFVALCONST[0] ), .Y(XNOR2_8_Y));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[5]  (.D(\RBINNXTSHIFT[3] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[5] ));
    DFN1E1C0 \DFN1E1C0_cam0_fifo_read_data[0]  (.D(\QXI[0] ), .CLK(clk)
        , .CLR(READ_RESET_P), .E(DVLDI), .Q(cam0_fifo_read_data[0]));
    DFN1C0 \DFN1C0_RBINSYNCSHIFT[4]  (.D(\RBINNXTSHIFT[2] ), .CLK(clk),
        .CLR(READ_RESET_P), .Q(\RBINSYNCSHIFT[4] ));
    XOR2 XOR2_71 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(XOR2_71_Y));
    AND2 AND2_28 (.A(AND2_12_Y), .B(AND2_67_Y), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(\RBINSYNCSHIFT[10] ), .B(GND), .Y(AND2_25_Y));
    AO1C AO1C_2 (.A(\AFVALCONST[0] ), .B(\WDIFF[7] ), .C(
        \AFVALCONST[0] ), .Y(AO1C_2_Y));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));

endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.2.1.8
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
// DESDIR:C:/Users/brghena/workspace/SensEye-2/software/smartfusion/smartgen\fifo_pixel_data
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:8
// WDEPTH:1024
// RWIDTH:32
// RDEPTH:256
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
// AFVAL:768
// DATA_IN_PN:cam0_fifo_write_data
// DATA_OUT_PN:cam0_fifo_read_data
// CASCADE:1

// _End_Comments_

