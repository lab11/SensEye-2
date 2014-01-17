`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1


module clkgenerator(
       FAB_CLK,
       SCLK_c
    );
input  FAB_CLK;
output SCLK_c;

    wire SCLK_net_0_i, SCLK_net_0_i_i, GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    CLKINT clkCameraSS_RNIR4A (.A(SCLK_net_0_i), .Y(SCLK_c));
    DFN1 clkCameraSS (.D(SCLK_net_0_i_i), .CLK(FAB_CLK), .Q(
        SCLK_net_0_i));
    INV clkCameraSS_RNO (.A(SCLK_net_0_i), .Y(SCLK_net_0_i_i));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module CAPB3O(
       CoreAPB3_0_APBmslave0_0_PRDATA,
       COREAHBTOAPB3_0_APBmaster_PRDATA,
       ioreg_ready,
       TP_PSEL_c,
       COREAHBTOAPB3_0_APBmaster_PREADY
    );
input  [3:0] CoreAPB3_0_APBmslave0_0_PRDATA;
output [3:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
input  ioreg_ready;
input  TP_PSEL_c;
output COREAHBTOAPB3_0_APBmaster_PREADY;

    wire GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    OR2A PREADY (.A(TP_PSEL_c), .B(ioreg_ready), .Y(
        COREAHBTOAPB3_0_APBmaster_PREADY));
    GND GND_i_0 (.Y(GND_0));
    VCC VCC_i (.Y(VCC));
    NOR2B PRDATA_0 (.A(CoreAPB3_0_APBmslave0_0_PRDATA[0]), .B(
        TP_PSEL_c), .Y(COREAHBTOAPB3_0_APBmaster_PRDATA[0]));
    NOR2B PRDATA_3 (.A(CoreAPB3_0_APBmslave0_0_PRDATA[3]), .B(
        TP_PSEL_c), .Y(COREAHBTOAPB3_0_APBmaster_PRDATA[3]));
    NOR2B PRDATA_2 (.A(CoreAPB3_0_APBmslave0_0_PRDATA[2]), .B(
        TP_PSEL_c), .Y(COREAHBTOAPB3_0_APBmaster_PRDATA[2]));
    NOR2B PRDATA_1 (.A(CoreAPB3_0_APBmslave0_0_PRDATA[1]), .B(
        TP_PSEL_c), .Y(COREAHBTOAPB3_0_APBmaster_PRDATA[1]));
    GND GND_i (.Y(GND));
    
endmodule


module CoreAPB3_Z4(
       COREAHBTOAPB3_0_APBmaster_PRDATA,
       CoreAPB3_0_APBmslave0_0_PRDATA,
       CoreAPB3_0_APBmslave0_0_PADDR,
       COREAHBTOAPB3_0_APBmaster_PREADY,
       ioreg_ready,
       TP_PSEL_c,
       COREAHBTOAPB3_0_APBmaster_PSELx
    );
output [3:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
input  [3:0] CoreAPB3_0_APBmslave0_0_PRDATA;
input  [11:8] CoreAPB3_0_APBmslave0_0_PADDR;
output COREAHBTOAPB3_0_APBmaster_PREADY;
input  ioreg_ready;
output TP_PSEL_c;
input  COREAHBTOAPB3_0_APBmaster_PSELx;

    wire \CAPB3O11_2[0]_net_1 , \CAPB3O11_1[0]_net_1 , GND, VCC, GND_0, 
        VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    NOR2B \CAPB3O11[0]  (.A(\CAPB3O11_2[0]_net_1 ), .B(
        \CAPB3O11_1[0]_net_1 ), .Y(TP_PSEL_c));
    CAPB3O CAPB3llOI (.CoreAPB3_0_APBmslave0_0_PRDATA({
        CoreAPB3_0_APBmslave0_0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_0_PRDATA[0]}), 
        .COREAHBTOAPB3_0_APBmaster_PRDATA({
        COREAHBTOAPB3_0_APBmaster_PRDATA[3], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[2], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[1], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[0]}), .ioreg_ready(
        ioreg_ready), .TP_PSEL_c(TP_PSEL_c), 
        .COREAHBTOAPB3_0_APBmaster_PREADY(
        COREAHBTOAPB3_0_APBmaster_PREADY));
    GND GND_i_0 (.Y(GND_0));
    NOR2 \CAPB3O11_1[0]  (.A(CoreAPB3_0_APBmslave0_0_PADDR[8]), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[10]), .Y(\CAPB3O11_1[0]_net_1 ));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    NOR3A \CAPB3O11_2[0]  (.A(COREAHBTOAPB3_0_APBmaster_PSELx), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[9]), .C(
        CoreAPB3_0_APBmslave0_0_PADDR[11]), .Y(\CAPB3O11_2[0]_net_1 ));
    
endmodule


module cr_int(
       reg_addr,
       data_to_cr,
       max_addr,
       data_reg,
       psram_address_c,
       psram_data_in,
       data_from_cr,
       dt_ack,
       FAB_CLK,
       dt_rw,
       psram_ncs0_c_c_c,
       dt_req,
       start_0_0,
       psram_noe0_c,
       psram_nwe_c,
       active_data,
       MSS_CORE2_0_M2F_RESET_N
    );
input  [15:0] reg_addr;
input  [15:0] data_to_cr;
input  [24:0] max_addr;
output [15:0] data_reg;
output [24:0] psram_address_c;
input  [15:0] psram_data_in;
output [15:0] data_from_cr;
output dt_ack;
input  FAB_CLK;
input  dt_rw;
output psram_ncs0_c_c_c;
input  dt_req;
output start_0_0;
output psram_noe0_c;
output psram_nwe_c;
output active_data;
input  MSS_CORE2_0_M2F_RESET_N;

    wire N_87, N_71, noe0_5_0_o2_0, noe0_5, N_78, nwe_5, N_67, N_76, 
        op_counter_n2_i_0, \op_counter[1]_net_1 , 
        \op_counter[0]_net_1 , \op_counter[2]_net_1 , 
        op_counter_n3_i_1, N_74, \op_counter[3]_net_1 , 
        ac_counter_lb1_2_0_a2_0_0, op_counter_lb1_net_1, 
        \ac_counter[0]_net_1 , active_data_2_0_a2_0, N_54, 
        \ac_counter[1]_net_1 , N_207, N_56, \ac_counter[2]_net_1 , 
        N_69, N_96, N_72, N_65, N_3, \ac_counter[3]_net_1 , N_63, 
        enable_RNO_net_1, N_98, N_97, start_RNO_net_1, start_0_net_1, 
        start_1_net_1, N_242, N_10, N_244, N_246, data_out_0_sqmuxa, 
        N_247, N_248, N_250, N_252, N_253, N_254, N_255, N_257, N_258, 
        N_260, N_264, \address_5[1] , un1_op_counter_1, N_265, 
        \address_5[2] , N_266, \address_5[3] , N_268, \address_5[5] , 
        N_269, \address_5[6] , N_270, \address_5[7] , N_271, 
        \address_5[8] , N_272, \address_5[9] , N_273, \address_5[10] , 
        N_274, \address_5[11] , N_275, \address_5[12] , N_276, 
        \address_5[13] , N_277, \address_5[14] , N_278, 
        \address_5[15] , N_279, \address_5[16] , N_280, 
        \address_5[17] , N_281, \address_5[18] , N_282, 
        \address_5[19] , N_283, \address_5[20] , N_284, 
        \address_5[21] , N_285, \address_5[22] , N_286, 
        \address_5[23] , N_287, \address_5[24] , N_237, 
        \data_reg_6[11] , N_13, N_238, \data_reg_6[12] , N_240, 
        \data_reg_6[14] , N_241, \data_reg_6[15] , N_94, N_111, N_100, 
        N_101, active_data_RNO_net_1, N_77, N_42, N_44, N_48, N_50, 
        start_1_RNO_net_1, \address_RNO[1]_net_1 , 
        \address_RNO[2]_net_1 , \address_RNO[3]_net_1 , 
        \address_RNO[5]_net_1 , \address_RNO[6]_net_1 , 
        \data_out_RNO_0[8]_net_1 , \data_out_RNO_0[9]_net_1 , 
        \data_out_RNO_0[11]_net_1 , \data_out_RNO_0[12]_net_1 , 
        \data_out_RNO_0[14]_net_1 , \address_RNO[20]_net_1 , 
        \address_RNO[21]_net_1 , \address_RNO[22]_net_1 , 
        \address_RNO[23]_net_1 , \address_RNO[24]_net_1 , 
        \data_out_RNO_0[0]_net_1 , \data_out_RNO_0[1]_net_1 , 
        \data_out_RNO_0[2]_net_1 , \data_out_RNO_0[4]_net_1 , 
        \data_out_RNO_0[6]_net_1 , \data_out_RNO_0[7]_net_1 , 
        \address_RNO[7]_net_1 , \address_RNO[8]_net_1 , 
        \address_RNO[9]_net_1 , \address_RNO[10]_net_1 , 
        \address_RNO[11]_net_1 , \address_RNO[12]_net_1 , 
        \address_RNO[13]_net_1 , \address_RNO[14]_net_1 , 
        \address_RNO[15]_net_1 , \address_RNO[16]_net_1 , 
        \address_RNO[17]_net_1 , \address_RNO[18]_net_1 , 
        \address_RNO[19]_net_1 , enable_net_1, N_186, 
        data_reg_1_sqmuxa, N_185, N_182, N_10_1, \address_5[0] , 
        \address_RNO[0]_net_1 , N_263, \data_out_RNO_0[3]_net_1 , 
        N_249, \data_out_RNO_0[10]_net_1 , N_256, N_183, 
        \data_out_RNO_0[5]_net_1 , N_251, \data_out_RNO_0[15]_net_1 , 
        N_261, \data_out_RNO_0[13]_net_1 , N_259, dt_ack_RNO_net_1, 
        ac_counter_lb1_net_1, start_net_1, N_245, 
        op_counter_lb1_RNO_net_1, N_68, N_99, ac_counter_lb1_RNO_net_1, 
        N_58, N_82, N_61, op_counter_n0, N_102, \data_reg_6[10] , 
        N_181, \data_reg_6[9] , N_180, \address_5[4] , 
        \data_reg_6[13] , N_184, \data_reg_6[8] , N_179, 
        \data_reg_6[7] , N_178, \data_reg_6[2] , N_173, 
        \data_reg_6[1] , N_172, \data_reg_6[0] , N_171, 
        \data_reg_6[6] , N_177, \data_reg_6[5] , N_176, 
        \data_reg_6[4] , N_175, \data_reg_6[3] , N_174, 
        \data_reg_RNO[4]_net_1 , N_230, \data_reg_RNO[3]_net_1 , N_229, 
        \data_reg_RNO[2]_net_1 , N_228, \data_reg_RNO[1]_net_1 , N_227, 
        \data_reg_RNO[0]_net_1 , N_226, \address_RNO[4]_net_1 , N_267, 
        N_46, N_239, N_40, N_236, N_38, N_235, N_36, N_234, 
        \data_reg_RNO[7]_net_1 , N_233, \data_reg_RNO[6]_net_1 , N_232, 
        \data_reg_RNO[5]_net_1 , N_231, GND, VCC, GND_0, VCC_0;
    
    DFN1 \address[16]  (.D(\address_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[16]));
    DFN1 \address[10]  (.D(\address_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[10]));
    NOR2B \address_RNO_1[3]  (.A(max_addr[3]), .B(enable_net_1), .Y(
        \address_5[3] ));
    NOR2B \data_reg_RNO[8]  (.A(N_234), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_36));
    NOR2B \address_RNO_1[0]  (.A(max_addr[0]), .B(enable_net_1), .Y(
        \address_5[0] ));
    OR2A \op_counter_RNI14O3[3]  (.A(\op_counter[0]_net_1 ), .B(
        \op_counter[3]_net_1 ), .Y(noe0_5_0_o2_0));
    DFN1 nwe (.D(N_101), .CLK(FAB_CLK), .Q(psram_nwe_c));
    NOR2B \address_RNO[1]  (.A(N_264), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[1]_net_1 ));
    MX2 \data_reg_RNO_2[13]  (.A(reg_addr[13]), .B(data_to_cr[13]), .S(
        ac_counter_lb1_net_1), .Y(N_184));
    NOR2B \data_reg_RNO_1[2]  (.A(N_173), .B(enable_net_1), .Y(
        \data_reg_6[2] ));
    DFN1 \address[20]  (.D(\address_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[20]));
    NOR2B \address_RNO_1[8]  (.A(max_addr[8]), .B(enable_net_1), .Y(
        \address_5[8] ));
    NOR2B \data_reg_RNO_1[1]  (.A(N_172), .B(enable_net_1), .Y(
        \data_reg_6[1] ));
    DFN1 \data_out[8]  (.D(\data_out_RNO_0[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[8]));
    MX2 \data_reg_RNO_2[1]  (.A(reg_addr[1]), .B(data_to_cr[1]), .S(
        ac_counter_lb1_net_1), .Y(N_172));
    DFN1 \data_reg[0]  (.D(\data_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[0]));
    MX2 \address_RNO_0[11]  (.A(psram_address_c[11]), .B(
        \address_5[11] ), .S(un1_op_counter_1), .Y(N_274));
    DFN1 \op_counter[3]  (.D(N_65), .CLK(FAB_CLK), .Q(
        \op_counter[3]_net_1 ));
    MX2 \data_out_RNO_0[11]  (.A(data_from_cr[11]), .B(
        psram_data_in[11]), .S(data_out_0_sqmuxa), .Y(N_257));
    MX2 \address_RNO_0[8]  (.A(psram_address_c[8]), .B(\address_5[8] ), 
        .S(un1_op_counter_1), .Y(N_271));
    NOR2B \address_RNO_1[21]  (.A(max_addr[21]), .B(enable_net_1), .Y(
        \address_5[21] ));
    NOR2 \ac_counter_RNO[0]  (.A(N_207), .B(\ac_counter[0]_net_1 ), .Y(
        N_102));
    DFN1 \address[12]  (.D(\address_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[12]));
    DFN1E1 \ac_counter[2]  (.D(N_56), .CLK(FAB_CLK), .E(N_3), .Q(
        \ac_counter[2]_net_1 ));
    NOR2B \address_RNO_1[11]  (.A(max_addr[11]), .B(enable_net_1), .Y(
        \address_5[11] ));
    NOR2B \data_out_RNO[1]  (.A(N_247), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[1]_net_1 ));
    OR2B \ac_counter_RNILLIU[1]  (.A(\ac_counter[1]_net_1 ), .B(
        \ac_counter[0]_net_1 ), .Y(N_69));
    MX2 \data_reg_RNO_0[13]  (.A(data_reg[13]), .B(\data_reg_6[13] ), 
        .S(N_13), .Y(N_239));
    DFN1 \data_out[12]  (.D(\data_out_RNO_0[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[12]));
    DFN1 \address[22]  (.D(\address_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[22]));
    NOR2B \address_RNO[23]  (.A(N_286), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[23]_net_1 ));
    DFN1 \address[2]  (.D(\address_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[2]));
    NOR2B active_data_RNO_0 (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        active_data), .Y(active_data_2_0_a2_0));
    NOR2B \data_reg_RNO[4]  (.A(N_230), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[4]_net_1 ));
    DFN1 \data_out[5]  (.D(\data_out_RNO_0[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[5]));
    NOR2B \data_reg_RNO_1[12]  (.A(N_183), .B(enable_net_1), .Y(
        \data_reg_6[12] ));
    NOR2B \address_RNO_1[7]  (.A(max_addr[7]), .B(enable_net_1), .Y(
        \address_5[7] ));
    NOR2B \address_RNO[24]  (.A(N_287), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[24]_net_1 ));
    NOR2B \address_RNO[10]  (.A(N_273), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[10]_net_1 ));
    NOR2B \data_reg_RNO[11]  (.A(N_237), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_42));
    NOR2B \data_reg_RNO_1[9]  (.A(N_180), .B(enable_net_1), .Y(
        \data_reg_6[9] ));
    NOR2 \op_counter_RNI28G7_0[2]  (.A(N_71), .B(N_68), .Y(
        un1_op_counter_1));
    DFN1 \data_out[1]  (.D(\data_out_RNO_0[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[1]));
    NOR2B \address_RNO[9]  (.A(N_272), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[9]_net_1 ));
    DFN1 \address[5]  (.D(\address_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[5]));
    AX1E \op_counter_RNO_0[2]  (.A(\op_counter[1]_net_1 ), .B(
        \op_counter[0]_net_1 ), .C(\op_counter[2]_net_1 ), .Y(
        op_counter_n2_i_0));
    DFN1 \address[15]  (.D(\address_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[15]));
    NOR2B \data_reg_RNO[2]  (.A(N_228), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[2]_net_1 ));
    NOR2B \data_out_RNO[0]  (.A(N_246), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[0]_net_1 ));
    MX2 \address_RNO_0[9]  (.A(psram_address_c[9]), .B(\address_5[9] ), 
        .S(un1_op_counter_1), .Y(N_272));
    DFN1 \address[13]  (.D(\address_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[13]));
    MX2 \nbyte_en_1_RNO_0[0]  (.A(N_10_1), .B(psram_ncs0_c_c_c), .S(
        N_77), .Y(N_245));
    NOR2B \address_RNO_1[4]  (.A(max_addr[4]), .B(enable_net_1), .Y(
        \address_5[4] ));
    DFN1 \address[19]  (.D(\address_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[19]));
    NOR2B start_0_0_inst_1 (.A(dt_req), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(start_0_0));
    DFN1 \address[23]  (.D(\address_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[23]));
    AO1 active_data_RNO (.A(active_data_2_0_a2_0), .B(N_77), .C(N_94), 
        .Y(active_data_RNO_net_1));
    MX2 \data_reg_RNO_2[4]  (.A(reg_addr[4]), .B(data_to_cr[4]), .S(
        ac_counter_lb1_net_1), .Y(N_175));
    DFN1 \data_out[10]  (.D(\data_out_RNO_0[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[10]));
    OR2A nwe_5_0_o2 (.A(N_67), .B(N_76), .Y(N_78));
    NOR2B \data_out_RNO[4]  (.A(N_250), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[4]_net_1 ));
    DFN1 \address[18]  (.D(\address_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[18]));
    MX2 \data_reg_RNO_2[0]  (.A(reg_addr[0]), .B(data_to_cr[0]), .S(
        ac_counter_lb1_net_1), .Y(N_171));
    NOR2B \data_reg_RNO_1[13]  (.A(N_184), .B(enable_net_1), .Y(
        \data_reg_6[13] ));
    NOR2B \address_RNO[21]  (.A(N_284), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[21]_net_1 ));
    NOR2B \address_RNO[16]  (.A(N_279), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[16]_net_1 ));
    MX2 \address_RNO_0[24]  (.A(psram_address_c[24]), .B(
        \address_5[24] ), .S(un1_op_counter_1), .Y(N_287));
    MX2 \data_reg_RNO_0[6]  (.A(data_reg[6]), .B(\data_reg_6[6] ), .S(
        N_13), .Y(N_232));
    DFN1 \address[0]  (.D(\address_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[0]));
    NOR2B \data_reg_RNO_1[7]  (.A(N_178), .B(enable_net_1), .Y(
        \data_reg_6[7] ));
    DFN1 start_1 (.D(start_1_RNO_net_1), .CLK(FAB_CLK), .Q(
        start_1_net_1));
    GND GND_i (.Y(GND));
    NOR2B \data_reg_RNO[13]  (.A(N_239), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_46));
    MX2 \data_reg_RNO_2[9]  (.A(reg_addr[9]), .B(data_to_cr[9]), .S(
        ac_counter_lb1_net_1), .Y(N_180));
    MX2 \data_reg_RNO_2[5]  (.A(reg_addr[5]), .B(data_to_cr[5]), .S(
        ac_counter_lb1_net_1), .Y(N_176));
    DFN1 \data_reg[4]  (.D(\data_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[4]));
    DFN1 \address[4]  (.D(\address_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[4]));
    MX2 \address_RNO_0[3]  (.A(psram_address_c[3]), .B(\address_5[3] ), 
        .S(un1_op_counter_1), .Y(N_266));
    VCC VCC_i_0 (.Y(VCC_0));
    MX2 \data_reg_RNO_2[14]  (.A(data_to_cr[14]), .B(reg_addr[14]), .S(
        data_reg_1_sqmuxa), .Y(N_185));
    DFN1 active_data_inst_1 (.D(active_data_RNO_net_1), .CLK(FAB_CLK), 
        .Q(active_data));
    XO1 \op_counter_RNI28G7[2]  (.A(\op_counter[1]_net_1 ), .B(
        \op_counter[2]_net_1 ), .C(N_68), .Y(N_77));
    DFN1 \data_out[2]  (.D(\data_out_RNO_0[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[2]));
    MX2 \address_RNO_0[4]  (.A(psram_address_c[4]), .B(\address_5[4] ), 
        .S(un1_op_counter_1), .Y(N_267));
    MX2 \address_RNO_0[5]  (.A(psram_address_c[5]), .B(\address_5[5] ), 
        .S(un1_op_counter_1), .Y(N_268));
    MX2 \address_RNO_0[17]  (.A(psram_address_c[17]), .B(
        \address_5[17] ), .S(un1_op_counter_1), .Y(N_280));
    MX2 \data_reg_RNO_0[4]  (.A(data_reg[4]), .B(\data_reg_6[4] ), .S(
        N_13), .Y(N_230));
    XA1B \op_counter_RNO[1]  (.A(\op_counter[0]_net_1 ), .B(
        \op_counter[1]_net_1 ), .C(N_3), .Y(N_61));
    NOR2B \address_RNO[19]  (.A(N_282), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[19]_net_1 ));
    NOR2B \address_RNO_1[17]  (.A(max_addr[17]), .B(enable_net_1), .Y(
        \address_5[17] ));
    MX2 \data_out_RNO_0[9]  (.A(data_from_cr[9]), .B(psram_data_in[9]), 
        .S(data_out_0_sqmuxa), .Y(N_255));
    NOR2B \address_RNO[13]  (.A(N_276), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[13]_net_1 ));
    MX2 \address_RNO_0[14]  (.A(psram_address_c[14]), .B(
        \address_5[14] ), .S(un1_op_counter_1), .Y(N_277));
    DFN1 \address[14]  (.D(\address_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[14]));
    DFN1 \data_reg[7]  (.D(\data_reg_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[7]));
    MX2 \address_RNO_0[15]  (.A(psram_address_c[15]), .B(
        \address_5[15] ), .S(un1_op_counter_1), .Y(N_278));
    NOR2B \address_RNO_1[24]  (.A(max_addr[24]), .B(enable_net_1), .Y(
        \address_5[24] ));
    DFN1 start_0 (.D(start_0_0), .CLK(FAB_CLK), .Q(start_0_net_1));
    MX2 \data_reg_RNO_0[14]  (.A(data_reg[14]), .B(\data_reg_6[14] ), 
        .S(N_13), .Y(N_240));
    DFN1 \data_out[14]  (.D(\data_out_RNO_0[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[14]));
    DFN1 \data_reg[1]  (.D(\data_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[1]));
    NOR2B \address_RNO[14]  (.A(N_277), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[14]_net_1 ));
    NOR2B \address_RNO_1[14]  (.A(max_addr[14]), .B(enable_net_1), .Y(
        \address_5[14] ));
    NOR2B \address_RNO_1[15]  (.A(max_addr[15]), .B(enable_net_1), .Y(
        \address_5[15] ));
    DFN1 \address[24]  (.D(\address_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[24]));
    MX2 \address_RNO_0[22]  (.A(psram_address_c[22]), .B(
        \address_5[22] ), .S(un1_op_counter_1), .Y(N_285));
    OR2A \ac_counter_RNO_0[3]  (.A(\ac_counter[2]_net_1 ), .B(N_69), 
        .Y(N_82));
    VCC VCC_i (.Y(VCC));
    MX2 \data_out_RNO_0[8]  (.A(data_from_cr[8]), .B(psram_data_in[8]), 
        .S(data_out_0_sqmuxa), .Y(N_254));
    NOR2B \data_out_RNO[11]  (.A(N_257), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[11]_net_1 ));
    DFN1 dt_ack_inst_1 (.D(dt_ack_RNO_net_1), .CLK(FAB_CLK), .Q(dt_ack)
        );
    MX2 \data_out_RNO_0[4]  (.A(data_from_cr[4]), .B(psram_data_in[4]), 
        .S(data_out_0_sqmuxa), .Y(N_250));
    DFN1 \data_reg[9]  (.D(N_38), .CLK(FAB_CLK), .Q(data_reg[9]));
    NOR3B start_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(start_0_net_1), 
        .C(start_1_net_1), .Y(start_RNO_net_1));
    OR2A \nbyte_en_1_RNO[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_245), 
        .Y(N_99));
    MX2 \data_reg_RNO_0[3]  (.A(data_reg[3]), .B(\data_reg_6[3] ), .S(
        N_13), .Y(N_229));
    DFN1 \op_counter[2]  (.D(N_63), .CLK(FAB_CLK), .Q(
        \op_counter[2]_net_1 ));
    DFN1 \address[8]  (.D(\address_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[8]));
    MX2 \address_RNO_0[1]  (.A(psram_address_c[1]), .B(\address_5[1] ), 
        .S(un1_op_counter_1), .Y(N_264));
    MX2 \data_out_RNO_0[5]  (.A(data_from_cr[5]), .B(psram_data_in[5]), 
        .S(data_out_0_sqmuxa), .Y(N_251));
    NOR2B \address_RNO[6]  (.A(N_269), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[6]_net_1 ));
    MX2 \data_out_RNO_0[14]  (.A(data_from_cr[14]), .B(
        psram_data_in[14]), .S(data_out_0_sqmuxa), .Y(N_260));
    NOR2B \address_RNO[11]  (.A(N_274), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[11]_net_1 ));
    NOR2B \data_reg_RNO[5]  (.A(N_231), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[5]_net_1 ));
    MX2 \data_reg_RNO_2[6]  (.A(reg_addr[6]), .B(data_to_cr[6]), .S(
        ac_counter_lb1_net_1), .Y(N_177));
    MX2 \address_RNO_0[12]  (.A(psram_address_c[12]), .B(
        \address_5[12] ), .S(un1_op_counter_1), .Y(N_275));
    MX2 \data_out_RNO_0[7]  (.A(data_from_cr[7]), .B(psram_data_in[7]), 
        .S(data_out_0_sqmuxa), .Y(N_253));
    NOR2B \address_RNO_1[22]  (.A(max_addr[22]), .B(enable_net_1), .Y(
        \address_5[22] ));
    NOR2 enable_RNO_1 (.A(start_net_1), .B(enable_net_1), .Y(N_97));
    NOR2B \data_reg_RNO_1[14]  (.A(N_185), .B(enable_net_1), .Y(
        \data_reg_6[14] ));
    NOR2B \address_RNO[17]  (.A(N_280), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[17]_net_1 ));
    NOR2B \address_RNO[5]  (.A(N_268), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[5]_net_1 ));
    NOR2B \data_reg_RNO[6]  (.A(N_232), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[6]_net_1 ));
    NOR2B \address_RNO_1[12]  (.A(max_addr[12]), .B(enable_net_1), .Y(
        \address_5[12] ));
    DFN1 \data_reg[2]  (.D(\data_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[2]));
    NOR2B \address_RNO[0]  (.A(N_263), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[0]_net_1 ));
    NOR2B \data_reg_RNO[9]  (.A(N_235), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_38));
    NOR2B \data_reg_RNO_1[5]  (.A(N_176), .B(enable_net_1), .Y(
        \data_reg_6[5] ));
    XA1C \ac_counter_RNO[2]  (.A(\ac_counter[2]_net_1 ), .B(N_69), .C(
        N_207), .Y(N_56));
    NOR3A ac_counter_lb1_RNO_0 (.A(ac_counter_lb1_2_0_a2_0_0), .B(N_76)
        , .C(N_72), .Y(N_96));
    MX2 \address_RNO_0[2]  (.A(psram_address_c[2]), .B(\address_5[2] ), 
        .S(un1_op_counter_1), .Y(N_265));
    NOR2B start_1_RNO (.A(start_0_net_1), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(start_1_RNO_net_1));
    NOR2B \address_RNO[3]  (.A(N_266), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[3]_net_1 ));
    DFN1 \address[3]  (.D(\address_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[3]));
    NOR2B \data_reg_RNO[1]  (.A(N_227), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[1]_net_1 ));
    NOR2B \address_RNO_1[2]  (.A(max_addr[2]), .B(enable_net_1), .Y(
        \address_5[2] ));
    NOR2B \data_out_RNO[9]  (.A(N_255), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[9]_net_1 ));
    MX2 \data_reg_RNO_0[5]  (.A(data_reg[5]), .B(\data_reg_6[5] ), .S(
        N_13), .Y(N_231));
    MX2 \data_out_RNO_0[2]  (.A(data_from_cr[2]), .B(psram_data_in[2]), 
        .S(data_out_0_sqmuxa), .Y(N_248));
    MX2 \address_RNO_0[6]  (.A(psram_address_c[6]), .B(\address_5[6] ), 
        .S(un1_op_counter_1), .Y(N_269));
    OR2 noe0_5_0_o2 (.A(N_71), .B(noe0_5_0_o2_0), .Y(N_87));
    MX2 \data_out_RNO_0[0]  (.A(data_from_cr[0]), .B(psram_data_in[0]), 
        .S(data_out_0_sqmuxa), .Y(N_246));
    DFN1 \address[7]  (.D(\address_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[7]));
    NOR2B \data_reg_RNO_1[0]  (.A(N_171), .B(enable_net_1), .Y(
        \data_reg_6[0] ));
    NOR2B \data_out_RNO[5]  (.A(N_251), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[5]_net_1 ));
    DFN1 \data_out[15]  (.D(\data_out_RNO_0[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[15]));
    OR2 \op_counter_RNI14O3_0[3]  (.A(\op_counter[3]_net_1 ), .B(
        \op_counter[0]_net_1 ), .Y(N_68));
    NOR2B \data_reg_RNO_1[8]  (.A(N_179), .B(enable_net_1), .Y(
        \data_reg_6[8] ));
    DFN1 \data_out[3]  (.D(\data_out_RNO_0[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[3]));
    OR2B \op_counter_RNI14O3[2]  (.A(\op_counter[2]_net_1 ), .B(
        \op_counter[1]_net_1 ), .Y(N_74));
    AO1A ac_counter_lb1_RNO (.A(N_3), .B(ac_counter_lb1_net_1), .C(
        N_96), .Y(ac_counter_lb1_RNO_net_1));
    DFN1 \data_reg[6]  (.D(\data_reg_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[6]));
    NOR2B \data_out_RNO[8]  (.A(N_254), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[8]_net_1 ));
    MX2 \data_reg_RNO_2[10]  (.A(reg_addr[10]), .B(data_to_cr[10]), .S(
        ac_counter_lb1_net_1), .Y(N_181));
    DFN1 \data_out[7]  (.D(\data_out_RNO_0[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[7]));
    OR2B \ac_counter_RNIBQOS[0]  (.A(dt_rw), .B(\ac_counter[0]_net_1 ), 
        .Y(N_67));
    DFN1E1 \ac_counter[3]  (.D(N_58), .CLK(FAB_CLK), .E(N_3), .Q(
        \ac_counter[3]_net_1 ));
    OR2A enable_RNIDN3J2 (.A(enable_net_1), .B(N_111), .Y(N_13));
    DFN1 noe0 (.D(N_100), .CLK(FAB_CLK), .Q(psram_noe0_c));
    OR3A \ac_counter_RNIKISD1[3]  (.A(\ac_counter[1]_net_1 ), .B(
        \ac_counter[3]_net_1 ), .C(\ac_counter[2]_net_1 ), .Y(N_76));
    DFN1 \data_reg[11]  (.D(N_42), .CLK(FAB_CLK), .Q(data_reg[11]));
    NOR2A ac_counter_lb1_RNO_1 (.A(op_counter_lb1_net_1), .B(
        \ac_counter[0]_net_1 ), .Y(ac_counter_lb1_2_0_a2_0_0));
    MX2 \data_reg_RNO_2[15]  (.A(data_to_cr[15]), .B(reg_addr[15]), .S(
        data_reg_1_sqmuxa), .Y(N_186));
    NOR2B \address_RNO[22]  (.A(N_285), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[22]_net_1 ));
    NOR2B active_data_RNO_1 (.A(N_111), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_94));
    DFN1 \address[9]  (.D(\address_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[9]));
    AX1A \op_counter_RNO_0[3]  (.A(N_74), .B(\op_counter[0]_net_1 ), 
        .C(\op_counter[3]_net_1 ), .Y(op_counter_n3_i_1));
    NOR2B \address_RNO[18]  (.A(N_281), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[18]_net_1 ));
    MX2 noe0_RNO_0 (.A(psram_noe0_c), .B(noe0_5), .S(N_10), .Y(N_244));
    DFN1 \data_out[4]  (.D(\data_out_RNO_0[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[4]));
    MX2 \address_RNO_0[18]  (.A(psram_address_c[18]), .B(
        \address_5[18] ), .S(un1_op_counter_1), .Y(N_281));
    GND GND_i_0 (.Y(GND_0));
    MX2 \data_reg_RNO_0[2]  (.A(data_reg[2]), .B(\data_reg_6[2] ), .S(
        N_13), .Y(N_228));
    NOR2B \address_RNO[7]  (.A(N_270), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[7]_net_1 ));
    NOR2A ac_counter_lb1_RNI1AOS2 (.A(N_111), .B(ac_counter_lb1_net_1), 
        .Y(data_reg_1_sqmuxa));
    MX2 \address_RNO_0[7]  (.A(psram_address_c[7]), .B(\address_5[7] ), 
        .S(un1_op_counter_1), .Y(N_270));
    MX2 \data_reg_RNO_0[9]  (.A(data_reg[9]), .B(\data_reg_6[9] ), .S(
        N_13), .Y(N_235));
    MX2 \data_reg_RNO_0[10]  (.A(data_reg[10]), .B(\data_reg_6[10] ), 
        .S(N_13), .Y(N_236));
    DFN1 \data_out[9]  (.D(\data_out_RNO_0[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[9]));
    NOR2B \address_RNO_1[18]  (.A(max_addr[18]), .B(enable_net_1), .Y(
        \address_5[18] ));
    DFN1 \address[6]  (.D(\address_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[6]));
    NOR2B \data_reg_RNO_1[4]  (.A(N_175), .B(enable_net_1), .Y(
        \data_reg_6[4] ));
    MX2 \data_reg_RNO_2[2]  (.A(reg_addr[2]), .B(data_to_cr[2]), .S(
        ac_counter_lb1_net_1), .Y(N_173));
    MX2 \data_reg_RNO_2[11]  (.A(data_to_cr[11]), .B(reg_addr[11]), .S(
        data_reg_1_sqmuxa), .Y(N_182));
    MX2 \address_RNO_0[16]  (.A(psram_address_c[16]), .B(
        \address_5[16] ), .S(un1_op_counter_1), .Y(N_279));
    NOR2B \address_RNO[8]  (.A(N_271), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[8]_net_1 ));
    DFN1E1 \ac_counter[1]  (.D(N_54), .CLK(FAB_CLK), .E(N_3), .Q(
        \ac_counter[1]_net_1 ));
    MX2 \data_reg_RNO_2[7]  (.A(reg_addr[7]), .B(data_to_cr[7]), .S(
        ac_counter_lb1_net_1), .Y(N_178));
    DFN1 \op_counter[1]  (.D(N_61), .CLK(FAB_CLK), .Q(
        \op_counter[1]_net_1 ));
    MX2 \data_reg_RNO_0[15]  (.A(data_reg[15]), .B(\data_reg_6[15] ), 
        .S(N_13), .Y(N_241));
    NOR2B \data_reg_RNO[10]  (.A(N_236), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_40));
    OR2 op_counter_lb1_RNI6OFH (.A(op_counter_lb1_net_1), .B(N_72), .Y(
        N_3));
    NOR3B \ac_counter_RNI1L5I2[0]  (.A(N_67), .B(un1_op_counter_1), .C(
        N_76), .Y(N_111));
    NOR2B \address_RNO_1[16]  (.A(max_addr[16]), .B(enable_net_1), .Y(
        \address_5[16] ));
    NOR2B \data_out_RNO[10]  (.A(N_256), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[10]_net_1 ));
    MX2 \address_RNO_0[19]  (.A(psram_address_c[19]), .B(
        \address_5[19] ), .S(un1_op_counter_1), .Y(N_282));
    DFN1 \address[11]  (.D(\address_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[11]));
    NOR2B \data_reg_RNO[15]  (.A(N_241), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_50));
    MX2 \data_out_RNO_0[6]  (.A(data_from_cr[6]), .B(psram_data_in[6]), 
        .S(data_out_0_sqmuxa), .Y(N_252));
    NOR2 \op_counter_RNO[0]  (.A(\op_counter[0]_net_1 ), .B(N_3), .Y(
        op_counter_n0));
    NOR2B \address_RNO_1[19]  (.A(max_addr[19]), .B(enable_net_1), .Y(
        \address_5[19] ));
    NOR2B \data_out_RNO[3]  (.A(N_249), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[3]_net_1 ));
    DFN1 \data_reg[3]  (.D(\data_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[3]));
    NOR2B \address_RNO[2]  (.A(N_265), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[2]_net_1 ));
    OR2A noe0_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_244), .Y(N_100));
    NOR2B \address_RNO_1[5]  (.A(max_addr[5]), .B(enable_net_1), .Y(
        \address_5[5] ));
    DFN1 \nbyte_en_1[0]  (.D(N_99), .CLK(FAB_CLK), .Q(psram_ncs0_c_c_c)
        );
    NOR2B \address_RNO[4]  (.A(N_267), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \address_RNO[4]_net_1 ));
    DFN1 \address[21]  (.D(\address_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[21]));
    NOR3B enable_RNO_0 (.A(ac_counter_lb1_net_1), .B(
        op_counter_lb1_net_1), .C(start_net_1), .Y(N_98));
    MX2 \data_reg_RNO_0[11]  (.A(data_reg[11]), .B(\data_reg_6[11] ), 
        .S(N_13), .Y(N_237));
    NOR2B \data_reg_RNO[0]  (.A(N_226), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[0]_net_1 ));
    MX2 \data_out_RNO_0[12]  (.A(data_from_cr[12]), .B(
        psram_data_in[12]), .S(data_out_0_sqmuxa), .Y(N_258));
    DFN1 \data_reg[14]  (.D(N_48), .CLK(FAB_CLK), .Q(data_reg[14]));
    NOR2B \data_out_RNO[6]  (.A(N_252), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[6]_net_1 ));
    DFN1 start (.D(start_RNO_net_1), .CLK(FAB_CLK), .Q(start_net_1));
    OR2B enable_RNIJA44 (.A(enable_net_1), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_72));
    OR2 \op_counter_RNI14O3_0[2]  (.A(\op_counter[2]_net_1 ), .B(
        \op_counter[1]_net_1 ), .Y(N_71));
    DFN1 \op_counter[0]  (.D(op_counter_n0), .CLK(FAB_CLK), .Q(
        \op_counter[0]_net_1 ));
    NOR3C dt_ack_RNO (.A(ac_counter_lb1_net_1), .B(
        op_counter_lb1_net_1), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        dt_ack_RNO_net_1));
    DFN1 \address[17]  (.D(\address_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[17]));
    MX2 \data_out_RNO_0[3]  (.A(data_from_cr[3]), .B(psram_data_in[3]), 
        .S(data_out_0_sqmuxa), .Y(N_249));
    NOR2B \address_RNO_1[1]  (.A(max_addr[1]), .B(enable_net_1), .Y(
        \address_5[1] ));
    NOR2B \data_reg_RNO_1[10]  (.A(N_181), .B(enable_net_1), .Y(
        \data_reg_6[10] ));
    NOR2B \data_out_RNO[7]  (.A(N_253), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[7]_net_1 ));
    NOR2B \data_out_RNO[14]  (.A(N_260), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[14]_net_1 ));
    DFN1 \data_reg[10]  (.D(N_40), .CLK(FAB_CLK), .Q(data_reg[10]));
    NOR2B \address_RNO_1[6]  (.A(max_addr[6]), .B(enable_net_1), .Y(
        \address_5[6] ));
    NOR2B \data_reg_RNO[14]  (.A(N_240), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_48));
    NOR2B \data_out_RNO[15]  (.A(N_261), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[15]_net_1 ));
    OR2A nwe_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_242), .Y(N_101));
    MX2 nwe_RNO_0 (.A(psram_nwe_c), .B(nwe_5), .S(N_10), .Y(N_242));
    MX2 \address_RNO_0[20]  (.A(psram_address_c[20]), .B(
        \address_5[20] ), .S(un1_op_counter_1), .Y(N_283));
    DFN1 \data_reg[15]  (.D(N_50), .CLK(FAB_CLK), .Q(data_reg[15]));
    DFN1 \data_reg[8]  (.D(N_36), .CLK(FAB_CLK), .Q(data_reg[8]));
    NOR3A ac_counter_lb1_RNI2T2I (.A(ac_counter_lb1_net_1), .B(N_74), 
        .C(N_68), .Y(data_out_0_sqmuxa));
    NOR2B \data_reg_RNO_1[15]  (.A(N_186), .B(enable_net_1), .Y(
        \data_reg_6[15] ));
    NOR2B \data_out_RNO[13]  (.A(N_259), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[13]_net_1 ));
    MX2 \data_out_RNO_0[15]  (.A(data_from_cr[15]), .B(
        psram_data_in[15]), .S(data_out_0_sqmuxa), .Y(N_261));
    NOR2B \address_RNO[12]  (.A(N_275), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[12]_net_1 ));
    OR2A noe0_5_0 (.A(N_78), .B(N_87), .Y(noe0_5));
    DFN1 \data_out[11]  (.D(\data_out_RNO_0[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[11]));
    NOR3A op_counter_lb1_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_74), 
        .C(N_68), .Y(op_counter_lb1_RNO_net_1));
    DFN1 \data_reg[13]  (.D(N_46), .CLK(FAB_CLK), .Q(data_reg[13]));
    NOR2B \data_reg_RNO_1[3]  (.A(N_174), .B(enable_net_1), .Y(
        \data_reg_6[3] ));
    MX2 \data_reg_RNO_0[1]  (.A(data_reg[1]), .B(\data_reg_6[1] ), .S(
        N_13), .Y(N_227));
    MX2 \address_RNO_0[23]  (.A(psram_address_c[23]), .B(
        \address_5[23] ), .S(un1_op_counter_1), .Y(N_286));
    DFN1 \data_reg[5]  (.D(\data_reg_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        data_reg[5]));
    AO1D enable_RNIGIUF (.A(noe0_5_0_o2_0), .B(N_71), .C(N_10_1), .Y(
        N_10));
    DFN1 \address[1]  (.D(\address_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        psram_address_c[1]));
    XA1C \ac_counter_RNO[3]  (.A(\ac_counter[3]_net_1 ), .B(N_82), .C(
        N_207), .Y(N_58));
    DFN1 enable (.D(enable_RNO_net_1), .CLK(FAB_CLK), .Q(enable_net_1));
    NOR2B \data_reg_RNO_1[6]  (.A(N_177), .B(enable_net_1), .Y(
        \data_reg_6[6] ));
    NOR2B \data_reg_RNO_1[11]  (.A(N_182), .B(enable_net_1), .Y(
        \data_reg_6[11] ));
    OR2 nwe_5_0 (.A(N_78), .B(N_87), .Y(nwe_5));
    NOR3A enable_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_98), .C(N_97), 
        .Y(enable_RNO_net_1));
    MX2 \data_out_RNO_0[10]  (.A(data_from_cr[10]), .B(
        psram_data_in[10]), .S(data_out_0_sqmuxa), .Y(N_256));
    DFN1 \data_out[13]  (.D(\data_out_RNO_0[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[13]));
    NOR2B \data_out_RNO[12]  (.A(N_258), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[12]_net_1 ));
    DFN1 op_counter_lb1 (.D(op_counter_lb1_RNO_net_1), .CLK(FAB_CLK), 
        .Q(op_counter_lb1_net_1));
    MX2 \address_RNO_0[10]  (.A(psram_address_c[10]), .B(
        \address_5[10] ), .S(un1_op_counter_1), .Y(N_273));
    NOR2B \address_RNO[20]  (.A(N_283), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[20]_net_1 ));
    MX2 \data_reg_RNO_2[3]  (.A(reg_addr[3]), .B(data_to_cr[3]), .S(
        ac_counter_lb1_net_1), .Y(N_174));
    MX2 \data_out_RNO_0[13]  (.A(data_from_cr[13]), .B(
        psram_data_in[13]), .S(data_out_0_sqmuxa), .Y(N_259));
    NOR2 \op_counter_RNO[2]  (.A(op_counter_n2_i_0), .B(N_3), .Y(N_63));
    MX2 \data_reg_RNO_2[12]  (.A(data_to_cr[12]), .B(reg_addr[12]), .S(
        data_reg_1_sqmuxa), .Y(N_183));
    NOR2B \address_RNO_1[20]  (.A(max_addr[20]), .B(enable_net_1), .Y(
        \address_5[20] ));
    NOR2B \data_reg_RNO[12]  (.A(N_238), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_44));
    MX2 \data_reg_RNO_2[8]  (.A(reg_addr[8]), .B(data_to_cr[8]), .S(
        ac_counter_lb1_net_1), .Y(N_179));
    MX2 \data_out_RNO_0[1]  (.A(data_from_cr[1]), .B(psram_data_in[1]), 
        .S(data_out_0_sqmuxa), .Y(N_247));
    NOR2B \address_RNO_1[10]  (.A(max_addr[10]), .B(enable_net_1), .Y(
        \address_5[10] ));
    MX2 \data_reg_RNO_0[7]  (.A(data_reg[7]), .B(\data_reg_6[7] ), .S(
        N_13), .Y(N_233));
    DFN1 \data_reg[12]  (.D(N_44), .CLK(FAB_CLK), .Q(data_reg[12]));
    DFN1 \data_out[0]  (.D(\data_out_RNO_0[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[0]));
    MX2 \address_RNO_0[13]  (.A(psram_address_c[13]), .B(
        \address_5[13] ), .S(un1_op_counter_1), .Y(N_276));
    NOR2B \address_RNO[15]  (.A(N_278), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\address_RNO[15]_net_1 ));
    XA1B \ac_counter_RNO[1]  (.A(\ac_counter[0]_net_1 ), .B(
        \ac_counter[1]_net_1 ), .C(N_207), .Y(N_54));
    NOR2B \address_RNO_1[23]  (.A(max_addr[23]), .B(enable_net_1), .Y(
        \address_5[23] ));
    MX2 \address_RNO_0[21]  (.A(psram_address_c[21]), .B(
        \address_5[21] ), .S(un1_op_counter_1), .Y(N_284));
    NOR2B \data_out_RNO[2]  (.A(N_248), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO_0[2]_net_1 ));
    OAI1 enable_RNIEAE8 (.A(N_74), .B(N_68), .C(enable_net_1), .Y(
        N_10_1));
    MX2 \data_reg_RNO_0[8]  (.A(data_reg[8]), .B(\data_reg_6[8] ), .S(
        N_13), .Y(N_234));
    NOR2B \address_RNO_1[13]  (.A(max_addr[13]), .B(enable_net_1), .Y(
        \address_5[13] ));
    MX2 \data_reg_RNO_0[0]  (.A(data_reg[0]), .B(\data_reg_6[0] ), .S(
        N_13), .Y(N_226));
    DFN1 ac_counter_lb1 (.D(ac_counter_lb1_RNO_net_1), .CLK(FAB_CLK), 
        .Q(ac_counter_lb1_net_1));
    NOR2B \data_reg_RNO[7]  (.A(N_233), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[7]_net_1 ));
    DFN1 \data_out[6]  (.D(\data_out_RNO_0[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(data_from_cr[6]));
    DFN1E1 \ac_counter[0]  (.D(N_102), .CLK(FAB_CLK), .E(N_3), .Q(
        \ac_counter[0]_net_1 ));
    NOR2 \op_counter_RNO[3]  (.A(op_counter_n3_i_1), .B(N_3), .Y(N_65));
    NOR2B \data_reg_RNO[3]  (.A(N_229), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_reg_RNO[3]_net_1 ));
    NOR2B \address_RNO_1[9]  (.A(max_addr[9]), .B(enable_net_1), .Y(
        \address_5[9] ));
    MX2 \address_RNO_0[0]  (.A(psram_address_c[0]), .B(\address_5[0] ), 
        .S(un1_op_counter_1), .Y(N_263));
    MX2 \data_reg_RNO_0[12]  (.A(data_reg[12]), .B(\data_reg_6[12] ), 
        .S(N_13), .Y(N_238));
    OR2 ac_counter_lb1_RNIJVME (.A(N_72), .B(ac_counter_lb1_net_1), .Y(
        N_207));
    
endmodule


module AHB(
       CoreAHBLite_0_AHBmslave5_HRDATA,
       data_from_cr,
       max_addr_12,
       max_addr_0,
       max_addr_2,
       max_addr_10,
       max_addr_24,
       max_addr_23,
       max_addr_22,
       max_addr_21,
       max_addr_20,
       max_addr_19,
       max_addr_18,
       max_addr_17,
       max_addr_16,
       max_addr_15,
       max_addr_14,
       max_addr_13,
       max_addr_11,
       max_addr_9,
       max_addr_8,
       max_addr_7,
       max_addr_6,
       max_addr_5,
       max_addr_4,
       max_addr_3,
       max_addr_1,
       CoreAHBLite_0_AHBmslave5_HWDATA,
       reg_addr,
       CoreAHBLite_0_AHBmslave5_HADDR,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       data_to_cr,
       CAHBLTl0ll,
       CAHBLTOO0l,
       FAB_CLK,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       dt_req,
       dt_ack,
       start_0_0,
       CAHBLTllIl113,
       CoreAHBLite_0_AHBmslave5_HREADY_i_m,
       dt_rw,
       MSS_CORE2_0_M2F_RESET_N,
       CAHBLTO1ll,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CAHBLTI1lII,
       CAHBLTIIlI_iv
    );
output [31:0] CoreAHBLite_0_AHBmslave5_HRDATA;
input  [15:0] data_from_cr;
output max_addr_12;
output max_addr_0;
output max_addr_2;
output max_addr_10;
output max_addr_24;
output max_addr_23;
output max_addr_22;
output max_addr_21;
output max_addr_20;
output max_addr_19;
output max_addr_18;
output max_addr_17;
output max_addr_16;
output max_addr_15;
output max_addr_14;
output max_addr_13;
output max_addr_11;
output max_addr_9;
output max_addr_8;
output max_addr_7;
output max_addr_6;
output max_addr_5;
output max_addr_4;
output max_addr_3;
output max_addr_1;
input  [31:0] CoreAHBLite_0_AHBmslave5_HWDATA;
output [15:0] reg_addr;
input  [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
input  [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
output [15:0] data_to_cr;
input  [1:1] CAHBLTl0ll;
input  [1:0] CAHBLTOO0l;
input  FAB_CLK;
input  CoreAHBLite_0_AHBmslave5_HWRITE;
output dt_req;
input  dt_ack;
input  start_0_0;
input  CAHBLTllIl113;
output CoreAHBLite_0_AHBmslave5_HREADY_i_m;
output dt_rw;
input  MSS_CORE2_0_M2F_RESET_N;
input  CAHBLTO1ll;
output CoreAHBLite_0_AHBmslave5_HREADY;
input  CAHBLTI1lII;
input  CAHBLTIIlI_iv;

    wire hwrite_reg4_4, hwrite_reg4_2, hwrite_reg4_1, 
        \hrdata_reg_17_iv_1[14] , hrdata_reg_1_sqmuxa, 
        \operation_m[14] , \hrdata_reg_17_iv_0[14] , 
        \data_out[14]_net_1 , hrdata_reg_2_sqmuxa, hrdata_reg_5_sqmuxa, 
        \hrdata_reg_17_iv_1[2] , \operation_m[2] , 
        \hrdata_reg_17_iv_0[2] , \data_out[2]_net_1 , N_118, 
        \hrdata_reg_17_iv_1[4] , \operation_m[4] , 
        \hrdata_reg_17_iv_0[4] , \data_out[4]_net_1 , 
        \hrdata_reg_17_iv_1[6] , \operation_m[6] , 
        \hrdata_reg_17_iv_0[6] , \data_out[6]_net_1 , 
        \hrdata_reg_17_iv_1[9] , \operation_m[9] , 
        \hrdata_reg_17_iv_0[9] , \data_out[9]_net_1 , 
        \hrdata_reg_17_iv_1[12] , \operation_m[12] , 
        \hrdata_reg_17_iv_0[12] , \data_out[12]_net_1 , 
        \hrdata_reg_17_iv_1[1] , \data_out[1]_net_1 , 
        \psram_addr_m[1] , \hrdata_reg_17_iv_0[1] , N_120, 
        \data_in_m[1] , \hrdata_reg_17_iv_1[7] , \operation_m[7] , 
        \hrdata_reg_17_iv_0[7] , \data_out[7]_net_1 , 
        hrdata_reg_6_sqmuxa, \hrdata_reg_17_iv_1[0] , \operation_m[0] , 
        \hrdata_reg_17_iv_0[0] , \data_out[0]_net_1 , 
        \hrdata_reg_cnst_m[0] , \hrdata_reg_17_iv_1[10] , 
        \operation_m[10] , \hrdata_reg_17_iv_0[10] , 
        \data_out[10]_net_1 , \hrdata_reg_17_iv_1[13] , 
        \operation_m[13] , \hrdata_reg_17_iv_0[13] , 
        \data_out[13]_net_1 , \hrdata_reg_17_iv_1[5] , 
        \operation_m[5] , \hrdata_reg_17_iv_0[5] , \data_out[5]_net_1 , 
        \hrdata_reg_17_iv_1[15] , \operation_m[15] , 
        \hrdata_reg_17_iv_0[15] , \data_out[15]_net_1 , 
        \hrdata_reg_17_iv_1[8] , \operation_m[8] , 
        \hrdata_reg_17_iv_0[8] , \data_out[8]_net_1 , 
        \hrdata_reg_17_iv_0_0[11] , N_69, \hrdata_reg_17_iv_0_0[3] , 
        N_73, \hrdata_reg_cnst_m_0[0] , un1_haddr_reg_8_1, 
        hrdata_reg_4_sqmuxa_0_a2_1_0, \haddr_reg[9]_net_1 , 
        hrdata_reg_0_sqmuxa_i_a2_0, fsm_net_1, hwrite_reg_net_1, 
        un1_haddr_reg_5_0_a2_1, \haddr_reg[4]_net_1 , N_97, 
        hrdata_reg_0_sqmuxa_i_a2_0_1, hrdata_reg_0_sqmuxa_i_a2_1_2, 
        \haddr_reg[8]_net_1 , \haddr_reg[1]_net_1 , 
        hrdata_reg_0_sqmuxa_i_a2_1_1, \haddr_reg[6]_net_1 , 
        \haddr_reg[7]_net_1 , hrdata_reg_0_sqmuxa_i_a2_1_0, 
        \haddr_reg[0]_net_1 , \haddr_reg[5]_net_1 , N_87, 
        un1_haddr_reg_9, \hrdata_reg_17[0] , \psram_addr_m[0] , 
        \haddr_reg[2]_net_1 , \haddr_reg[3]_net_1 , N_95, 
        \hrdata_reg_17[1] , \operation_m[1] , \hrdata_reg_17[31] , 
        N_62, N_63, N_64, \hrdata_reg_17[3] , N_72, N_74, N_84, N_57, 
        N_429, N_56, \hrdata_reg_17[11] , N_68, N_70, un1_haddr_reg_5, 
        \hrdata_reg_17[2] , \psram_addr_m[2] , \hrdata_reg_17[4] , 
        \psram_addr_m[4] , \hrdata_reg_17[5] , \psram_addr_m[5] , 
        \hrdata_reg_17[6] , \psram_addr_m[6] , \hrdata_reg_17[9] , 
        \psram_addr_m[9] , \hrdata_reg_17[13] , \psram_addr_m[13] , 
        \hrdata_reg_17[7] , \psram_addr_m[7] , \hrdata_reg_17[8] , 
        \psram_addr_m[8] , \hrdata_reg_17[10] , \psram_addr_m[10] , 
        \hrdata_reg_17[12] , \psram_addr_m[12] , \hrdata_reg_17[14] , 
        \psram_addr_m[14] , \hrdata_reg_17[15] , \psram_addr_m[15] , 
        hwrite_reg4, N_174, N_176, fsm_0_sqmuxa, N_177, N_178, N_179, 
        N_180, N_181, N_182, N_183, N_185, N_187, operation5, N_190, 
        N_191, N_192, N_193, N_194, N_195, N_197, N_199, N_200, N_201, 
        N_202, N_203, \operation[17]_net_1 , N_204, 
        \operation[18]_net_1 , N_205, \operation[19]_net_1 , N_207, 
        \operation[21]_net_1 , N_208, \operation[22]_net_1 , N_209, 
        \operation[23]_net_1 , N_210, \operation[24]_net_1 , N_211, 
        \operation[25]_net_1 , N_212, \operation[26]_net_1 , N_213, 
        \operation[27]_net_1 , N_214, \operation[28]_net_1 , N_215, 
        \operation[29]_net_1 , N_216, \operation[30]_net_1 , N_217, 
        \operation[31]_net_1 , N_219, psram_addr5, N_221, N_222, N_223, 
        N_224, N_225, N_226, N_227, N_229, N_231, N_232, N_233, N_234, 
        N_235, N_236, N_237, N_238, N_239, N_240, N_241, N_242, N_243, 
        \max_addr[25] , N_244, \max_addr[26] , N_245, \max_addr[27] , 
        N_246, \max_addr[28] , N_247, \max_addr[29] , N_248, 
        \max_addr[30] , N_249, \max_addr[31] , N_251, data_in7, N_252, 
        N_255, N_256, N_257, N_258, N_259, N_261, N_263, N_264, N_265, 
        N_267, N_4, N_268, N_270, N_271, N_272, N_273, N_274, N_275, 
        N_277, \data_out[11]_net_1 , N_279, N_280, data_in_sel_net_1, 
        busy_net_1, psram_addr_sel_net_1, data_in_sel_1_sqmuxa, 
        operation_sel_2_sqmuxa, hrdata_reg_4_sqmuxa, 
        psram_addr_sel_2_sqmuxa, hrdata_reg_3_sqmuxa, N_59, N_61, 
        operation_sel_net_1, \hrdata_reg_17[16] , \hrdata_reg_17[24] , 
        un1_haddr_reg_6, \operation_m[17] , \hrdata_reg_17[17] , 
        \psram_addr_m[18] , \hrdata_reg_17[18] , \operation_m[19] , 
        \hrdata_reg_17[19] , \operation_m[21] , \hrdata_reg_17[21] , 
        \operation_m[22] , \hrdata_reg_17[22] , \psram_addr_m[23] , 
        \hrdata_reg_17[23] , \operation_m[25] , \hrdata_reg_17[25] , 
        \psram_addr_m[26] , \hrdata_reg_17[26] , \operation_m[27] , 
        \hrdata_reg_17[27] , \operation_m[28] , \hrdata_reg_17[28] , 
        \psram_addr_m[29] , \hrdata_reg_17[29] , \psram_addr_m[30] , 
        \hrdata_reg_17[30] , \haddr_reg_RNO[3]_net_1 , 
        \haddr_reg_RNO[4]_net_1 , \haddr_reg_RNO[5]_net_1 , 
        \haddr_reg_RNO[6]_net_1 , \haddr_reg_RNO[7]_net_1 , 
        \haddr_reg_RNO[9]_net_1 , fsm_0_sqmuxa_1, hready_reg_RNO_net_1, 
        \data_out_RNO[1]_net_1 , \data_out_RNO[2]_net_1 , 
        \data_out_RNO[4]_net_1 , \data_out_RNO[5]_net_1 , 
        \data_out_RNO[6]_net_1 , \data_out_RNO[7]_net_1 , 
        \data_out_RNO[8]_net_1 , \data_out_RNO[9]_net_1 , 
        \data_out_RNO[11]_net_1 , \data_out_RNO[13]_net_1 , 
        \data_out_RNO[14]_net_1 , \data_in_RNO[1]_net_1 , 
        \data_in_RNO[2]_net_1 , \data_in_RNO[5]_net_1 , 
        \data_in_RNO[6]_net_1 , \data_in_RNO[7]_net_1 , 
        \data_in_RNO[8]_net_1 , \data_in_RNO[9]_net_1 , 
        \data_in_RNO[11]_net_1 , \data_in_RNO[13]_net_1 , 
        \data_in_RNO[14]_net_1 , \data_in_RNO[15]_net_1 , 
        \psram_addr_RNO[1]_net_1 , \psram_addr_RNO[3]_net_1 , 
        \psram_addr_RNO[4]_net_1 , \psram_addr_RNO[5]_net_1 , 
        \psram_addr_RNO[6]_net_1 , \psram_addr_RNO[7]_net_1 , 
        \psram_addr_RNO[8]_net_1 , \psram_addr_RNO[9]_net_1 , 
        \psram_addr_RNO[11]_net_1 , \psram_addr_RNO[13]_net_1 , 
        \psram_addr_RNO[14]_net_1 , \psram_addr_RNO[15]_net_1 , 
        \psram_addr_RNO[16]_net_1 , \psram_addr_RNO[17]_net_1 , 
        \psram_addr_RNO[18]_net_1 , \psram_addr_RNO[19]_net_1 , 
        \psram_addr_RNO[20]_net_1 , \psram_addr_RNO[21]_net_1 , 
        \psram_addr_RNO[22]_net_1 , \psram_addr_RNO[23]_net_1 , 
        \psram_addr_RNO[24]_net_1 , \psram_addr_RNO[25]_net_1 , 
        \psram_addr_RNO[26]_net_1 , \psram_addr_RNO[27]_net_1 , 
        \psram_addr_RNO[28]_net_1 , \psram_addr_RNO[29]_net_1 , 
        \psram_addr_RNO[30]_net_1 , \psram_addr_RNO[31]_net_1 , 
        \operation_RNO[1]_net_1 , \operation_RNO[4]_net_1 , 
        \operation_RNO[5]_net_1 , \operation_RNO[6]_net_1 , 
        \operation_RNO[7]_net_1 , \operation_RNO[8]_net_1 , 
        \operation_RNO[9]_net_1 , \operation_RNO[11]_net_1 , 
        \operation_RNO[13]_net_1 , \operation_RNO[14]_net_1 , 
        \operation_RNO[15]_net_1 , \operation_RNO[16]_net_1 , 
        \operation_RNO[17]_net_1 , \operation_RNO[18]_net_1 , 
        \operation_RNO[19]_net_1 , \operation_RNO[21]_net_1 , 
        \operation_RNO[22]_net_1 , \operation_RNO[23]_net_1 , 
        \operation_RNO[24]_net_1 , \operation_RNO[25]_net_1 , 
        \operation_RNO[26]_net_1 , \operation_RNO[27]_net_1 , 
        \operation_RNO[28]_net_1 , \operation_RNO[29]_net_1 , 
        \operation_RNO[30]_net_1 , \operation_RNO[31]_net_1 , 
        \haddr_reg_RNO[0]_net_1 , \haddr_reg_RNO[1]_net_1 , 
        \haddr_reg_RNO[2]_net_1 , \operation_RNO[0]_net_1 , N_186, 
        \psram_addr_RNO[0]_net_1 , N_218, \data_in_RNO[0]_net_1 , 
        N_250, \data_out_RNO[0]_net_1 , N_266, 
        \haddr_reg_RNO[8]_net_1 , N_184, N_65, 
        \data_out_RNO[15]_net_1 , N_281, \data_out_RNO[12]_net_1 , 
        N_278, \data_out_RNO[3]_net_1 , N_269, N_24, dt_req_RNO_net_1, 
        \data_out[3]_net_1 , \data_in_RNO[3]_net_1 , N_253, 
        \data_out_RNO[10]_net_1 , N_276, \operation_RNO[12]_net_1 , 
        N_198, \psram_addr_RNO[12]_net_1 , N_230, 
        \data_in_RNO[12]_net_1 , N_262, \data_in_RNO[4]_net_1 , N_254, 
        N_206, \operation[20]_net_1 , \psram_addr_m[20] , 
        \hrdata_reg_17[20] , \operation_RNO[20]_net_1 , 
        \operation_RNO[3]_net_1 , N_189, hwrite_reg_RNO_net_1, N_175, 
        N_196, N_228, \psram_addr_RNO[10]_net_1 , 
        \operation_RNO[10]_net_1 , \operation_RNO[2]_net_1 , N_188, 
        \psram_addr_RNO[2]_net_1 , N_220, \data_in_RNO[10]_net_1 , 
        N_260, GND, VCC, GND_0, VCC_0;
    
    MX2 \operation_RNO_0[3]  (.A(reg_addr[3]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[3]), .S(operation5), .Y(N_189));
    NOR2B \psram_addr_RNO[16]  (.A(N_234), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[16]_net_1 ));
    DFN1 \operation[4]  (.D(\operation_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[4]));
    MX2 \psram_addr_RNO_0[31]  (.A(\max_addr[31] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[31]), .S(psram_addr5), .Y(
        N_249));
    NOR2B \operation_RNO[1]  (.A(N_187), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[1]_net_1 ));
    DFN1E1 \hrdata_reg[7]  (.D(\hrdata_reg_17[7] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[7]));
    DFN1 \data_in[2]  (.D(\data_in_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[2]));
    OR2A hready_reg_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_174), .Y(
        hready_reg_RNO_net_1));
    AO1 \hrdata_reg_RNO_2[1]  (.A(\data_out[1]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(\psram_addr_m[1] ), .Y(
        \hrdata_reg_17_iv_1[1] ));
    OR3 \hrdata_reg_RNO[7]  (.A(\hrdata_reg_17_iv_0[7] ), .B(
        \psram_addr_m[7] ), .C(\hrdata_reg_17_iv_1[7] ), .Y(
        \hrdata_reg_17[7] ));
    AO1 \hrdata_reg_RNO[17]  (.A(max_addr_17), .B(hrdata_reg_3_sqmuxa), 
        .C(\operation_m[17] ), .Y(\hrdata_reg_17[17] ));
    NOR2B \haddr_reg_RNI3TRG3[4]  (.A(un1_haddr_reg_5_0_a2_1), .B(N_84)
        , .Y(un1_haddr_reg_5));
    NOR2B \operation_RNO[11]  (.A(N_197), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[11]_net_1 ));
    AO1 \hrdata_reg_RNO_0[7]  (.A(\data_out[7]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_6_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[7] ));
    MX2 \data_in_RNO_0[2]  (.A(data_to_cr[2]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[2]), .S(data_in7), .Y(N_252));
    DFN1 hready_reg (.D(hready_reg_RNO_net_1), .CLK(FAB_CLK), .Q(
        CoreAHBLite_0_AHBmslave5_HREADY));
    DFN1E1 \hrdata_reg[30]  (.D(\hrdata_reg_17[30] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[30]));
    DFN1E1 \hrdata_reg[17]  (.D(\hrdata_reg_17[17] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[17]));
    NOR2B \data_in_RNO[5]  (.A(N_255), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[5]_net_1 ));
    NOR3B \haddr_reg_RNIS5013[4]  (.A(N_84), .B(
        hrdata_reg_0_sqmuxa_i_a2_0), .C(\haddr_reg[4]_net_1 ), .Y(N_56)
        );
    MX2 \psram_addr_RNO_0[30]  (.A(\max_addr[30] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[30]), .S(psram_addr5), .Y(
        N_248));
    NOR2B \data_in_RNO[8]  (.A(N_258), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[8]_net_1 ));
    MX2 \operation_RNO_0[26]  (.A(\operation[26]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[26]), .S(operation5), .Y(N_212)
        );
    AO1 \hrdata_reg_RNO_2[3]  (.A(data_to_cr[3]), .B(
        hrdata_reg_1_sqmuxa), .C(N_73), .Y(\hrdata_reg_17_iv_0_0[3] ));
    NOR2B \hrdata_reg_RNO_1[15]  (.A(max_addr_15), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[15] ));
    AOI1 \hrdata_reg_RNO_3[1]  (.A(un1_haddr_reg_8_1), .B(N_95), .C(
        un1_haddr_reg_5), .Y(N_120));
    NOR2A \haddr_reg_RNI7CIM[1]  (.A(\haddr_reg[8]_net_1 ), .B(
        \haddr_reg[1]_net_1 ), .Y(hrdata_reg_0_sqmuxa_i_a2_1_2));
    NOR2B \psram_addr_RNO[31]  (.A(N_249), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[31]_net_1 ));
    DFN1E1 \hrdata_reg[19]  (.D(\hrdata_reg_17[19] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[19]));
    MX2 \haddr_reg_RNO_0[1]  (.A(\haddr_reg[1]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[1]), .S(fsm_0_sqmuxa), .Y(N_177)
        );
    AO1 \hrdata_reg_RNO_0[12]  (.A(\data_out[12]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_5_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[12] ));
    DFN1 \psram_addr[1]  (.D(\psram_addr_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_1));
    DFN1 \operation[5]  (.D(\operation_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[5]));
    AO1 \hrdata_reg_RNO[16]  (.A(dt_rw), .B(hrdata_reg_4_sqmuxa), .C(
        N_59), .Y(\hrdata_reg_17[16] ));
    DFN1 \data_out[8]  (.D(\data_out_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[8]_net_1 ));
    NOR2B \data_in_RNO[15]  (.A(N_265), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[15]_net_1 ));
    DFN1 \data_in[12]  (.D(\data_in_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[12]));
    NOR2B \hrdata_reg_RNO_3[9]  (.A(reg_addr[9]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[9] ));
    MX2 \operation_RNO_0[30]  (.A(\operation[30]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[30]), .S(operation5), .Y(N_216)
        );
    DFN1 \haddr_reg[7]  (.D(\haddr_reg_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[7]_net_1 ));
    DFN1E1 \hrdata_reg[16]  (.D(\hrdata_reg_17[16] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[16]));
    NOR2B \haddr_reg_RNO[0]  (.A(N_176), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[0]_net_1 ));
    MX2 \data_out_RNO_0[11]  (.A(data_from_cr[11]), .B(
        \data_out[11]_net_1 ), .S(N_4), .Y(N_277));
    DFN1 \data_in[9]  (.D(\data_in_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[9]));
    DFN1 \operation[22]  (.D(\operation_RNO[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[22]_net_1 ));
    MX2 \psram_addr_RNO_0[13]  (.A(max_addr_13), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[13]), .S(psram_addr5), .Y(
        N_231));
    NOR2B \psram_addr_RNO[22]  (.A(N_240), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[22]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[19]  (.A(\operation[19]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[19] ));
    MX2 \haddr_reg_RNO_0[8]  (.A(\haddr_reg[8]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[8]), .S(fsm_0_sqmuxa), .Y(N_184)
        );
    MX2 \operation_RNO_0[18]  (.A(\operation[18]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[18]), .S(operation5), .Y(N_204)
        );
    NOR2B \hrdata_reg_RNO_3[10]  (.A(reg_addr[10]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[10] ));
    AO1 \hrdata_reg_RNO_0[8]  (.A(\data_out[8]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_5_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[8] ));
    NOR2B \data_out_RNO[1]  (.A(N_267), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[1]_net_1 ));
    AO1 \hrdata_reg_RNO_2[2]  (.A(data_to_cr[2]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[2] ), .Y(
        \hrdata_reg_17_iv_1[2] ));
    NOR2B \hrdata_reg_RNO_1[13]  (.A(max_addr_13), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[13] ));
    AO1 \hrdata_reg_RNO[29]  (.A(\operation[29]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[29] ), .Y(
        \hrdata_reg_17[29] ));
    DFN1 \data_out[12]  (.D(\data_out_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[12]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[24]  (.A(max_addr_24), .B(
        hrdata_reg_3_sqmuxa), .Y(N_61));
    MX2 \operation_RNO_0[0]  (.A(reg_addr[0]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[0]), .S(operation5), .Y(N_186));
    NOR2B \psram_addr_RNO[2]  (.A(N_220), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[2]_net_1 ));
    NOR2B \haddr_reg_RNO[2]  (.A(N_178), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[2]_net_1 ));
    AO1 \hrdata_reg_RNO_2[14]  (.A(data_to_cr[14]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[14] ), .Y(
        \hrdata_reg_17_iv_1[14] ));
    DFN1 \operation[12]  (.D(\operation_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[12]));
    AO1B \hrdata_reg_RNO_0[4]  (.A(\data_out[4]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[4] ));
    NOR3B psram_addr_sel_RNIOP6S (.A(hwrite_reg_net_1), .B(
        psram_addr_sel_net_1), .C(busy_net_1), .Y(psram_addr5));
    DFN1 \psram_addr[17]  (.D(\psram_addr_RNO[17]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_17));
    NOR2A hwrite_reg_RNI4TVH (.A(fsm_net_1), .B(hwrite_reg_net_1), .Y(
        hrdata_reg_0_sqmuxa_i_a2_0));
    DFN1E1 \hrdata_reg[24]  (.D(\hrdata_reg_17[24] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[24]));
    DFN1E1 \hrdata_reg[10]  (.D(\hrdata_reg_17[10] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[10]));
    NOR2B \haddr_reg_RNO[9]  (.A(N_185), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[9]_net_1 ));
    DFN1 \data_out[5]  (.D(\data_out_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[5]_net_1 ));
    NOR2B \operation_RNO[31]  (.A(N_217), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[31]_net_1 ));
    DFN1E1 \hrdata_reg[8]  (.D(\hrdata_reg_17[8] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[8]));
    NOR2B \haddr_reg_RNIA52K3[4]  (.A(un1_haddr_reg_5), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(hrdata_reg_5_sqmuxa));
    DFN1 \psram_addr[22]  (.D(\psram_addr_RNO[22]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_22));
    OR3 \hrdata_reg_RNO[1]  (.A(\hrdata_reg_17_iv_0[1] ), .B(
        \operation_m[1] ), .C(\hrdata_reg_17_iv_1[1] ), .Y(
        \hrdata_reg_17[1] ));
    MX2 \data_in_RNO_0[5]  (.A(data_to_cr[5]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[5]), .S(data_in7), .Y(N_255));
    NOR2B \operation_RNO[13]  (.A(N_199), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[13]_net_1 ));
    DFN1 dt_req_inst_1 (.D(dt_req_RNO_net_1), .CLK(FAB_CLK), .Q(dt_req)
        );
    NOR2B \hrdata_reg_RNO_3[6]  (.A(reg_addr[6]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[6] ));
    DFN1 \data_out[1]  (.D(\data_out_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[1]_net_1 ));
    MX2 \psram_addr_RNO_0[29]  (.A(\max_addr[29] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[29]), .S(psram_addr5), .Y(
        N_247));
    DFN1 \psram_addr[30]  (.D(\psram_addr_RNO[30]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[30] ));
    DFN1E1 \hrdata_reg[28]  (.D(\hrdata_reg_17[28] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[28]));
    NOR2B \hrdata_reg_RNO_1[11]  (.A(max_addr_11), .B(
        hrdata_reg_3_sqmuxa), .Y(N_70));
    AO1A \hrdata_reg_RNO_0[1]  (.A(N_120), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\data_in_m[1] ), .Y(\hrdata_reg_17_iv_0[1] ));
    NOR2 \haddr_reg_RNI3SHM[0]  (.A(\haddr_reg[0]_net_1 ), .B(
        \haddr_reg[5]_net_1 ), .Y(hrdata_reg_0_sqmuxa_i_a2_1_0));
    MX2 \operation_RNO_0[22]  (.A(\operation[22]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[22]), .S(operation5), .Y(N_208)
        );
    MX2 \operation_RNO_0[11]  (.A(reg_addr[11]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[11]), .S(operation5), .Y(N_197)
        );
    NOR2B \operation_RNO[22]  (.A(N_208), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[22]_net_1 ));
    DFN1E1 \hrdata_reg[25]  (.D(\hrdata_reg_17[25] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[25]));
    MX2 \operation_RNO_0[19]  (.A(\operation[19]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[19]), .S(operation5), .Y(N_205)
        );
    NOR2B \data_out_RNO[0]  (.A(N_266), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[0]_net_1 ));
    NOR2B \hrdata_reg_RNO_1[3]  (.A(max_addr_3), .B(
        hrdata_reg_3_sqmuxa), .Y(N_74));
    MX2 \data_in_RNO_0[4]  (.A(data_to_cr[4]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[4]), .S(data_in7), .Y(N_254));
    NOR2B \psram_addr_RNO[30]  (.A(N_248), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[30]_net_1 ));
    MX2 \data_in_RNO_0[1]  (.A(data_to_cr[1]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[1]), .S(data_in7), .Y(N_251));
    NOR2B \hrdata_reg_RNO_3[2]  (.A(reg_addr[2]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[2] ));
    NOR2B \psram_addr_RNO[0]  (.A(N_218), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[0]_net_1 ));
    NOR2B \hrdata_reg_RNO_2[31]  (.A(\max_addr[31] ), .B(
        hrdata_reg_3_sqmuxa), .Y(N_64));
    MX2 \operation_RNO_0[23]  (.A(\operation[23]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[23]), .S(operation5), .Y(N_209)
        );
    OR3 \hrdata_reg_RNO[10]  (.A(\hrdata_reg_17_iv_0[10] ), .B(
        \psram_addr_m[10] ), .C(\hrdata_reg_17_iv_1[10] ), .Y(
        \hrdata_reg_17[10] ));
    NOR2B \operation_RNO[17]  (.A(N_203), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[17]_net_1 ));
    OR3 \hrdata_reg_RNO[15]  (.A(\hrdata_reg_17_iv_0[15] ), .B(
        \psram_addr_m[15] ), .C(\hrdata_reg_17_iv_1[15] ), .Y(
        \hrdata_reg_17[15] ));
    NOR2B \operation_RNO[15]  (.A(N_201), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[15]_net_1 ));
    DFN1 \data_out[10]  (.D(\data_out_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[10]_net_1 ));
    NOR2B \operation_RNO[24]  (.A(N_210), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[24]_net_1 ));
    NOR2B \psram_addr_RNO[12]  (.A(N_230), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[12]_net_1 ));
    NOR2B \hrdata_reg_RNO_4[1]  (.A(data_to_cr[1]), .B(
        hrdata_reg_1_sqmuxa), .Y(\data_in_m[1] ));
    AO1B \hrdata_reg_RNO_0[6]  (.A(\data_out[6]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[6] ));
    AO1 \hrdata_reg_RNO[18]  (.A(\operation[18]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[18] ), .Y(
        \hrdata_reg_17[18] ));
    NOR2B \haddr_reg_RNO[5]  (.A(N_181), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[5]_net_1 ));
    NOR2B \data_out_RNO[4]  (.A(N_270), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[4]_net_1 ));
    MX2 \psram_addr_RNO_0[27]  (.A(\max_addr[27] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[27]), .S(psram_addr5), .Y(
        N_245));
    DFN1 \haddr_reg[1]  (.D(\haddr_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[1]_net_1 ));
    NOR2B \psram_addr_RNO[5]  (.A(N_223), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[5]_net_1 ));
    MX2 \psram_addr_RNO_0[3]  (.A(max_addr_3), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[3]), .S(psram_addr5), .Y(N_221)
        );
    MX2 \operation_RNO_0[4]  (.A(reg_addr[4]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[4]), .S(operation5), .Y(N_190));
    DFN1E1 \hrdata_reg[23]  (.D(\hrdata_reg_17[23] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[23]));
    OAI1 \haddr_reg_RNID2U47[2]  (.A(un1_haddr_reg_5), .B(
        un1_haddr_reg_6), .C(MSS_CORE2_0_M2F_RESET_N), .Y(N_118));
    NOR2B \hrdata_reg_RNO_1[31]  (.A(busy_net_1), .B(
        hrdata_reg_2_sqmuxa), .Y(N_63));
    NOR2B \data_in_RNO[11]  (.A(N_261), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[11]_net_1 ));
    GND GND_i (.Y(GND));
    NOR2B \hrdata_reg_RNO_3[15]  (.A(reg_addr[15]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[15] ));
    DFN1 \data_in[7]  (.D(\data_in_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[7]));
    MX2 \data_in_RNO_0[6]  (.A(data_to_cr[6]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[6]), .S(data_in7), .Y(N_256));
    DFN1E1 \hrdata_reg[0]  (.D(\hrdata_reg_17[0] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[0]));
    DFN1E1 \hrdata_reg[3]  (.D(\hrdata_reg_17[3] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[3]));
    VCC VCC_i_0 (.Y(VCC_0));
    NOR2B \data_in_RNO[13]  (.A(N_263), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[13]_net_1 ));
    MX2 \psram_addr_RNO_0[4]  (.A(max_addr_4), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[4]), .S(psram_addr5), .Y(N_222)
        );
    AO1 \hrdata_reg_RNO_0[14]  (.A(\data_out[14]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_5_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[14] ));
    OR3 \hrdata_reg_RNO[3]  (.A(N_72), .B(N_74), .C(
        \hrdata_reg_17_iv_0_0[3] ), .Y(\hrdata_reg_17[3] ));
    DFN1E1 \hrdata_reg[21]  (.D(\hrdata_reg_17[21] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[21]));
    NOR2B \psram_addr_RNO[9]  (.A(N_227), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[9]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[26]  (.A(\max_addr[26] ), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[26] ));
    NOR3B hready_reg_RNICE4UN (.A(hwrite_reg4_2), .B(CAHBLTOO0l[1]), 
        .C(CAHBLTOO0l[0]), .Y(hwrite_reg4_4));
    DFN1 \data_out[2]  (.D(\data_out_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[2]_net_1 ));
    NOR2B \data_in_RNO[1]  (.A(N_251), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[1]_net_1 ));
    NOR2B \data_in_RNO[0]  (.A(N_250), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[0]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[3]  (.A(reg_addr[3]), .B(
        hrdata_reg_4_sqmuxa), .Y(N_72));
    NOR2B operation_sel_RNO (.A(fsm_net_1), .B(hrdata_reg_4_sqmuxa), 
        .Y(operation_sel_2_sqmuxa));
    OR3 \hrdata_reg_RNO[12]  (.A(\hrdata_reg_17_iv_0[12] ), .B(
        \psram_addr_m[12] ), .C(\hrdata_reg_17_iv_1[12] ), .Y(
        \hrdata_reg_17[12] ));
    AO1 \hrdata_reg_RNO[30]  (.A(\operation[30]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[30] ), .Y(
        \hrdata_reg_17[30] ));
    MX2 \psram_addr_RNO_0[0]  (.A(max_addr_0), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[0]), .S(psram_addr5), .Y(N_218)
        );
    DFN1 \psram_addr[15]  (.D(\psram_addr_RNO[15]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_15));
    NOR3B data_in_sel_RNI52031 (.A(hwrite_reg_net_1), .B(
        data_in_sel_net_1), .C(busy_net_1), .Y(data_in7));
    DFN1 \psram_addr[31]  (.D(\psram_addr_RNO[31]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[31] ));
    MX2 \operation_RNO_0[5]  (.A(reg_addr[5]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[5]), .S(operation5), .Y(N_191));
    NOR2B \hrdata_reg_RNO_3[13]  (.A(reg_addr[13]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[13] ));
    MX2 \operation_RNO_0[31]  (.A(\operation[31]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[31]), .S(operation5), .Y(N_217)
        );
    MX2 \data_out_RNO_0[9]  (.A(data_from_cr[9]), .B(
        \data_out[9]_net_1 ), .S(N_4), .Y(N_275));
    MX2 \operation_RNO_0[17]  (.A(\operation[17]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[17]), .S(operation5), .Y(N_203)
        );
    NOR2B \hrdata_reg_RNO_4[0]  (.A(reg_addr[0]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[0] ));
    OR2B dt_req_RNIPGR1 (.A(dt_req), .B(dt_ack), .Y(N_4));
    DFN1 \psram_addr[5]  (.D(\psram_addr_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_5));
    DFN1 \psram_addr[8]  (.D(\psram_addr_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_8));
    DFN1 \haddr_reg[5]  (.D(\haddr_reg_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[5]_net_1 ));
    DFN1 \operation[25]  (.D(\operation_RNO[25]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[25]_net_1 ));
    AO1 \hrdata_reg_RNO_2[7]  (.A(data_to_cr[7]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[7] ), .Y(
        \hrdata_reg_17_iv_1[7] ));
    NOR3B operation_sel_RNIIIQ01 (.A(hwrite_reg_net_1), .B(
        operation_sel_net_1), .C(busy_net_1), .Y(operation5));
    DFN1 \data_out[14]  (.D(\data_out_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[14]_net_1 ));
    NOR2B \psram_addr_RNO[23]  (.A(N_241), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[23]_net_1 ));
    NOR2B \operation_RNO[6]  (.A(N_192), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[6]_net_1 ));
    DFN1 \psram_addr[20]  (.D(\psram_addr_RNO[20]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_20));
    DFN1E1 \hrdata_reg[14]  (.D(\hrdata_reg_17[14] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[14]));
    NOR2B \haddr_reg_RNIF0GE[9]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \haddr_reg[9]_net_1 ), .Y(hrdata_reg_4_sqmuxa_0_a2_1_0));
    DFN1 \psram_addr[29]  (.D(\psram_addr_RNO[29]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[29] ));
    NOR2B \haddr_reg_RNIA52K3_3[2]  (.A(un1_haddr_reg_6), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(hrdata_reg_6_sqmuxa));
    MX2 \psram_addr_RNO_0[24]  (.A(max_addr_24), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[24]), .S(psram_addr5), .Y(
        N_242));
    NOR2B \operation_RNO[20]  (.A(N_206), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[20]_net_1 ));
    MX2 \data_in_RNO_0[13]  (.A(data_to_cr[13]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[13]), .S(data_in7), .Y(N_263));
    DFN1 \operation[15]  (.D(\operation_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[15]));
    OR3 \hrdata_reg_RNO[4]  (.A(\hrdata_reg_17_iv_0[4] ), .B(
        \psram_addr_m[4] ), .C(\hrdata_reg_17_iv_1[4] ), .Y(
        \hrdata_reg_17[4] ));
    MX2 \psram_addr_RNO_0[21]  (.A(max_addr_21), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[21]), .S(psram_addr5), .Y(
        N_239));
    MX2 \psram_addr_RNO_0[19]  (.A(max_addr_19), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[19]), .S(psram_addr5), .Y(
        N_237));
    NOR2B \psram_addr_RNO[4]  (.A(N_222), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[4]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[20]  (.A(max_addr_20), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[20] ));
    NOR3C \haddr_reg_RNIL4N32[0]  (.A(hrdata_reg_0_sqmuxa_i_a2_1_1), 
        .B(hrdata_reg_0_sqmuxa_i_a2_1_0), .C(
        hrdata_reg_0_sqmuxa_i_a2_1_2), .Y(N_84));
    MX2 \data_in_RNO_0[8]  (.A(data_to_cr[8]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[8]), .S(data_in7), .Y(N_258));
    NOR2B \psram_addr_RNO[25]  (.A(N_243), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[25]_net_1 ));
    NOR2B \operation_RNO[28]  (.A(N_214), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[28]_net_1 ));
    NOR2B \operation_RNO[26]  (.A(N_212), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[26]_net_1 ));
    NOR2B \hrdata_reg_RNO_3[11]  (.A(\data_out[11]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .Y(N_69));
    AO1 \hrdata_reg_RNO_2[10]  (.A(data_to_cr[10]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[10] ), .Y(
        \hrdata_reg_17_iv_1[10] ));
    VCC VCC_i (.Y(VCC));
    DFN1 \psram_addr[0]  (.D(\psram_addr_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_0));
    MX2 \data_out_RNO_0[8]  (.A(data_from_cr[8]), .B(
        \data_out[8]_net_1 ), .S(N_4), .Y(N_274));
    NOR2B \data_out_RNO[11]  (.A(N_277), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[11]_net_1 ));
    NOR2B \psram_addr_RNO[1]  (.A(N_219), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[1]_net_1 ));
    DFN1 \psram_addr[4]  (.D(\psram_addr_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_4));
    AO1B \hrdata_reg_RNO_0[5]  (.A(\data_out[5]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[5] ));
    MX2 \data_out_RNO_0[4]  (.A(data_from_cr[4]), .B(
        \data_out[4]_net_1 ), .S(N_4), .Y(N_270));
    DFN1 \psram_addr[26]  (.D(\psram_addr_RNO[26]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[26] ));
    AO1 \hrdata_reg_RNO[27]  (.A(\max_addr[27] ), .B(
        hrdata_reg_3_sqmuxa), .C(\operation_m[27] ), .Y(
        \hrdata_reg_17[27] ));
    DFN1E1 \hrdata_reg[18]  (.D(\hrdata_reg_17[18] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[18]));
    MX2 \psram_addr_RNO_0[20]  (.A(max_addr_20), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[20]), .S(psram_addr5), .Y(
        N_238));
    NOR2B \operation_RNO[5]  (.A(N_191), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[5]_net_1 ));
    NOR3B \haddr_reg_RNIA52K3_1[2]  (.A(N_87), .B(\haddr_reg[2]_net_1 )
        , .C(\haddr_reg[3]_net_1 ), .Y(hrdata_reg_2_sqmuxa));
    DFN1E1 \hrdata_reg[15]  (.D(\hrdata_reg_17[15] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[15]));
    NOR2B \hrdata_reg_RNO_1[12]  (.A(max_addr_12), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[12] ));
    DFN1 busy (.D(N_24), .CLK(FAB_CLK), .Q(busy_net_1));
    DFN1 \operation[27]  (.D(\operation_RNO[27]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[27]_net_1 ));
    NOR2B \hrdata_reg_RNO_1[9]  (.A(max_addr_9), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[9] ));
    DFN1E1 \hrdata_reg[31]  (.D(\hrdata_reg_17[31] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[31]));
    NOR2B \psram_addr_RNO[29]  (.A(N_247), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[29]_net_1 ));
    MX2 \operation_RNO_0[16]  (.A(dt_rw), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[16]), .S(operation5), .Y(N_202)
        );
    AO1 \hrdata_reg_RNO[26]  (.A(\operation[26]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[26] ), .Y(
        \hrdata_reg_17[26] ));
    MX2 \psram_addr_RNO_0[7]  (.A(max_addr_7), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[7]), .S(psram_addr5), .Y(N_225)
        );
    MX2 \operation_RNO_0[7]  (.A(reg_addr[7]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[7]), .S(operation5), .Y(N_193));
    NOR2A dt_req_RNO_0 (.A(start_0_0), .B(dt_ack), .Y(N_65));
    MX2 \haddr_reg_RNO_0[6]  (.A(\haddr_reg[6]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[6]), .S(fsm_0_sqmuxa), .Y(N_182)
        );
    DFN1 \psram_addr[24]  (.D(\psram_addr_RNO[24]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_24));
    NOR2B \operation_RNO[29]  (.A(N_215), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[29]_net_1 ));
    AO1 \hrdata_reg_RNO_0[0]  (.A(\data_out[0]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(\hrdata_reg_cnst_m[0] ), .Y(
        \hrdata_reg_17_iv_0[0] ));
    OR3 \hrdata_reg_RNO[13]  (.A(\hrdata_reg_17_iv_0[13] ), .B(
        \psram_addr_m[13] ), .C(\hrdata_reg_17_iv_1[13] ), .Y(
        \hrdata_reg_17[13] ));
    DFN1 \psram_addr[12]  (.D(\psram_addr_RNO[12]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_12));
    MX2 \data_out_RNO_0[5]  (.A(data_from_cr[5]), .B(
        \data_out[5]_net_1 ), .S(N_4), .Y(N_271));
    NOR2 \haddr_reg_RNIBSIM[6]  (.A(\haddr_reg[6]_net_1 ), .B(
        \haddr_reg[7]_net_1 ), .Y(hrdata_reg_0_sqmuxa_i_a2_1_1));
    DFN1 \operation[17]  (.D(\operation_RNO[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[17]_net_1 ));
    NOR2B \hrdata_reg_RNO_1[6]  (.A(max_addr_6), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[6] ));
    MX2 \psram_addr_RNO_0[17]  (.A(max_addr_17), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[17]), .S(psram_addr5), .Y(
        N_235));
    MX2 \data_out_RNO_0[14]  (.A(data_from_cr[14]), .B(
        \data_out[14]_net_1 ), .S(N_4), .Y(N_280));
    AO1B \hrdata_reg_RNO_0[9]  (.A(\data_out[9]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[9] ));
    NOR3C \hrdata_reg_RNO_6[0]  (.A(\haddr_reg[2]_net_1 ), .B(
        \haddr_reg[3]_net_1 ), .C(N_95), .Y(un1_haddr_reg_9));
    DFN1 \data_in[10]  (.D(\data_in_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[10]));
    NOR2B \hrdata_reg_RNO_0[16]  (.A(max_addr_16), .B(
        hrdata_reg_3_sqmuxa), .Y(N_59));
    NOR3C \haddr_reg_RNIA52K3[2]  (.A(\haddr_reg[3]_net_1 ), .B(N_87), 
        .C(\haddr_reg[2]_net_1 ), .Y(hrdata_reg_4_sqmuxa));
    NOR2B \operation_RNO[8]  (.A(N_194), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[8]_net_1 ));
    MX2 \data_out_RNO_0[7]  (.A(data_from_cr[7]), .B(
        \data_out[7]_net_1 ), .S(N_4), .Y(N_273));
    DFN1E1 \hrdata_reg[13]  (.D(\hrdata_reg_17[13] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[13]));
    NOR3B \haddr_reg_RNIA52K3_0[2]  (.A(\haddr_reg[3]_net_1 ), .B(N_87)
        , .C(\haddr_reg[2]_net_1 ), .Y(hrdata_reg_3_sqmuxa));
    DFN1 \operation[2]  (.D(\operation_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[2]));
    MX2 \haddr_reg_RNO_0[3]  (.A(\haddr_reg[3]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[3]), .S(fsm_0_sqmuxa), .Y(N_179)
        );
    NOR2B \data_in_RNO[2]  (.A(N_252), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[2]_net_1 ));
    NOR2B \psram_addr_RNO[6]  (.A(N_224), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[6]_net_1 ));
    NOR2B \psram_addr_RNO[21]  (.A(N_239), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[21]_net_1 ));
    DFN1 \operation[30]  (.D(\operation_RNO[30]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[30]_net_1 ));
    NOR2B \psram_addr_RNO[13]  (.A(N_231), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[13]_net_1 ));
    DFN1 \operation[6]  (.D(\operation_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[6]));
    NOR2B \hrdata_reg_RNO_0[27]  (.A(\operation[27]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[27] ));
    DFN1 \psram_addr[23]  (.D(\psram_addr_RNO[23]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_23));
    OR3 \hrdata_reg_RNO[14]  (.A(\hrdata_reg_17_iv_0[14] ), .B(
        \psram_addr_m[14] ), .C(\hrdata_reg_17_iv_1[14] ), .Y(
        \hrdata_reg_17[14] ));
    OR3 \hrdata_reg_RNO[11]  (.A(N_68), .B(N_70), .C(
        \hrdata_reg_17_iv_0_0[11] ), .Y(\hrdata_reg_17[11] ));
    DFN1 \psram_addr[21]  (.D(\psram_addr_RNO[21]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_21));
    DFN1E1 \hrdata_reg[11]  (.D(\hrdata_reg_17[11] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[11]));
    DFN1 \data_in[0]  (.D(\data_in_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[0]));
    MX2 \haddr_reg_RNO_0[9]  (.A(\haddr_reg[9]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[9]), .S(fsm_0_sqmuxa), .Y(N_185)
        );
    NOR2B \psram_addr_RNO[15]  (.A(N_233), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[15]_net_1 ));
    DFN1 hwrite_reg (.D(hwrite_reg_RNO_net_1), .CLK(FAB_CLK), .Q(
        hwrite_reg_net_1));
    DFN1 \operation[7]  (.D(\operation_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[7]));
    NOR2B \data_in_RNO[12]  (.A(N_262), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[12]_net_1 ));
    NOR2B \psram_addr_RNO[24]  (.A(N_242), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[24]_net_1 ));
    DFN1E1 \hrdata_reg[9]  (.D(\hrdata_reg_17[9] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[9]));
    DFN1 \psram_addr[9]  (.D(\psram_addr_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_9));
    MX2 \operation_RNO_0[2]  (.A(reg_addr[2]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[2]), .S(operation5), .Y(N_188));
    DFN1 data_in_sel (.D(data_in_sel_1_sqmuxa), .CLK(FAB_CLK), .Q(
        data_in_sel_net_1));
    NOR2B \data_in_RNO[3]  (.A(N_253), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[3]_net_1 ));
    NOR2B \operation_RNO[0]  (.A(N_186), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[0]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[25]  (.A(\operation[25]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[25] ));
    DFN1E1 \hrdata_reg[2]  (.D(\hrdata_reg_17[2] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[2]));
    NOR2B \hrdata_reg_RNO_0[30]  (.A(\max_addr[30] ), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[30] ));
    MX2 \operation_RNO_0[25]  (.A(\operation[25]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[25]), .S(operation5), .Y(N_211)
        );
    AO1 \hrdata_reg_RNO_2[15]  (.A(data_to_cr[15]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[15] ), .Y(
        \hrdata_reg_17_iv_1[15] ));
    NOR2B \data_out_RNO[9]  (.A(N_275), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[9]_net_1 ));
    MX2 \operation_RNO_0[20]  (.A(\operation[20]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[20]), .S(operation5), .Y(N_206)
        );
    DFN1 \operation[26]  (.D(\operation_RNO[26]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[26]_net_1 ));
    AO1 \hrdata_reg_RNO_0[10]  (.A(\data_out[10]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_5_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[10] ));
    MX2 \operation_RNO_0[12]  (.A(reg_addr[12]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[12]), .S(operation5), .Y(N_198)
        );
    NOR2B \haddr_reg_RNO[8]  (.A(N_184), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[8]_net_1 ));
    MX2 \data_out_RNO_0[2]  (.A(data_from_cr[2]), .B(
        \data_out[2]_net_1 ), .S(N_4), .Y(N_268));
    NOR2B \psram_addr_RNO[19]  (.A(N_237), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[19]_net_1 ));
    MX2 \data_out_RNO_0[0]  (.A(data_from_cr[0]), .B(
        \data_out[0]_net_1 ), .S(N_4), .Y(N_266));
    AO1 \hrdata_reg_RNO_2[5]  (.A(data_to_cr[5]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[5] ), .Y(
        \hrdata_reg_17_iv_1[5] ));
    AO1 \hrdata_reg_RNO[20]  (.A(\operation[20]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[20] ), .Y(
        \hrdata_reg_17[20] ));
    NOR2B data_in_sel_RNO (.A(fsm_net_1), .B(hrdata_reg_1_sqmuxa), .Y(
        data_in_sel_1_sqmuxa));
    DFN1 \operation[23]  (.D(\operation_RNO[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[23]_net_1 ));
    NOR2B \data_out_RNO[5]  (.A(N_271), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[5]_net_1 ));
    MX2 \psram_addr_RNO_0[14]  (.A(max_addr_14), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[14]), .S(psram_addr5), .Y(
        N_232));
    MX2 \operation_RNO_0[6]  (.A(reg_addr[6]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[6]), .S(operation5), .Y(N_192));
    NOR2B \operation_RNO[12]  (.A(N_198), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[12]_net_1 ));
    NOR2A \hrdata_reg_RNO_5[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        un1_haddr_reg_8_1), .Y(\hrdata_reg_cnst_m_0[0] ));
    DFN1 \data_out[15]  (.D(\data_out_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[15]_net_1 ));
    MX2 \data_in_RNO_0[14]  (.A(data_to_cr[14]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[14]), .S(data_in7), .Y(N_264));
    NOR2B \operation_RNO[3]  (.A(N_189), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[3]_net_1 ));
    DFN1 \operation[16]  (.D(\operation_RNO[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(dt_rw));
    AO1 \hrdata_reg_RNO[25]  (.A(\max_addr[25] ), .B(
        hrdata_reg_3_sqmuxa), .C(\operation_m[25] ), .Y(
        \hrdata_reg_17[25] ));
    DFN1 operation_sel (.D(operation_sel_2_sqmuxa), .CLK(FAB_CLK), .Q(
        operation_sel_net_1));
    NOR2B \hrdata_reg_RNO_1[0]  (.A(max_addr_0), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[0] ));
    MX2 \psram_addr_RNO_0[11]  (.A(max_addr_11), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[11]), .S(psram_addr5), .Y(
        N_229));
    DFN1 \data_out[3]  (.D(\data_out_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[3]_net_1 ));
    MX2 \operation_RNO_0[13]  (.A(reg_addr[13]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[13]), .S(operation5), .Y(N_199)
        );
    DFN1E1 \hrdata_reg[5]  (.D(\hrdata_reg_17[5] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[5]));
    NOR2B \data_in_RNO[6]  (.A(N_256), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[6]_net_1 ));
    MX2 \haddr_reg_RNO_0[2]  (.A(\haddr_reg[2]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[2]), .S(fsm_0_sqmuxa), .Y(N_178)
        );
    DFN1 \operation[20]  (.D(\operation_RNO[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[20]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[23]  (.A(max_addr_23), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[23] ));
    AO1 \hrdata_reg_RNO[28]  (.A(\max_addr[28] ), .B(
        hrdata_reg_3_sqmuxa), .C(\operation_m[28] ), .Y(
        \hrdata_reg_17[28] ));
    NOR2B \data_in_RNO[4]  (.A(N_254), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[4]_net_1 ));
    MX2 \psram_addr_RNO_0[25]  (.A(\max_addr[25] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[25]), .S(psram_addr5), .Y(
        N_243));
    AO1 \hrdata_reg_RNO_2[13]  (.A(data_to_cr[13]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[13] ), .Y(
        \hrdata_reg_17_iv_1[13] ));
    OR3 \hrdata_reg_RNO[31]  (.A(N_62), .B(N_63), .C(N_64), .Y(
        \hrdata_reg_17[31] ));
    DFN1 \operation[13]  (.D(\operation_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[13]));
    AO1A hready_reg_RNO_0 (.A(hwrite_reg4), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(fsm_net_1), .Y(N_174));
    NOR2B \hrdata_reg_RNO_5[1]  (.A(max_addr_1), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[1] ));
    AO1 \hrdata_reg_RNO_2[8]  (.A(data_to_cr[8]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[8] ), .Y(
        \hrdata_reg_17_iv_1[8] ));
    OR3 \hrdata_reg_RNO[9]  (.A(\hrdata_reg_17_iv_0[9] ), .B(
        \psram_addr_m[9] ), .C(\hrdata_reg_17_iv_1[9] ), .Y(
        \hrdata_reg_17[9] ));
    MX2 \haddr_reg_RNO_0[5]  (.A(\haddr_reg[5]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[5]), .S(fsm_0_sqmuxa), .Y(N_181)
        );
    MX2 \psram_addr_RNO_0[10]  (.A(max_addr_10), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[10]), .S(psram_addr5), .Y(
        N_228));
    MX2 \data_in_RNO_0[7]  (.A(data_to_cr[7]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[7]), .S(data_in7), .Y(N_257));
    NOR2B \psram_addr_RNO[27]  (.A(N_245), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[27]_net_1 ));
    NOR2B \data_out_RNO[8]  (.A(N_274), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[8]_net_1 ));
    NOR2B \psram_addr_RNO[20]  (.A(N_238), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[20]_net_1 ));
    MX2 \operation_RNO_0[24]  (.A(\operation[24]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[24]), .S(operation5), .Y(N_210)
        );
    NOR2B \psram_addr_RNO[11]  (.A(N_229), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[11]_net_1 ));
    NOR2B \hrdata_reg_RNO_3[12]  (.A(reg_addr[12]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[12] ));
    DFN1 \data_out[7]  (.D(\data_out_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[7]_net_1 ));
    DFN1 \operation[10]  (.D(\operation_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[10]));
    NOR2B \operation_RNO[14]  (.A(N_200), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[14]_net_1 ));
    AO1 \hrdata_reg_RNO_2[4]  (.A(data_to_cr[4]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[4] ), .Y(
        \hrdata_reg_17_iv_1[4] ));
    DFN1 \operation[24]  (.D(\operation_RNO[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[24]_net_1 ));
    NOR2B \hrdata_reg_RNO_1[14]  (.A(max_addr_14), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[14] ));
    DFN1E1 \hrdata_reg[22]  (.D(\hrdata_reg_17[22] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[22]));
    NOR2B hwrite_reg_RNO (.A(N_175), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        hwrite_reg_RNO_net_1));
    NOR2B \haddr_reg_RNI3TRG3[2]  (.A(N_97), .B(N_95), .Y(
        un1_haddr_reg_6));
    OR3 \hrdata_reg_RNO[6]  (.A(\hrdata_reg_17_iv_0[6] ), .B(
        \psram_addr_m[6] ), .C(\hrdata_reg_17_iv_1[6] ), .Y(
        \hrdata_reg_17[6] ));
    DFN1 \data_in[14]  (.D(\data_in_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[14]));
    MX2 hwrite_reg_RNO_0 (.A(hwrite_reg_net_1), .B(
        CoreAHBLite_0_AHBmslave5_HWRITE), .S(fsm_0_sqmuxa), .Y(N_175));
    NOR2B \operation_RNO[21]  (.A(N_207), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[21]_net_1 ));
    MX2 \psram_addr_RNO_0[9]  (.A(max_addr_9), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[9]), .S(psram_addr5), .Y(N_227)
        );
    NOR2B \psram_addr_RNO[7]  (.A(N_225), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[7]_net_1 ));
    NOR2B \hrdata_reg_RNO_1[1]  (.A(reg_addr[1]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[1] ));
    NOR2B \haddr_reg_RNO[6]  (.A(N_182), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[6]_net_1 ));
    NOR2B \operation_RNO[7]  (.A(N_193), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[7]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[21]  (.A(\operation[21]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[21] ));
    DFN1 \psram_addr[10]  (.D(\psram_addr_RNO[10]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_10));
    MX2 \data_in_RNO_0[3]  (.A(data_to_cr[3]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[3]), .S(data_in7), .Y(N_253));
    DFN1 \psram_addr[19]  (.D(\psram_addr_RNO[19]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_19));
    DFN1 \operation[14]  (.D(\operation_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[14]));
    AO1 \hrdata_reg_RNO_2[11]  (.A(data_to_cr[11]), .B(
        hrdata_reg_1_sqmuxa), .C(N_69), .Y(\hrdata_reg_17_iv_0_0[11] ));
    NOR2B \hrdata_reg_RNO_0[17]  (.A(\operation[17]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[17] ));
    AO1 \hrdata_reg_RNO[22]  (.A(max_addr_22), .B(hrdata_reg_3_sqmuxa), 
        .C(\operation_m[22] ), .Y(\hrdata_reg_17[22] ));
    NOR2B \psram_addr_RNO[14]  (.A(N_232), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[14]_net_1 ));
    NOR2B \haddr_reg_RNO[3]  (.A(N_179), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[3]_net_1 ));
    DFN1 \data_out[4]  (.D(\data_out_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[4]_net_1 ));
    NOR2A \haddr_reg_RNI3SHM[2]  (.A(\haddr_reg[3]_net_1 ), .B(
        \haddr_reg[2]_net_1 ), .Y(un1_haddr_reg_8_1));
    OR3 \hrdata_reg_RNO[2]  (.A(\hrdata_reg_17_iv_0[2] ), .B(
        \psram_addr_m[2] ), .C(\hrdata_reg_17_iv_1[2] ), .Y(
        \hrdata_reg_17[2] ));
    GND GND_i_0 (.Y(GND_0));
    NOR2B \psram_addr_RNO[28]  (.A(N_246), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[28]_net_1 ));
    NOR2B \data_in_RNO[7]  (.A(N_257), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[7]_net_1 ));
    DFN1 \operation[9]  (.D(\operation_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[9]));
    DFN1 \haddr_reg[3]  (.D(\haddr_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[3]_net_1 ));
    DFN1 \data_out[9]  (.D(\data_out_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[9]_net_1 ));
    DFN1 \data_in[1]  (.D(\data_in_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[1]));
    MX2 \psram_addr_RNO_0[22]  (.A(max_addr_22), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[22]), .S(psram_addr5), .Y(
        N_240));
    DFN1 \psram_addr[16]  (.D(\psram_addr_RNO[16]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_16));
    DFN1 \psram_addr[28]  (.D(\psram_addr_RNO[28]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[28] ));
    NOR2B \hrdata_reg_RNO_1[7]  (.A(max_addr_7), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[7] ));
    OR3 \hrdata_reg_RNO[5]  (.A(\hrdata_reg_17_iv_0[5] ), .B(
        \psram_addr_m[5] ), .C(\hrdata_reg_17_iv_1[5] ), .Y(
        \hrdata_reg_17[5] ));
    DFN1 \operation[0]  (.D(\operation_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[0]));
    NOR3B \haddr_reg_RNI79GT2[4]  (.A(N_84), .B(
        hrdata_reg_4_sqmuxa_0_a2_1_0), .C(\haddr_reg[4]_net_1 ), .Y(
        N_87));
    NOR2B \hrdata_reg_RNO_1[2]  (.A(max_addr_2), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[2] ));
    NOR2B \hrdata_reg_RNO_0[28]  (.A(\operation[28]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[28] ));
    MX2 \psram_addr_RNO_0[8]  (.A(max_addr_8), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[8]), .S(psram_addr5), .Y(N_226)
        );
    AO1B \hrdata_reg_RNO_0[2]  (.A(\data_out[2]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[2] ));
    OA1A hready_reg_RNIFN5IE (.A(CAHBLTIIlI_iv), .B(CAHBLTI1lII), .C(
        hwrite_reg4_1), .Y(hwrite_reg4_2));
    NOR3A \hrdata_reg_RNO_3[0]  (.A(\hrdata_reg_cnst_m_0[0] ), .B(N_87)
        , .C(un1_haddr_reg_9), .Y(\hrdata_reg_cnst_m[0] ));
    AO1 \hrdata_reg_RNO_0[15]  (.A(\data_out[15]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(hrdata_reg_6_sqmuxa), .Y(
        \hrdata_reg_17_iv_0[15] ));
    DFN1 \data_in[8]  (.D(\data_in_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[8]));
    NOR2B \hrdata_reg_RNO_3[7]  (.A(reg_addr[7]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[7] ));
    MX2 \psram_addr_RNO_0[6]  (.A(max_addr_6), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[6]), .S(psram_addr5), .Y(N_224)
        );
    MX2 \psram_addr_RNO_0[26]  (.A(\max_addr[26] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[26]), .S(psram_addr5), .Y(
        N_244));
    DFN1 \operation[31]  (.D(\operation_RNO[31]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[31]_net_1 ));
    MX2 \haddr_reg_RNO_0[7]  (.A(\haddr_reg[7]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[7]), .S(fsm_0_sqmuxa), .Y(N_183)
        );
    NOR2A fsm_RNI1FV021 (.A(hwrite_reg4), .B(fsm_net_1), .Y(
        fsm_0_sqmuxa));
    DFN1 psram_addr_sel (.D(psram_addr_sel_2_sqmuxa), .CLK(FAB_CLK), 
        .Q(psram_addr_sel_net_1));
    NOR3A \haddr_reg_RNIA52K3_2[2]  (.A(N_87), .B(\haddr_reg[3]_net_1 )
        , .C(\haddr_reg[2]_net_1 ), .Y(hrdata_reg_1_sqmuxa));
    MX2 \psram_addr_RNO_0[2]  (.A(max_addr_2), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[2]), .S(psram_addr5), .Y(N_220)
        );
    MX2 \operation_RNO_0[28]  (.A(\operation[28]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[28]), .S(operation5), .Y(N_214)
        );
    NOR2B \data_out_RNO[10]  (.A(N_276), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[10]_net_1 ));
    OR3 \hrdata_reg_RNO[0]  (.A(\hrdata_reg_17_iv_0[0] ), .B(
        \psram_addr_m[0] ), .C(\hrdata_reg_17_iv_1[0] ), .Y(
        \hrdata_reg_17[0] ));
    DFN1 fsm (.D(fsm_0_sqmuxa_1), .CLK(FAB_CLK), .Q(fsm_net_1));
    MX2 \psram_addr_RNO_0[28]  (.A(\max_addr[28] ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[28]), .S(psram_addr5), .Y(
        N_246));
    NOR2B \hrdata_reg_RNO_3[4]  (.A(reg_addr[4]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[4] ));
    DFN1 \psram_addr[14]  (.D(\psram_addr_RNO[14]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_14));
    MX2 \data_out_RNO_0[6]  (.A(data_from_cr[6]), .B(
        \data_out[6]_net_1 ), .S(N_4), .Y(N_272));
    MX2 \data_in_RNO_0[11]  (.A(data_to_cr[11]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[11]), .S(data_in7), .Y(N_261));
    NOR2B \data_in_RNO[10]  (.A(N_260), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[10]_net_1 ));
    NOR2B \psram_addr_RNO[17]  (.A(N_235), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[17]_net_1 ));
    DFN1 \operation[28]  (.D(\operation_RNO[28]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[28]_net_1 ));
    AO1 \hrdata_reg_RNO[19]  (.A(max_addr_19), .B(hrdata_reg_3_sqmuxa), 
        .C(\operation_m[19] ), .Y(\hrdata_reg_17[19] ));
    DFN1 \haddr_reg[2]  (.D(\haddr_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[2]_net_1 ));
    MX2 \data_in_RNO_0[10]  (.A(data_to_cr[10]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[10]), .S(data_in7), .Y(N_260));
    OA1 busy_RNO (.A(dt_ack), .B(dt_req), .C(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_24));
    NOR2B \psram_addr_RNO[10]  (.A(N_228), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[10]_net_1 ));
    NOR2B \data_out_RNO[3]  (.A(N_269), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[3]_net_1 ));
    NOR2B \operation_RNO[23]  (.A(N_209), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[23]_net_1 ));
    DFN1 \haddr_reg[8]  (.D(\haddr_reg_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[8]_net_1 ));
    AO1 \hrdata_reg_RNO_2[0]  (.A(data_to_cr[0]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[0] ), .Y(
        \hrdata_reg_17_iv_1[0] ));
    NOR2B \psram_addr_RNO[8]  (.A(N_226), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[8]_net_1 ));
    NOR2A hready_reg_RNIA4NT11 (.A(hwrite_reg4_4), .B(
        CoreAHBLite_0_AHBmslave5_HSIZE[0]), .Y(hwrite_reg4));
    NOR2B \psram_addr_RNO[3]  (.A(N_221), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[3]_net_1 ));
    NOR2B \operation_RNO[10]  (.A(N_196), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[10]_net_1 ));
    AO1B \hrdata_reg_RNO_0[13]  (.A(\data_out[13]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .C(N_118), .Y(\hrdata_reg_17_iv_0[13] ));
    OR3A \haddr_reg_RNI74PR6[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_57)
        , .C(N_56), .Y(N_429));
    NOR2B \data_in_RNO[14]  (.A(N_264), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_in_RNO[14]_net_1 ));
    MX2 \data_out_RNO_0[12]  (.A(data_from_cr[12]), .B(
        \data_out[12]_net_1 ), .S(N_4), .Y(N_278));
    NOR2B \operation_RNO[18]  (.A(N_204), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[18]_net_1 ));
    NOR2B \operation_RNO[16]  (.A(N_202), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[16]_net_1 ));
    NOR2B \data_out_RNO[6]  (.A(N_272), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[6]_net_1 ));
    DFN1 \operation[1]  (.D(\operation_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[1]));
    DFN1E1 \hrdata_reg[6]  (.D(\hrdata_reg_17[6] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[6]));
    DFN1 \operation[18]  (.D(\operation_RNO[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[18]_net_1 ));
    MX2 \operation_RNO_0[1]  (.A(reg_addr[1]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[1]), .S(operation5), .Y(N_187));
    MX2 \psram_addr_RNO_0[5]  (.A(max_addr_5), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[5]), .S(psram_addr5), .Y(N_223)
        );
    NOR2B \operation_RNO[9]  (.A(N_195), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[9]_net_1 ));
    DFN1 \data_in[6]  (.D(\data_in_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[6]));
    AO1 \hrdata_reg_RNO_2[6]  (.A(data_to_cr[6]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[6] ), .Y(
        \hrdata_reg_17_iv_1[6] ));
    NOR2B \hrdata_reg_RNO_1[4]  (.A(max_addr_4), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[4] ));
    DFN1 \psram_addr[13]  (.D(\psram_addr_RNO[13]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_13));
    DFN1 \operation[3]  (.D(\operation_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[3]));
    AO1 \hrdata_reg_RNO[23]  (.A(\operation[23]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(\psram_addr_m[23] ), .Y(
        \hrdata_reg_17[23] ));
    MX2 \haddr_reg_RNO_0[4]  (.A(\haddr_reg[4]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[4]), .S(fsm_0_sqmuxa), .Y(N_180)
        );
    NOR2B \haddr_reg_RNO[4]  (.A(N_180), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[4]_net_1 ));
    MX2 \operation_RNO_0[21]  (.A(\operation[21]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[21]), .S(operation5), .Y(N_207)
        );
    NOR2B \haddr_reg_RNO[7]  (.A(N_183), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[7]_net_1 ));
    MX2 \operation_RNO_0[29]  (.A(\operation[29]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[29]), .S(operation5), .Y(N_215)
        );
    MX2 \data_out_RNO_0[3]  (.A(data_from_cr[3]), .B(
        \data_out[3]_net_1 ), .S(N_4), .Y(N_269));
    MX2 \psram_addr_RNO_0[15]  (.A(max_addr_15), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[15]), .S(psram_addr5), .Y(
        N_233));
    DFN1 \psram_addr[11]  (.D(\psram_addr_RNO[11]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_11));
    DFN1 \data_in[5]  (.D(\data_in_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[5]));
    NOR2B \psram_addr_RNO[18]  (.A(N_236), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[18]_net_1 ));
    NOR2B \data_out_RNO[7]  (.A(N_273), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[7]_net_1 ));
    NOR2B \data_out_RNO[14]  (.A(N_280), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[14]_net_1 ));
    NOR2B \operation_RNO[27]  (.A(N_213), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[27]_net_1 ));
    NOR2B \hrdata_reg_RNO_0[31]  (.A(\operation[31]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(N_62));
    DFN1E1 \hrdata_reg[27]  (.D(\hrdata_reg_17[27] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[27]));
    NOR3C hready_reg_RNI89FP1 (.A(CAHBLTl0ll[1]), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(CAHBLTO1ll), .Y(
        hwrite_reg4_1));
    MX2 \operation_RNO_0[9]  (.A(reg_addr[9]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[9]), .S(operation5), .Y(N_195));
    NOR2B \hrdata_reg_RNO_1[5]  (.A(max_addr_5), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[5] ));
    MX2 \operation_RNO_0[8]  (.A(reg_addr[8]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[8]), .S(operation5), .Y(N_194));
    DFN1 \operation[21]  (.D(\operation_RNO[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[21]_net_1 ));
    AO1 \hrdata_reg_RNO_2[9]  (.A(data_to_cr[9]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[9] ), .Y(
        \hrdata_reg_17_iv_1[9] ));
    NOR2B \hrdata_reg_RNO_0[11]  (.A(reg_addr[11]), .B(
        hrdata_reg_4_sqmuxa), .Y(N_68));
    NOR2B \data_out_RNO[15]  (.A(N_281), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[15]_net_1 ));
    DFN1 \psram_addr[27]  (.D(\psram_addr_RNO[27]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[27] ));
    NOR2B \operation_RNO[25]  (.A(N_211), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[25]_net_1 ));
    NOR2B \operation_RNO[19]  (.A(N_205), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[19]_net_1 ));
    DFN1E1 \hrdata_reg[29]  (.D(\hrdata_reg_17[29] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[29]));
    NOR2B \hrdata_reg_RNO_3[14]  (.A(reg_addr[14]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[14] ));
    NOR3C \haddr_reg_RNIEO4D1[4]  (.A(\haddr_reg[9]_net_1 ), .B(
        \haddr_reg[4]_net_1 ), .C(N_97), .Y(un1_haddr_reg_5_0_a2_1));
    MX2 \data_in_RNO_0[9]  (.A(data_to_cr[9]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[9]), .S(data_in7), .Y(N_259));
    DFN1E1 \hrdata_reg[1]  (.D(\hrdata_reg_17[1] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[1]));
    DFN1 \operation[29]  (.D(\operation_RNO[29]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[29]_net_1 ));
    NOR2B \data_out_RNO[13]  (.A(N_279), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[13]_net_1 ));
    DFN1E1 \hrdata_reg[26]  (.D(\hrdata_reg_17[26] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[26]));
    DFN1E1 \hrdata_reg[12]  (.D(\hrdata_reg_17[12] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[12]));
    NOR2B \hrdata_reg_RNO_1[8]  (.A(max_addr_8), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[8] ));
    DFN1 \operation[11]  (.D(\operation_RNO[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[11]));
    AO1 \hrdata_reg_RNO[24]  (.A(\operation[24]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .C(N_61), .Y(\hrdata_reg_17[24] ));
    DFN1 \data_in[15]  (.D(\data_in_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[15]));
    NOR2B \hrdata_reg_RNO_3[8]  (.A(reg_addr[8]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[8] ));
    AO1 \hrdata_reg_RNO[21]  (.A(max_addr_21), .B(hrdata_reg_3_sqmuxa), 
        .C(\operation_m[21] ), .Y(\hrdata_reg_17[21] ));
    DFN1 \haddr_reg[4]  (.D(\haddr_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[4]_net_1 ));
    NOR2B \operation_RNO[30]  (.A(N_216), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[30]_net_1 ));
    MX2 \data_out_RNO_0[15]  (.A(data_from_cr[15]), .B(
        \data_out[15]_net_1 ), .S(N_4), .Y(N_281));
    NOR2B \hrdata_reg_RNO_0[18]  (.A(max_addr_18), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[18] ));
    DFN1 \data_out[11]  (.D(\data_out_RNO[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[11]_net_1 ));
    DFN1 \operation[19]  (.D(\operation_RNO[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\operation[19]_net_1 ));
    NOR2B \hrdata_reg_RNO_3[5]  (.A(reg_addr[5]), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[5] ));
    NOR3B \haddr_reg_RNICL9T[9]  (.A(\haddr_reg[9]_net_1 ), .B(
        fsm_net_1), .C(hwrite_reg_net_1), .Y(
        hrdata_reg_0_sqmuxa_i_a2_0_1));
    NOR2B fsm_RNO (.A(fsm_0_sqmuxa), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        fsm_0_sqmuxa_1));
    NOR2B \psram_addr_RNO[26]  (.A(N_244), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\psram_addr_RNO[26]_net_1 ));
    MX2 \psram_addr_RNO_0[23]  (.A(max_addr_23), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[23]), .S(psram_addr5), .Y(
        N_241));
    DFN1 \haddr_reg[6]  (.D(\haddr_reg_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[6]_net_1 ));
    DFN1 \data_in[11]  (.D(\data_in_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[11]));
    NOR2B \operation_RNO[4]  (.A(N_190), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[4]_net_1 ));
    NOR2B \hrdata_reg_RNO_3[3]  (.A(\data_out[3]_net_1 ), .B(
        hrdata_reg_2_sqmuxa), .Y(N_73));
    NOR2B \hrdata_reg_RNO_0[22]  (.A(\operation[22]_net_1 ), .B(
        hrdata_reg_4_sqmuxa), .Y(\operation_m[22] ));
    NOR2B \hrdata_reg_RNO_1[10]  (.A(max_addr_10), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[10] ));
    DFN1 \psram_addr[2]  (.D(\psram_addr_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_2));
    MX2 \psram_addr_RNO_0[1]  (.A(max_addr_1), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[1]), .S(psram_addr5), .Y(N_219)
        );
    AO1 \hrdata_reg_RNO_2[12]  (.A(data_to_cr[12]), .B(
        hrdata_reg_1_sqmuxa), .C(\operation_m[12] ), .Y(
        \hrdata_reg_17_iv_1[12] ));
    NOR3C \haddr_reg_RNI4MIN3[9]  (.A(N_97), .B(
        hrdata_reg_0_sqmuxa_i_a2_0_1), .C(N_84), .Y(N_57));
    MX2 \psram_addr_RNO_0[12]  (.A(max_addr_12), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[12]), .S(psram_addr5), .Y(
        N_230));
    NOR2 \haddr_reg_RNI3SHM_0[2]  (.A(\haddr_reg[3]_net_1 ), .B(
        \haddr_reg[2]_net_1 ), .Y(N_97));
    DFN1E1 \hrdata_reg[20]  (.D(\hrdata_reg_17[20] ), .CLK(FAB_CLK), 
        .E(N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[20]));
    AO1 dt_req_RNO (.A(operation5), .B(MSS_CORE2_0_M2F_RESET_N), .C(
        N_65), .Y(dt_req_RNO_net_1));
    DFN1 \data_in[3]  (.D(\data_in_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[3]));
    MX2 \data_in_RNO_0[0]  (.A(data_to_cr[0]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[0]), .S(data_in7), .Y(N_250));
    DFN1 \psram_addr[6]  (.D(\psram_addr_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_6));
    DFN1 \haddr_reg[9]  (.D(\haddr_reg_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[9]_net_1 ));
    MX2 \data_out_RNO_0[10]  (.A(data_from_cr[10]), .B(
        \data_out[10]_net_1 ), .S(N_4), .Y(N_276));
    DFN1 \data_out[13]  (.D(\data_out_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\data_out[13]_net_1 ));
    MX2 \operation_RNO_0[15]  (.A(reg_addr[15]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[15]), .S(operation5), .Y(N_201)
        );
    NOR2B \operation_RNO[2]  (.A(N_188), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\operation_RNO[2]_net_1 ));
    MX2 \haddr_reg_RNO_0[0]  (.A(\haddr_reg[0]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HADDR[0]), .S(fsm_0_sqmuxa), .Y(N_176)
        );
    MX2 \psram_addr_RNO_0[16]  (.A(max_addr_16), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[16]), .S(psram_addr5), .Y(
        N_234));
    NOR2B \hrdata_reg_RNO_0[29]  (.A(\max_addr[29] ), .B(
        hrdata_reg_3_sqmuxa), .Y(\psram_addr_m[29] ));
    NOR2B \data_out_RNO[12]  (.A(N_278), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[12]_net_1 ));
    MX2 \operation_RNO_0[10]  (.A(reg_addr[10]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[10]), .S(operation5), .Y(N_196)
        );
    NOR2B \haddr_reg_RNO[1]  (.A(N_177), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\haddr_reg_RNO[1]_net_1 ));
    MX2 \data_in_RNO_0[12]  (.A(data_to_cr[12]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[12]), .S(data_in7), .Y(N_262));
    NOR2A hready_reg_RNI31AC1 (.A(CAHBLTllIl113), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m));
    MX2 \data_out_RNO_0[13]  (.A(data_from_cr[13]), .B(
        \data_out[13]_net_1 ), .S(N_4), .Y(N_279));
    MX2 \data_in_RNO_0[15]  (.A(data_to_cr[15]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[15]), .S(data_in7), .Y(N_265));
    NOR2B psram_addr_sel_RNO (.A(fsm_net_1), .B(hrdata_reg_3_sqmuxa), 
        .Y(psram_addr_sel_2_sqmuxa));
    DFN1 \psram_addr[7]  (.D(\psram_addr_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_7));
    MX2 \psram_addr_RNO_0[18]  (.A(max_addr_18), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[18]), .S(psram_addr5), .Y(
        N_236));
    DFN1 \operation[8]  (.D(\operation_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(reg_addr[8]));
    DFN1 \haddr_reg[0]  (.D(\haddr_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\haddr_reg[0]_net_1 ));
    MX2 \data_out_RNO_0[1]  (.A(data_from_cr[1]), .B(
        \data_out[1]_net_1 ), .S(N_4), .Y(N_267));
    DFN1 \data_in[13]  (.D(\data_in_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[13]));
    MX2 \operation_RNO_0[27]  (.A(\operation[27]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[27]), .S(operation5), .Y(N_213)
        );
    DFN1 \data_out[0]  (.D(\data_out_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[0]_net_1 ));
    DFN1E1 \hrdata_reg[4]  (.D(\hrdata_reg_17[4] ), .CLK(FAB_CLK), .E(
        N_429), .Q(CoreAHBLite_0_AHBmslave5_HRDATA[4]));
    NOR3A \haddr_reg_RNI01AQ2[4]  (.A(N_84), .B(\haddr_reg[4]_net_1 ), 
        .C(\haddr_reg[9]_net_1 ), .Y(N_95));
    NOR2B \data_out_RNO[2]  (.A(N_268), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\data_out_RNO[2]_net_1 ));
    OR3 \hrdata_reg_RNO[8]  (.A(\hrdata_reg_17_iv_0[8] ), .B(
        \psram_addr_m[8] ), .C(\hrdata_reg_17_iv_1[8] ), .Y(
        \hrdata_reg_17[8] ));
    DFN1 \data_in[4]  (.D(\data_in_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        data_to_cr[4]));
    MX2 \operation_RNO_0[14]  (.A(reg_addr[14]), .B(
        CoreAHBLite_0_AHBmslave5_HWDATA[14]), .S(operation5), .Y(N_200)
        );
    NOR2B \data_in_RNO[9]  (.A(N_259), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \data_in_RNO[9]_net_1 ));
    DFN1 \psram_addr[18]  (.D(\psram_addr_RNO[18]_net_1 ), .CLK(
        FAB_CLK), .Q(max_addr_18));
    DFN1 \psram_addr[3]  (.D(\psram_addr_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(max_addr_3));
    DFN1 \data_out[6]  (.D(\data_out_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \data_out[6]_net_1 ));
    DFN1 \psram_addr[25]  (.D(\psram_addr_RNO[25]_net_1 ), .CLK(
        FAB_CLK), .Q(\max_addr[25] ));
    
endmodule


module psram_cr(
       psram_data_in,
       psram_address_c,
       data_reg,
       CAHBLTOO0l,
       CAHBLTl0ll,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       CoreAHBLite_0_AHBmslave5_HADDR,
       CoreAHBLite_0_AHBmslave5_HWDATA,
       CoreAHBLite_0_AHBmslave5_HRDATA,
       active_data,
       psram_nwe_c,
       psram_noe0_c,
       psram_ncs0_c_c_c,
       CAHBLTIIlI_iv,
       CAHBLTI1lII,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CAHBLTO1ll,
       MSS_CORE2_0_M2F_RESET_N,
       CoreAHBLite_0_AHBmslave5_HREADY_i_m,
       CAHBLTllIl113,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       FAB_CLK
    );
input  [15:0] psram_data_in;
output [24:0] psram_address_c;
output [15:0] data_reg;
input  [1:0] CAHBLTOO0l;
input  [1:1] CAHBLTl0ll;
input  [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
input  [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
input  [31:0] CoreAHBLite_0_AHBmslave5_HWDATA;
output [31:0] CoreAHBLite_0_AHBmslave5_HRDATA;
output active_data;
output psram_nwe_c;
output psram_noe0_c;
output psram_ncs0_c_c_c;
input  CAHBLTIIlI_iv;
input  CAHBLTI1lII;
output CoreAHBLite_0_AHBmslave5_HREADY;
input  CAHBLTO1ll;
input  MSS_CORE2_0_M2F_RESET_N;
output CoreAHBLite_0_AHBmslave5_HREADY_i_m;
input  CAHBLTllIl113;
input  CoreAHBLite_0_AHBmslave5_HWRITE;
input  FAB_CLK;

    wire \data_from_cr[0] , \data_from_cr[1] , \data_from_cr[2] , 
        \data_from_cr[3] , \data_from_cr[4] , \data_from_cr[5] , 
        \data_from_cr[6] , \data_from_cr[7] , \data_from_cr[8] , 
        \data_from_cr[9] , \data_from_cr[10] , \data_from_cr[11] , 
        \data_from_cr[12] , \data_from_cr[13] , \data_from_cr[14] , 
        \data_from_cr[15] , \max_addr[12] , \max_addr[0] , 
        \max_addr[2] , \max_addr[10] , \max_addr[24] , \max_addr[23] , 
        \max_addr[22] , \max_addr[21] , \max_addr[20] , \max_addr[19] , 
        \max_addr[18] , \max_addr[17] , \max_addr[16] , \max_addr[15] , 
        \max_addr[14] , \max_addr[13] , \max_addr[11] , \max_addr[9] , 
        \max_addr[8] , \max_addr[7] , \max_addr[6] , \max_addr[5] , 
        \max_addr[4] , \max_addr[3] , \max_addr[1] , \reg_addr[0] , 
        \reg_addr[1] , \reg_addr[2] , \reg_addr[3] , \reg_addr[4] , 
        \reg_addr[5] , \reg_addr[6] , \reg_addr[7] , \reg_addr[8] , 
        \reg_addr[9] , \reg_addr[10] , \reg_addr[11] , \reg_addr[12] , 
        \reg_addr[13] , \reg_addr[14] , \reg_addr[15] , 
        \data_to_cr[0] , \data_to_cr[1] , \data_to_cr[2] , 
        \data_to_cr[3] , \data_to_cr[4] , \data_to_cr[5] , 
        \data_to_cr[6] , \data_to_cr[7] , \data_to_cr[8] , 
        \data_to_cr[9] , \data_to_cr[10] , \data_to_cr[11] , 
        \data_to_cr[12] , \data_to_cr[13] , \data_to_cr[14] , 
        \data_to_cr[15] , dt_req, dt_ack, start_0_0, dt_rw, GND, VCC, 
        GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    cr_int cr_int_i0 (.reg_addr({\reg_addr[15] , \reg_addr[14] , 
        \reg_addr[13] , \reg_addr[12] , \reg_addr[11] , \reg_addr[10] , 
        \reg_addr[9] , \reg_addr[8] , \reg_addr[7] , \reg_addr[6] , 
        \reg_addr[5] , \reg_addr[4] , \reg_addr[3] , \reg_addr[2] , 
        \reg_addr[1] , \reg_addr[0] }), .data_to_cr({\data_to_cr[15] , 
        \data_to_cr[14] , \data_to_cr[13] , \data_to_cr[12] , 
        \data_to_cr[11] , \data_to_cr[10] , \data_to_cr[9] , 
        \data_to_cr[8] , \data_to_cr[7] , \data_to_cr[6] , 
        \data_to_cr[5] , \data_to_cr[4] , \data_to_cr[3] , 
        \data_to_cr[2] , \data_to_cr[1] , \data_to_cr[0] }), .max_addr({
        \max_addr[24] , \max_addr[23] , \max_addr[22] , \max_addr[21] , 
        \max_addr[20] , \max_addr[19] , \max_addr[18] , \max_addr[17] , 
        \max_addr[16] , \max_addr[15] , \max_addr[14] , \max_addr[13] , 
        \max_addr[12] , \max_addr[11] , \max_addr[10] , \max_addr[9] , 
        \max_addr[8] , \max_addr[7] , \max_addr[6] , \max_addr[5] , 
        \max_addr[4] , \max_addr[3] , \max_addr[2] , \max_addr[1] , 
        \max_addr[0] }), .data_reg({data_reg[15], data_reg[14], 
        data_reg[13], data_reg[12], data_reg[11], data_reg[10], 
        data_reg[9], data_reg[8], data_reg[7], data_reg[6], 
        data_reg[5], data_reg[4], data_reg[3], data_reg[2], 
        data_reg[1], data_reg[0]}), .psram_address_c({
        psram_address_c[24], psram_address_c[23], psram_address_c[22], 
        psram_address_c[21], psram_address_c[20], psram_address_c[19], 
        psram_address_c[18], psram_address_c[17], psram_address_c[16], 
        psram_address_c[15], psram_address_c[14], psram_address_c[13], 
        psram_address_c[12], psram_address_c[11], psram_address_c[10], 
        psram_address_c[9], psram_address_c[8], psram_address_c[7], 
        psram_address_c[6], psram_address_c[5], psram_address_c[4], 
        psram_address_c[3], psram_address_c[2], psram_address_c[1], 
        psram_address_c[0]}), .psram_data_in({psram_data_in[15], 
        psram_data_in[14], psram_data_in[13], psram_data_in[12], 
        psram_data_in[11], psram_data_in[10], psram_data_in[9], 
        psram_data_in[8], psram_data_in[7], psram_data_in[6], 
        psram_data_in[5], psram_data_in[4], psram_data_in[3], 
        psram_data_in[2], psram_data_in[1], psram_data_in[0]}), 
        .data_from_cr({\data_from_cr[15] , \data_from_cr[14] , 
        \data_from_cr[13] , \data_from_cr[12] , \data_from_cr[11] , 
        \data_from_cr[10] , \data_from_cr[9] , \data_from_cr[8] , 
        \data_from_cr[7] , \data_from_cr[6] , \data_from_cr[5] , 
        \data_from_cr[4] , \data_from_cr[3] , \data_from_cr[2] , 
        \data_from_cr[1] , \data_from_cr[0] }), .dt_ack(dt_ack), 
        .FAB_CLK(FAB_CLK), .dt_rw(dt_rw), .psram_ncs0_c_c_c(
        psram_ncs0_c_c_c), .dt_req(dt_req), .start_0_0(start_0_0), 
        .psram_noe0_c(psram_noe0_c), .psram_nwe_c(psram_nwe_c), 
        .active_data(active_data), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N));
    VCC VCC_i (.Y(VCC));
    AHB ahb0 (.CoreAHBLite_0_AHBmslave5_HRDATA({
        CoreAHBLite_0_AHBmslave5_HRDATA[31], 
        CoreAHBLite_0_AHBmslave5_HRDATA[30], 
        CoreAHBLite_0_AHBmslave5_HRDATA[29], 
        CoreAHBLite_0_AHBmslave5_HRDATA[28], 
        CoreAHBLite_0_AHBmslave5_HRDATA[27], 
        CoreAHBLite_0_AHBmslave5_HRDATA[26], 
        CoreAHBLite_0_AHBmslave5_HRDATA[25], 
        CoreAHBLite_0_AHBmslave5_HRDATA[24], 
        CoreAHBLite_0_AHBmslave5_HRDATA[23], 
        CoreAHBLite_0_AHBmslave5_HRDATA[22], 
        CoreAHBLite_0_AHBmslave5_HRDATA[21], 
        CoreAHBLite_0_AHBmslave5_HRDATA[20], 
        CoreAHBLite_0_AHBmslave5_HRDATA[19], 
        CoreAHBLite_0_AHBmslave5_HRDATA[18], 
        CoreAHBLite_0_AHBmslave5_HRDATA[17], 
        CoreAHBLite_0_AHBmslave5_HRDATA[16], 
        CoreAHBLite_0_AHBmslave5_HRDATA[15], 
        CoreAHBLite_0_AHBmslave5_HRDATA[14], 
        CoreAHBLite_0_AHBmslave5_HRDATA[13], 
        CoreAHBLite_0_AHBmslave5_HRDATA[12], 
        CoreAHBLite_0_AHBmslave5_HRDATA[11], 
        CoreAHBLite_0_AHBmslave5_HRDATA[10], 
        CoreAHBLite_0_AHBmslave5_HRDATA[9], 
        CoreAHBLite_0_AHBmslave5_HRDATA[8], 
        CoreAHBLite_0_AHBmslave5_HRDATA[7], 
        CoreAHBLite_0_AHBmslave5_HRDATA[6], 
        CoreAHBLite_0_AHBmslave5_HRDATA[5], 
        CoreAHBLite_0_AHBmslave5_HRDATA[4], 
        CoreAHBLite_0_AHBmslave5_HRDATA[3], 
        CoreAHBLite_0_AHBmslave5_HRDATA[2], 
        CoreAHBLite_0_AHBmslave5_HRDATA[1], 
        CoreAHBLite_0_AHBmslave5_HRDATA[0]}), .data_from_cr({
        \data_from_cr[15] , \data_from_cr[14] , \data_from_cr[13] , 
        \data_from_cr[12] , \data_from_cr[11] , \data_from_cr[10] , 
        \data_from_cr[9] , \data_from_cr[8] , \data_from_cr[7] , 
        \data_from_cr[6] , \data_from_cr[5] , \data_from_cr[4] , 
        \data_from_cr[3] , \data_from_cr[2] , \data_from_cr[1] , 
        \data_from_cr[0] }), .max_addr_12(\max_addr[12] ), .max_addr_0(
        \max_addr[0] ), .max_addr_2(\max_addr[2] ), .max_addr_10(
        \max_addr[10] ), .max_addr_24(\max_addr[24] ), .max_addr_23(
        \max_addr[23] ), .max_addr_22(\max_addr[22] ), .max_addr_21(
        \max_addr[21] ), .max_addr_20(\max_addr[20] ), .max_addr_19(
        \max_addr[19] ), .max_addr_18(\max_addr[18] ), .max_addr_17(
        \max_addr[17] ), .max_addr_16(\max_addr[16] ), .max_addr_15(
        \max_addr[15] ), .max_addr_14(\max_addr[14] ), .max_addr_13(
        \max_addr[13] ), .max_addr_11(\max_addr[11] ), .max_addr_9(
        \max_addr[9] ), .max_addr_8(\max_addr[8] ), .max_addr_7(
        \max_addr[7] ), .max_addr_6(\max_addr[6] ), .max_addr_5(
        \max_addr[5] ), .max_addr_4(\max_addr[4] ), .max_addr_3(
        \max_addr[3] ), .max_addr_1(\max_addr[1] ), 
        .CoreAHBLite_0_AHBmslave5_HWDATA({
        CoreAHBLite_0_AHBmslave5_HWDATA[31], 
        CoreAHBLite_0_AHBmslave5_HWDATA[30], 
        CoreAHBLite_0_AHBmslave5_HWDATA[29], 
        CoreAHBLite_0_AHBmslave5_HWDATA[28], 
        CoreAHBLite_0_AHBmslave5_HWDATA[27], 
        CoreAHBLite_0_AHBmslave5_HWDATA[26], 
        CoreAHBLite_0_AHBmslave5_HWDATA[25], 
        CoreAHBLite_0_AHBmslave5_HWDATA[24], 
        CoreAHBLite_0_AHBmslave5_HWDATA[23], 
        CoreAHBLite_0_AHBmslave5_HWDATA[22], 
        CoreAHBLite_0_AHBmslave5_HWDATA[21], 
        CoreAHBLite_0_AHBmslave5_HWDATA[20], 
        CoreAHBLite_0_AHBmslave5_HWDATA[19], 
        CoreAHBLite_0_AHBmslave5_HWDATA[18], 
        CoreAHBLite_0_AHBmslave5_HWDATA[17], 
        CoreAHBLite_0_AHBmslave5_HWDATA[16], 
        CoreAHBLite_0_AHBmslave5_HWDATA[15], 
        CoreAHBLite_0_AHBmslave5_HWDATA[14], 
        CoreAHBLite_0_AHBmslave5_HWDATA[13], 
        CoreAHBLite_0_AHBmslave5_HWDATA[12], 
        CoreAHBLite_0_AHBmslave5_HWDATA[11], 
        CoreAHBLite_0_AHBmslave5_HWDATA[10], 
        CoreAHBLite_0_AHBmslave5_HWDATA[9], 
        CoreAHBLite_0_AHBmslave5_HWDATA[8], 
        CoreAHBLite_0_AHBmslave5_HWDATA[7], 
        CoreAHBLite_0_AHBmslave5_HWDATA[6], 
        CoreAHBLite_0_AHBmslave5_HWDATA[5], 
        CoreAHBLite_0_AHBmslave5_HWDATA[4], 
        CoreAHBLite_0_AHBmslave5_HWDATA[3], 
        CoreAHBLite_0_AHBmslave5_HWDATA[2], 
        CoreAHBLite_0_AHBmslave5_HWDATA[1], 
        CoreAHBLite_0_AHBmslave5_HWDATA[0]}), .reg_addr({
        \reg_addr[15] , \reg_addr[14] , \reg_addr[13] , \reg_addr[12] , 
        \reg_addr[11] , \reg_addr[10] , \reg_addr[9] , \reg_addr[8] , 
        \reg_addr[7] , \reg_addr[6] , \reg_addr[5] , \reg_addr[4] , 
        \reg_addr[3] , \reg_addr[2] , \reg_addr[1] , \reg_addr[0] }), 
        .CoreAHBLite_0_AHBmslave5_HADDR({
        CoreAHBLite_0_AHBmslave5_HADDR[9], 
        CoreAHBLite_0_AHBmslave5_HADDR[8], 
        CoreAHBLite_0_AHBmslave5_HADDR[7], 
        CoreAHBLite_0_AHBmslave5_HADDR[6], 
        CoreAHBLite_0_AHBmslave5_HADDR[5], 
        CoreAHBLite_0_AHBmslave5_HADDR[4], 
        CoreAHBLite_0_AHBmslave5_HADDR[3], 
        CoreAHBLite_0_AHBmslave5_HADDR[2], 
        CoreAHBLite_0_AHBmslave5_HADDR[1], 
        CoreAHBLite_0_AHBmslave5_HADDR[0]}), 
        .CoreAHBLite_0_AHBmslave5_HSIZE({
        CoreAHBLite_0_AHBmslave5_HSIZE[0]}), .data_to_cr({
        \data_to_cr[15] , \data_to_cr[14] , \data_to_cr[13] , 
        \data_to_cr[12] , \data_to_cr[11] , \data_to_cr[10] , 
        \data_to_cr[9] , \data_to_cr[8] , \data_to_cr[7] , 
        \data_to_cr[6] , \data_to_cr[5] , \data_to_cr[4] , 
        \data_to_cr[3] , \data_to_cr[2] , \data_to_cr[1] , 
        \data_to_cr[0] }), .CAHBLTl0ll({CAHBLTl0ll[1]}), .CAHBLTOO0l({
        CAHBLTOO0l[1], CAHBLTOO0l[0]}), .FAB_CLK(FAB_CLK), 
        .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), .dt_req(dt_req), .dt_ack(
        dt_ack), .start_0_0(start_0_0), .CAHBLTllIl113(CAHBLTllIl113), 
        .CoreAHBLite_0_AHBmslave5_HREADY_i_m(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), .dt_rw(dt_rw), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .CAHBLTO1ll(
        CAHBLTO1ll), .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), .CAHBLTI1lII(CAHBLTI1lII), 
        .CAHBLTIIlI_iv(CAHBLTIIlI_iv));
    GND GND_i (.Y(GND));
    
endmodule


module CAHBLTlI1_CoreAHBLite_0_CAHBLTO1I0l_CAHBLTI1O0l_CAHBLTlI0l_2(
       CAHBLTOO0l,
       CAHBLTI0ll,
       CoreAHBLite_0_AHBmslave6_HADDR,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBLTO00II,
       CAHBLTI1Il6,
       CoreAHBLite_0_AHBmslave6_HREADY,
       CAHBLTO01,
       CAHBLTIl0II
    );
output [1:0] CAHBLTOO0l;
input  [11:0] CAHBLTI0ll;
output [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
output CAHBLTO00II;
output CAHBLTI1Il6;
input  CoreAHBLite_0_AHBmslave6_HREADY;
input  CAHBLTO01;
input  CAHBLTIl0II;

    wire \CAHBLTllOI_ns_2[0] , \CAHBLTllOI[0]_net_1 , 
        \CAHBLTllOI_ns_1[0] , \CAHBLTllOI_ns_a5_2_0[0] , 
        \CAHBLTllOI_ns_0[0] , \CAHBLTllOI[5]_net_1 , N_77, 
        \CAHBLTllOI_ns_a5_3_0[0] , \CAHBLTllOI[3]_net_1 , 
        \CAHBLTllOI_ns_a5_0_0[5] , N_71, \CAHBLTllOI_ns[5] , N_87, 
        N_88, N_86, \CAHBLTllOI_ns[0] , N_73, \CAHBLTllOI[2]_net_1 , 
        \CAHBLTllOI_RNO_0[6] , N_89, N_83, \CAHBLTllOI_ns[3] , 
        \CAHBLTllOI[4]_net_1 , N_75, N_72, \CAHBLTllOI_RNO_0[7] , 
        \CAHBLTllOI_RNO_0[4] , \CAHBLTllOI_RNO_0[2] , 
        \CAHBLTllOI[7]_net_1 , GND, VCC, GND_0, VCC_0;
    
    NOR2A \CAHBLTllOI_RNIPCR05[7]  (.A(N_75), .B(\CAHBLTllOI[7]_net_1 )
        , .Y(N_89));
    OR2 \CAHBLTllOI_RNIHV9K[0]  (.A(\CAHBLTllOI[3]_net_1 ), .B(
        \CAHBLTllOI[0]_net_1 ), .Y(N_71));
    NOR2B \CAHBLTllOI_RNO_3[0]  (.A(\CAHBLTllOI[0]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_ns_a5_2_0[0] )
        );
    NOR2B \CAHBLTllOI_RNO_5[0]  (.A(\CAHBLTllOI[2]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(N_77));
    AO1B \CAHBLTllOI_RNIATC8E[2]  (.A(CAHBLTOO0l[1]), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(CAHBLTIl0II), .Y(
        CAHBLTO00II));
    NOR2B \CAHBLTllOI_RNIEKTBB[6]  (.A(CAHBLTI0ll[11]), .B(CAHBLTI1Il6)
        , .Y(CoreAHBLite_0_AHBmslave6_HADDR[11]));
    OR2A \CAHBLTllOI_RNIRMLM4[5]  (.A(CAHBLTIl0II), .B(N_72), .Y(N_75));
    DFN1P0 \CAHBLTllOI[0]  (.D(\CAHBLTllOI_ns[0] ), .CLK(FAB_CLK), 
        .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[0]_net_1 ));
    AO1A \CAHBLTllOI_RNO_1[0]  (.A(CAHBLTIl0II), .B(
        \CAHBLTllOI[0]_net_1 ), .C(\CAHBLTllOI_ns_1[0] ), .Y(
        \CAHBLTllOI_ns_2[0] ));
    NOR2B \CAHBLTllOI_RNI1R8AB[6]  (.A(CAHBLTI0ll[5]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[5]));
    NOR2 \CAHBLTllOI_RNO[7]  (.A(N_89), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_RNO_0[7] ));
    VCC VCC_i (.Y(VCC));
    OR2B \CAHBLTllOI_RNI2NQBA[2]  (.A(N_89), .B(N_83), .Y(
        CAHBLTOO0l[1]));
    NOR2B \CAHBLTllOI_RNI0R8AB[6]  (.A(CAHBLTI0ll[4]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[4]));
    NOR2B \CAHBLTllOI_RNO_1[5]  (.A(\CAHBLTllOI[7]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(N_88));
    NOR2A \CAHBLTllOI_RNO[6]  (.A(CAHBLTOO0l[0]), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_RNO_0[6] ));
    NOR2B \CAHBLTllOI_RNI5R8AB[6]  (.A(CAHBLTI0ll[9]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[9]));
    AO1A \CAHBLTllOI_RNO_4[0]  (.A(CAHBLTO01), .B(
        \CAHBLTllOI[5]_net_1 ), .C(N_77), .Y(\CAHBLTllOI_ns_0[0] ));
    AO1A \CAHBLTllOI_RNO[3]  (.A(CAHBLTIl0II), .B(
        \CAHBLTllOI[3]_net_1 ), .C(\CAHBLTllOI[4]_net_1 ), .Y(
        \CAHBLTllOI_ns[3] ));
    AO1A \CAHBLTllOI_RNO[0]  (.A(N_73), .B(\CAHBLTllOI_ns_a5_3_0[0] ), 
        .C(\CAHBLTllOI_ns_2[0] ), .Y(\CAHBLTllOI_ns[0] ));
    OR2B \CAHBLTllOI_RNI4PT41[5]  (.A(\CAHBLTllOI[5]_net_1 ), .B(
        CAHBLTO01), .Y(N_72));
    NOR2 \CAHBLTllOI_RNO[2]  (.A(N_83), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_RNO_0[2] ));
    NOR2B \CAHBLTllOI_RNIDGTBB[6]  (.A(CAHBLTI0ll[10]), .B(CAHBLTI1Il6)
        , .Y(CoreAHBLite_0_AHBmslave6_HADDR[10]));
    NOR2B \CAHBLTllOI_RNI2R8AB[6]  (.A(CAHBLTI0ll[6]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[6]));
    NOR2B \CAHBLTllOI_RNIVQ8AB[6]  (.A(CAHBLTI0ll[3]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[3]));
    DFN1C0 \CAHBLTllOI[6]  (.D(\CAHBLTllOI_RNO_0[6] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(CAHBLTOO0l[0]));
    DFN1C0 \CAHBLTllOI[4]  (.D(\CAHBLTllOI_RNO_0[4] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[4]_net_1 ));
    OA1C \CAHBLTllOI_RNI9AVA5[2]  (.A(N_71), .B(N_73), .C(
        \CAHBLTllOI[2]_net_1 ), .Y(N_83));
    NOR2B \CAHBLTllOI_RNO_3[5]  (.A(N_71), .B(CAHBLTO01), .Y(
        \CAHBLTllOI_ns_a5_0_0[5] ));
    GND GND_i (.Y(GND));
    NOR2B \CAHBLTllOI_RNO[4]  (.A(CAHBLTOO0l[0]), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_RNO_0[4] ));
    NOR2B \CAHBLTllOI_RNISQ8AB[6]  (.A(CAHBLTI0ll[0]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[0]));
    OR2A \CAHBLTllOI_ns_o3[0]  (.A(CAHBLTIl0II), .B(CAHBLTO01), .Y(
        N_73));
    AO1A \CAHBLTllOI_RNO_2[0]  (.A(CAHBLTO01), .B(
        \CAHBLTllOI_ns_a5_2_0[0] ), .C(\CAHBLTllOI_ns_0[0] ), .Y(
        \CAHBLTllOI_ns_1[0] ));
    DFN1C0 \CAHBLTllOI[2]  (.D(\CAHBLTllOI_RNO_0[2] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[2]_net_1 ));
    NOR2B \CAHBLTllOI_RNIUQ8AB[6]  (.A(CAHBLTI0ll[2]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[2]));
    NOR2B \CAHBLTllOI_RNITQ8AB[6]  (.A(CAHBLTI0ll[1]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[1]));
    NOR2B \CAHBLTllOI_RNI3R8AB[6]  (.A(CAHBLTI0ll[7]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[7]));
    NOR2B \CAHBLTllOI_RNI4R8AB[6]  (.A(CAHBLTI0ll[8]), .B(CAHBLTI1Il6), 
        .Y(CoreAHBLite_0_AHBmslave6_HADDR[8]));
    DFN1C0 \CAHBLTllOI[5]  (.D(\CAHBLTllOI_ns[5] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[5]_net_1 ));
    NOR2A \CAHBLTllOI_RNIV80MA[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTOO0l[0]), .Y(CAHBLTI1Il6));
    OR3 \CAHBLTllOI_RNO[5]  (.A(N_87), .B(N_88), .C(N_86), .Y(
        \CAHBLTllOI_ns[5] ));
    OA1C \CAHBLTllOI_RNO_2[5]  (.A(CAHBLTIl0II), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(N_72), .Y(N_86));
    NOR2B \CAHBLTllOI_RNO_0[0]  (.A(\CAHBLTllOI[3]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(\CAHBLTllOI_ns_a5_3_0[0] )
        );
    DFN1C0 \CAHBLTllOI[3]  (.D(\CAHBLTllOI_ns[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[3]_net_1 ));
    NOR2B \CAHBLTllOI_RNO_0[5]  (.A(\CAHBLTllOI_ns_a5_0_0[5] ), .B(
        CAHBLTIl0II), .Y(N_87));
    DFN1C0 \CAHBLTllOI[7]  (.D(\CAHBLTllOI_RNO_0[7] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[7]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module CAHBLTl0Il_2(
       CoreAHBLite_0_AHBmslave6_HADDR,
       CAHBLTI0ll,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA,
       CoreAHBLite_0_AHBmslave6_HWDATA,
       CAHBLTIl0II,
       CAHBLTO01,
       CAHBLTI1Il6,
       CAHBLTO00II,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBLTIIlI_iv,
       un1_CAHBLTI1OI,
       CAHBLTll0II,
       CoreAHBLite_0_AHBmslave6_HREADY,
       CAHBLTI00II_i_m_0
    );
output [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
input  [11:0] CAHBLTI0ll;
input  [0:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA;
output [0:0] CoreAHBLite_0_AHBmslave6_HWDATA;
input  CAHBLTIl0II;
input  CAHBLTO01;
output CAHBLTI1Il6;
output CAHBLTO00II;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBLTIIlI_iv;
output un1_CAHBLTI1OI;
input  CAHBLTll0II;
input  CoreAHBLite_0_AHBmslave6_HREADY;
output CAHBLTI00II_i_m_0;

    wire \CAHBLTIO0l[1]_net_1 , \CAHBLTIO0l[0]_net_1 , \CAHBLTOO0l[0] , 
        \CAHBLTOO0l[1] , GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    AOI1B \CAHBLTIO0l_RNI5PES[1]  (.A(\CAHBLTIO0l[1]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(CAHBLTll0II), .Y(
        CAHBLTI00II_i_m_0));
    OR2A un1_CAHBLTI1OI_inst_1 (.A(CAHBLTIIlI_iv), .B(CAHBLTll0II), .Y(
        un1_CAHBLTI1OI));
    GND GND_i_0 (.Y(GND_0));
    DFN1E1C0 \CAHBLTIO0l[0]  (.D(\CAHBLTOO0l[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CoreAHBLite_0_AHBmslave6_HREADY), 
        .Q(\CAHBLTIO0l[0]_net_1 ));
    CAHBLTlI1_CoreAHBLite_0_CAHBLTO1I0l_CAHBLTI1O0l_CAHBLTlI0l_2 
        CAHBLTlI0l (.CAHBLTOO0l({\CAHBLTOO0l[1] , \CAHBLTOO0l[0] }), 
        .CAHBLTI0ll({CAHBLTI0ll[11], CAHBLTI0ll[10], CAHBLTI0ll[9], 
        CAHBLTI0ll[8], CAHBLTI0ll[7], CAHBLTI0ll[6], CAHBLTI0ll[5], 
        CAHBLTI0ll[4], CAHBLTI0ll[3], CAHBLTI0ll[2], CAHBLTI0ll[1], 
        CAHBLTI0ll[0]}), .CoreAHBLite_0_AHBmslave6_HADDR({
        CoreAHBLite_0_AHBmslave6_HADDR[11], 
        CoreAHBLite_0_AHBmslave6_HADDR[10], 
        CoreAHBLite_0_AHBmslave6_HADDR[9], 
        CoreAHBLite_0_AHBmslave6_HADDR[8], 
        CoreAHBLite_0_AHBmslave6_HADDR[7], 
        CoreAHBLite_0_AHBmslave6_HADDR[6], 
        CoreAHBLite_0_AHBmslave6_HADDR[5], 
        CoreAHBLite_0_AHBmslave6_HADDR[4], 
        CoreAHBLite_0_AHBmslave6_HADDR[3], 
        CoreAHBLite_0_AHBmslave6_HADDR[2], 
        CoreAHBLite_0_AHBmslave6_HADDR[1], 
        CoreAHBLite_0_AHBmslave6_HADDR[0]}), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), .CAHBLTO00II(
        CAHBLTO00II), .CAHBLTI1Il6(CAHBLTI1Il6), 
        .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), .CAHBLTO01(CAHBLTO01), 
        .CAHBLTIl0II(CAHBLTIl0II));
    NOR3B \CAHBLTIO0l_RNIK3GP[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]), .B(
        \CAHBLTIO0l[1]_net_1 ), .C(\CAHBLTIO0l[0]_net_1 ), .Y(
        CoreAHBLite_0_AHBmslave6_HWDATA[0]));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \CAHBLTIO0l[1]  (.D(\CAHBLTOO0l[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CoreAHBLite_0_AHBmslave6_HREADY), 
        .Q(\CAHBLTIO0l[1]_net_1 ));
    GND GND_i (.Y(GND));
    
endmodule


module CAHBLTO10_1(
       CAHBLTO10I,
       CAHBLTl00I,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBLTllIl113,
       N_1121,
       N_8,
       CAHBLTIIIl,
       CAHBLTll0II,
       CAHBLTI1O0I,
       N_115,
       CAHBLTIIlI_iv_0,
       CAHBLTIIlI_iv,
       CAHBLTlOII_iv_0,
       un1_CAHBLTlI0I_17,
       CAHBLTO1lI14,
       CAHBLTlOII_iv,
       CAHBLTO1lI14_0
    );
input  [15:0] CAHBLTO10I;
input  [15:7] CAHBLTl00I;
input  [1:1] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBLTllIl113;
input  N_1121;
output N_8;
input  CAHBLTIIIl;
input  CAHBLTll0II;
input  CAHBLTI1O0I;
input  N_115;
input  CAHBLTIIlI_iv_0;
output CAHBLTIIlI_iv;
input  CAHBLTlOII_iv_0;
input  un1_CAHBLTlI0I_17;
output CAHBLTO1lI14;
output CAHBLTlOII_iv;
output CAHBLTO1lI14_0;

    wire CAHBLTOI1_m_i_0, N_1123, N_129, CAHBLTII1_net_1, 
        CAHBLTOI1_i_a2_1_6_net_1, CAHBLTOI1_i_a2_1_4_net_1, 
        CAHBLTOI1_i_a2_1_5_net_1, CAHBLTOI1_i_a2_1_2_net_1, 
        CAHBLTOI1_i_a2_0_14_net_1, CAHBLTOI1_i_a2_0_8_net_1, N_1122, 
        CAHBLTOI1_i_a2_0_11_net_1, CAHBLTOI1_i_a2_0_13_net_1, 
        CAHBLTOI1_i_a2_0_3_net_1, CAHBLTOI1_i_a2_0_2_net_1, 
        CAHBLTOI1_i_a2_0_10_net_1, CAHBLTOI1_i_a2_0_7_net_1, 
        CAHBLTOI1_i_a2_0_5_net_1, CAHBLTOI1_i_a2_0_1_net_1, N_130, 
        N_120, N_118, N_4, N_1124, GND, VCC, GND_0, VCC_0;
    
    AOI1 CAHBLTII1_RNIS05K9 (.A(N_1124), .B(N_129), .C(N_130), .Y(N_8));
    NOR3A CAHBLTOI1_i_a2_1_6 (.A(CAHBLTOI1_i_a2_1_4_net_1), .B(
        CAHBLTl00I[11]), .C(CAHBLTl00I[10]), .Y(
        CAHBLTOI1_i_a2_1_6_net_1));
    NOR3A CAHBLTOI1_i_a2_0_8 (.A(CAHBLTOI1_i_a2_0_1_net_1), .B(
        CAHBLTO10I[6]), .C(CAHBLTO10I[7]), .Y(CAHBLTOI1_i_a2_0_8_net_1)
        );
    NOR3A CAHBLTOI1_i_a2_1_5 (.A(CAHBLTOI1_i_a2_1_2_net_1), .B(
        CAHBLTl00I[13]), .C(CAHBLTl00I[15]), .Y(
        CAHBLTOI1_i_a2_1_5_net_1));
    NOR2B CAHBLTOI1_i_a2_0 (.A(CAHBLTOI1_i_a2_0_14_net_1), .B(
        CAHBLTOI1_i_a2_0_13_net_1), .Y(N_120));
    NOR3A CAHBLTOI1_i_a2_0_11 (.A(CAHBLTOI1_i_a2_0_7_net_1), .B(
        CAHBLTO10I[11]), .C(CAHBLTO10I[10]), .Y(
        CAHBLTOI1_i_a2_0_11_net_1));
    OR2A CAHBLTOI1_m_i_2 (.A(N_1121), .B(CAHBLTllIl113), .Y(N_130));
    NOR3C CAHBLTOI1_i_a2_0_13 (.A(CAHBLTOI1_i_a2_0_3_net_1), .B(
        CAHBLTOI1_i_a2_0_2_net_1), .C(CAHBLTOI1_i_a2_0_10_net_1), .Y(
        CAHBLTOI1_i_a2_0_13_net_1));
    VCC VCC_i (.Y(VCC));
    NOR3C CAHBLTOI1_i_a2_1 (.A(N_115), .B(CAHBLTOI1_i_a2_1_5_net_1), 
        .C(CAHBLTOI1_i_a2_1_6_net_1), .Y(N_129));
    NOR3A CAHBLTOI1_i_a2_0_10 (.A(CAHBLTOI1_i_a2_0_5_net_1), .B(
        CAHBLTO10I[14]), .C(CAHBLTO10I[15]), .Y(
        CAHBLTOI1_i_a2_0_10_net_1));
    NOR2 CAHBLTOI1_i_a2_0_7 (.A(CAHBLTO10I[8]), .B(CAHBLTO10I[9]), .Y(
        CAHBLTOI1_i_a2_0_7_net_1));
    AO1 CAHBLTII1_RNI3IPC7 (.A(N_1123), .B(N_129), .C(CAHBLTII1_net_1), 
        .Y(CAHBLTOI1_m_i_0));
    NOR2 CAHBLTOI1_i_a2_0_1 (.A(CAHBLTO10I[5]), .B(CAHBLTO10I[4]), .Y(
        CAHBLTOI1_i_a2_0_1_net_1));
    AO1D CAHBLTII1_RNIBR6IC (.A(CAHBLTOI1_m_i_0), .B(N_130), .C(
        CAHBLTIIlI_iv_0), .Y(CAHBLTIIlI_iv));
    GND GND_i (.Y(GND));
    NOR3 CAHBLTOI1_i_a2_1_4 (.A(CAHBLTl00I[8]), .B(CAHBLTl00I[7]), .C(
        CAHBLTl00I[12]), .Y(CAHBLTOI1_i_a2_1_4_net_1));
    NOR2 CAHBLTOI1_i_a2_1_2 (.A(CAHBLTl00I[14]), .B(CAHBLTl00I[9]), .Y(
        CAHBLTOI1_i_a2_1_2_net_1));
    OA1B CAHBLTII1_RNI9O0FD (.A(N_130), .B(CAHBLTOI1_m_i_0), .C(
        CAHBLTlOII_iv_0), .Y(CAHBLTlOII_iv));
    NOR2 CAHBLTOI1_m_i_a2_0 (.A(CAHBLTI1O0I), .B(CAHBLTll0II), .Y(
        N_118));
    NOR2B CAHBLTII1_RNI1C1191 (.A(CAHBLTO1lI14_0), .B(
        un1_CAHBLTlI0I_17), .Y(CAHBLTO1lI14));
    OR2 CAHBLTOI1_m_i_o2 (.A(N_118), .B(N_120), .Y(N_1123));
    DFN1C0 CAHBLTII1 (.D(N_4), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(CAHBLTII1_net_1));
    NOR2 CAHBLTOI1_i_a2_0_2 (.A(CAHBLTO10I[3]), .B(CAHBLTO10I[2]), .Y(
        CAHBLTOI1_i_a2_0_2_net_1));
    NOR2 CAHBLTOI1_i_a2_0_3 (.A(CAHBLTO10I[1]), .B(CAHBLTO10I[0]), .Y(
        CAHBLTOI1_i_a2_0_3_net_1));
    NOR2B CAHBLTII1_RNIG07ID (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1]), .B(CAHBLTlOII_iv), 
        .Y(CAHBLTO1lI14_0));
    NOR3C CAHBLTOI1_i_a2_0_14 (.A(CAHBLTOI1_i_a2_0_8_net_1), .B(N_1122)
        , .C(CAHBLTOI1_i_a2_0_11_net_1), .Y(CAHBLTOI1_i_a2_0_14_net_1));
    NOR2 CAHBLTOI1_i_a2_0_5 (.A(CAHBLTO10I[12]), .B(CAHBLTO10I[13]), 
        .Y(CAHBLTOI1_i_a2_0_5_net_1));
    OR2A CAHBLTOI1_i_o2 (.A(CAHBLTI1O0I), .B(CAHBLTIIIl), .Y(N_1122));
    AO1A CAHBLTII1_RNI58154 (.A(CAHBLTII1_net_1), .B(N_120), .C(N_118), 
        .Y(N_1124));
    AOI1 CAHBLTII1_RNO (.A(N_129), .B(N_120), .C(CAHBLTII1_net_1), .Y(
        N_4));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module CAHBLTO_Z2(
       CAHBLTI0ll,
       N_80,
       N_99,
       N_100,
       N_101,
       N_102,
       N_103,
       N_104,
       N_82,
       N_81,
       N_83,
       N_98,
       N_84
    );
input  [19:12] CAHBLTI0ll;
output N_80;
output N_99;
output N_100;
output N_101;
output N_102;
output N_103;
output N_104;
output N_82;
output N_81;
output N_83;
output N_98;
output N_84;

    wire GND, VCC, GND_0, VCC_0;
    
    NOR2 CAHBLTIO0_3_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[18]), .B(
        CAHBLTI0ll[19]), .Y(N_102));
    NOR2A CAHBLTIO0_2_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[17]), .B(
        CAHBLTI0ll[16]), .Y(N_99));
    NOR2A CAHBLTIO0_7_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[13]), .B(
        CAHBLTI0ll[14]), .Y(N_84));
    NOR2B CAHBLTIO0_3_sqmuxa_0_a2_1 (.A(CAHBLTI0ll[16]), .B(
        CAHBLTI0ll[17]), .Y(N_104));
    NOR2 CAHBLTIO0_27_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[16]), .B(
        CAHBLTI0ll[17]), .Y(N_80));
    NOR2A CAHBLTIO0_8_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[14]), .B(
        CAHBLTI0ll[12]), .Y(N_98));
    NOR3B CAHBLTIO0_9_sqmuxa_0_a2_2 (.A(CAHBLTI0ll[18]), .B(N_80), .C(
        CAHBLTI0ll[19]), .Y(N_81));
    NOR2A CAHBLTIO0_9_sqmuxa_0_a2_0 (.A(N_81), .B(CAHBLTI0ll[15]), .Y(
        N_82));
    VCC VCC_i_0 (.Y(VCC_0));
    VCC VCC_i (.Y(VCC));
    NOR2A CAHBLTIO0_26_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[19]), .B(
        CAHBLTI0ll[18]), .Y(N_103));
    GND GND_i_0 (.Y(GND_0));
    GND GND_i (.Y(GND));
    NOR2B CAHBLTIO0_30_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[18]), .B(
        CAHBLTI0ll[19]), .Y(N_101));
    NOR2B CAHBLTIO0_19_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[15]), .B(N_81), .Y(
        N_83));
    NOR2A CAHBLTIO0_28_sqmuxa_0_a2_0 (.A(CAHBLTI0ll[16]), .B(
        CAHBLTI0ll[17]), .Y(N_100));
    
endmodule


module CAHBLTO0OI_1_96_0_0_1_0_0(
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR,
       CAHBLTI0ll_10,
       CAHBLTI0ll_11,
       CAHBLTI0ll_5,
       CAHBLTI0ll_4,
       CAHBLTI0ll_3,
       CAHBLTI0ll_2,
       CAHBLTI0ll_1,
       CAHBLTI0ll_0,
       CAHBLTI0ll_9,
       CAHBLTI0ll_8,
       CAHBLTI0ll_7,
       CAHBLTI0ll_6,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE,
       CAHBLTl0ll,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS,
       CAHBLTl00I_RNINQKO3,
       CAHBLTl00I_RNIPQKO3,
       CAHBLTl00I_RNIRQKO3,
       CoreAHBLite_0_AHBmslave6_HRDATA,
       CAHBLTl00I_RNITQKO3,
       CoreAHBLite_0_AHBmslave5_HRDATA,
       CAHBLTlOII_iv,
       N_8,
       CAHBLTIIlI_iv,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE,
       CAHBLTI1ll,
       CAHBLTO00II,
       CAHBLTl1lII,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK,
       CAHBLTO01,
       CAHBLTIl0II,
       CAHBLTO1lII,
       CAHBLTllIl113,
       CAHBLTI1lII,
       CAHBLTll0II,
       CAHBLTOO0II_i_m,
       CAHBLTI00II_i_m_0,
       CAHBLTO1ll,
       CoreAHBLite_0_AHBmslave5_HREADY_i_m,
       CoreAHBLite_0_AHBmslave6_HREADY
    );
input  [19:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR;
output CAHBLTI0ll_10;
output CAHBLTI0ll_11;
output CAHBLTI0ll_5;
output CAHBLTI0ll_4;
output CAHBLTI0ll_3;
output CAHBLTI0ll_2;
output CAHBLTI0ll_1;
output CAHBLTI0ll_0;
output CAHBLTI0ll_9;
output CAHBLTI0ll_8;
output CAHBLTI0ll_7;
output CAHBLTI0ll_6;
input  [1:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE;
output [1:0] CAHBLTl0ll;
output [31:4] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA;
input  [1:1] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS;
output [5:5] CAHBLTl00I_RNINQKO3;
output [5:5] CAHBLTl00I_RNIPQKO3;
output [5:5] CAHBLTl00I_RNIRQKO3;
input  [3:0] CoreAHBLite_0_AHBmslave6_HRDATA;
output [5:5] CAHBLTl00I_RNITQKO3;
input  [31:0] CoreAHBLite_0_AHBmslave5_HRDATA;
output CAHBLTlOII_iv;
output N_8;
output CAHBLTIIlI_iv;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE;
output CAHBLTI1ll;
input  CAHBLTO00II;
input  CAHBLTl1lII;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK;
output CAHBLTO01;
output CAHBLTIl0II;
output CAHBLTO1lII;
output CAHBLTllIl113;
output CAHBLTI1lII;
output CAHBLTll0II;
input  CAHBLTOO0II_i_m;
input  CAHBLTI00II_i_m_0;
output CAHBLTO1ll;
input  CoreAHBLite_0_AHBmslave5_HREADY_i_m;
input  CoreAHBLite_0_AHBmslave6_HREADY;

    wire CAHBLTIIlI_iv_0, N_1121, \CAHBLTIOlI_0[8] , \CAHBLTI0ll[12] , 
        \CAHBLTI0ll[13] , \CAHBLTIOlI_0[9] , \CAHBLTIOlI_0[7] , 
        \CAHBLTIOlI_0[4] , \CAHBLTIOlI_1[2] , N_84, \CAHBLTIOlI_0[6] , 
        \CAHBLTIOlI_1[3] , \CAHBLTl1II_0[7] , \CAHBLTI0ll[18] , 
        \CAHBLTI0ll[19] , CAHBLTlOII_iv_0, CAHBLTllIl114_0_o2_0, 
        un1_CAHBLTl00I_2_i_a2_0_1, \CAHBLTl00I[3]_net_1 , 
        \CAHBLTl00I[2]_net_1 , un1_CAHBLTl00I_2_i_a2_0_0, 
        \CAHBLTl00I[0]_net_1 , \CAHBLTl00I[1]_net_1 , 
        \CAHBLTIOII_i_0[1] , \CAHBLTIOII_i_0[3] , \CAHBLTIOII_i_0[0] , 
        \CAHBLTIOII_i_0[2] , \un1_CAHBLTIlO0l[2] , N_102, N_99, 
        \un1_CAHBLTIlO0l[3] , N_104, N_100, \CAHBLTO1O0[14] , N_98, 
        N_83, \CAHBLTO1O0[15] , \CAHBLTI0ll[14] , \CAHBLTO1O0[1] , 
        N_82, \CAHBLTO1O0[5] , \CAHBLTO1O0[8] , \CAHBLTO1O0[9] , 
        \CAHBLTO1O0[10] , \CAHBLTO1O0[13] , \CAHBLTO1O0[0] , 
        \CAHBLTO1O0[4] , \CAHBLTO1O0[6] , \CAHBLTO1O0[12] , N_115, 
        \un1_CAHBLTIlO0l[15] , N_101, \un1_CAHBLTIlO0l[14] , 
        \un1_CAHBLTIlO0l[13] , \un1_CAHBLTIlO0l[12] , N_80, 
        \un1_CAHBLTIlO0l[11] , N_103, \un1_CAHBLTIlO0l[10] , 
        \un1_CAHBLTIlO0l[9] , \un1_CAHBLTIlO0l[8] , 
        \un1_CAHBLTIlO0l[7] , \un1_CAHBLTIlO0l[1] , 
        \un1_CAHBLTIlO0l[0] , \CAHBLTO1O0[11] , \CAHBLTO1O0[7] , 
        \CAHBLTO1O0[3] , \CAHBLTO1O0[2] , CAHBLTIO0I_net_1, 
        CAHBLTOI0I_net_1, CAHBLTIO0I_RNO_net_1, CAHBLTO1lI, 
        \CAHBLTOO0I[0]_net_1 , \CAHBLTI1lI[6]_net_1 , 
        \CAHBLTI1lI[7]_net_1 , \CAHBLTI1lI[8]_net_1 , 
        \CAHBLTI1lI[9]_net_1 , \CAHBLTI1lI[0]_net_1 , 
        \CAHBLTI1lI[1]_net_1 , \CAHBLTI1lI[2]_net_1 , 
        \CAHBLTI1lI[3]_net_1 , \CAHBLTI1lI[4]_net_1 , 
        \CAHBLTI1lI[5]_net_1 , \CAHBLTOO0I[1]_net_1 , 
        \CAHBLTI1lI[13]_net_1 , \CAHBLTI1lI[14]_net_1 , 
        \CAHBLTI1lI[12]_net_1 , \CAHBLTI0ll[15] , 
        \CAHBLTI1lI[15]_net_1 , CAHBLTO1O0I, N_81, CAHBLTl1lI_net_1, 
        \CAHBLTI1lI[11]_net_1 , \CAHBLTI1lI[10]_net_1 , 
        \CAHBLTI1lI[19]_net_1 , \CAHBLTI1lI[18]_net_1 , 
        \CAHBLTI0ll[17] , \CAHBLTI1lI[17]_net_1 , \CAHBLTI0ll[16] , 
        \CAHBLTI1lI[16]_net_1 , un1_CAHBLTlI0I_17_net_1, CAHBLTO1lI14, 
        CAHBLTl0lI, CAHBLTO1lI14_0, CAHBLTlO0I_net_1, CAHBLTIIIl_net_1, 
        CAHBLTI1O0I, \CAHBLTO10I[0]_net_1 , \CAHBLTO10I[1]_net_1 , 
        \CAHBLTO10I[2]_net_1 , \CAHBLTO10I[3]_net_1 , 
        \CAHBLTO10I[4]_net_1 , \CAHBLTO10I[5]_net_1 , 
        \CAHBLTO10I[6]_net_1 , \CAHBLTO10I[7]_net_1 , 
        \CAHBLTO10I[8]_net_1 , \CAHBLTO10I[9]_net_1 , 
        \CAHBLTO10I[10]_net_1 , \CAHBLTO10I[11]_net_1 , 
        \CAHBLTO10I[12]_net_1 , \CAHBLTO10I[13]_net_1 , 
        \CAHBLTO10I[14]_net_1 , \CAHBLTO10I[15]_net_1 , 
        \CAHBLTl00I[7]_net_1 , \CAHBLTl00I[8]_net_1 , 
        \CAHBLTl00I[9]_net_1 , \CAHBLTl00I[10]_net_1 , 
        \CAHBLTl00I[11]_net_1 , \CAHBLTl00I[12]_net_1 , 
        \CAHBLTl00I[13]_net_1 , \CAHBLTl00I[14]_net_1 , 
        \CAHBLTl00I[15]_net_1 , GND, VCC, GND_0, VCC_0;
    
    DFN1E0C0 \CAHBLTl00I[10]  (.D(\un1_CAHBLTIlO0l[10] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[10]_net_1 ));
    MX2 CAHBLTIO0I_RNI17VP (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1]), .B(
        CAHBLTIO0I_net_1), .S(CAHBLTOI0I_net_1), .Y(CAHBLTO1ll));
    MX2 \CAHBLTI1lI_RNIVH8K[2]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2]), .B(
        \CAHBLTI1lI[2]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_2));
    MX2 CAHBLTl1lI_RNI8BOQ (.A(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), 
        .B(CAHBLTl1lI_net_1), .S(CAHBLTOI0I_net_1), .Y(CAHBLTO01));
    MX2 \CAHBLTI1lI_RNI4I8K[7]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7]), .B(
        \CAHBLTI1lI[7]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_7));
    DFN1E0C0 \CAHBLTO10I[1]  (.D(\CAHBLTO1O0[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[1]_net_1 ));
    NOR2B \CAHBLTl00I_RNID6161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[16]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16]));
    OR2B un1_CAHBLTlI0I_17 (.A(CAHBLTl1lII), .B(CAHBLTO00II), .Y(
        un1_CAHBLTlI0I_17_net_1));
    NOR2B \CAHBLTI1lI_RNINTNH3_0[18]  (.A(\CAHBLTl1II_0[7] ), .B(N_100)
        , .Y(CAHBLTO1lII));
    OR2A \CAHBLTl00I_RNIP5VC[5]  (.A(CAHBLTll0II), .B(CAHBLTI1lII), .Y(
        CAHBLTllIl114_0_o2_0));
    NOR3C \CAHBLTl00I_RNO[9]  (.A(N_103), .B(CAHBLTO1ll), .C(N_100), 
        .Y(\un1_CAHBLTIlO0l[9] ));
    NOR3C \CAHBLTl00I_RNO[2]  (.A(N_102), .B(CAHBLTO1ll), .C(N_99), .Y(
        \un1_CAHBLTIlO0l[2] ));
    DFN1E0C0 \CAHBLTO10I[12]  (.D(\CAHBLTO1O0[12] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[12]_net_1 ));
    NOR2B \CAHBLTl00I_RNIUTD01[5]  (.A(N_115), .B(CAHBLTI1lII), .Y(
        CAHBLTllIl113));
    DFN1E1C0 \CAHBLTI1lI[1]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[1]_net_1 ));
    DFN1E0C0 \CAHBLTl00I[12]  (.D(\un1_CAHBLTIlO0l[12] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[12]_net_1 ));
    NOR3C \CAHBLTI1lI_RNI2AQ52[12]  (.A(\CAHBLTI0ll[12] ), .B(
        \CAHBLTI0ll[13] ), .C(CAHBLTO1ll), .Y(\CAHBLTIOlI_0[7] ));
    MX2 \CAHBLTI1lI_RNIINTL[14]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14]), .B(
        \CAHBLTI1lI[14]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[14] ));
    DFN1E1C0 \CAHBLTOO0I[0]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTOO0I[0]_net_1 ));
    OR2 CAHBLTIO0I_RNO (.A(CAHBLTIO0I_net_1), .B(CAHBLTO1lI), .Y(
        CAHBLTIO0I_RNO_net_1));
    DFN1E0C0 \CAHBLTO10I[3]  (.D(\CAHBLTO1O0[3] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[3]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[13]  (.D(\CAHBLTO1O0[13] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[13]_net_1 ));
    NOR3C \CAHBLTO10I_RNO[4]  (.A(\CAHBLTIOlI_0[4] ), .B(N_98), .C(
        N_82), .Y(\CAHBLTO1O0[4] ));
    OR2A \CAHBLTl00I_RNIRGT61[5]  (.A(N_115), .B(CAHBLTllIl114_0_o2_0), 
        .Y(N_1121));
    NOR2B \CAHBLTl00I_RNIAI061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[31]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31]));
    DFN1E0C0 \CAHBLTl00I[3]  (.D(\un1_CAHBLTIlO0l[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[3]_net_1 ));
    NOR2B \CAHBLTl00I_RNI8E061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[20]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20]));
    DFN1E1C0 \CAHBLTI1lI[3]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[3]_net_1 ));
    NOR2B \CAHBLTl00I_RNI7E061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[10]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10]));
    DFN1E0C0 \CAHBLTl00I[9]  (.D(\un1_CAHBLTIlO0l[9] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[9]_net_1 ));
    DFN1C0 CAHBLTIO0I (.D(CAHBLTIO0I_RNO_net_1), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(CAHBLTIO0I_net_1));
    NOR2B CAHBLTI10I_RNO (.A(N_81), .B(CAHBLTO1ll), .Y(CAHBLTO1O0I));
    NOR2B \CAHBLTO10I_RNO[3]  (.A(\CAHBLTIOlI_1[3] ), .B(N_82), .Y(
        \CAHBLTO1O0[3] ));
    DFN1E0C0 \CAHBLTO10I[7]  (.D(\CAHBLTO1O0[7] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[7]_net_1 ));
    NOR3C \CAHBLTO10I_RNO[14]  (.A(\CAHBLTIOlI_0[6] ), .B(N_98), .C(
        N_83), .Y(\CAHBLTO1O0[14] ));
    MX2 \CAHBLTI1lI_RNIE7TL[10]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10]), .B(
        \CAHBLTI1lI[10]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        CAHBLTI0ll_10));
    DFN1E1C0 \CAHBLTI1lI[7]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[7]_net_1 ));
    MX2 CAHBLTlO0I_RNIAQGQ (.A(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), 
        .B(CAHBLTlO0I_net_1), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI1ll));
    MX2 \CAHBLTI1lI_RNI5I8K[8]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8]), .B(
        \CAHBLTI1lI[8]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_8));
    NOR2B \CAHBLTl00I_RNI8I061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[11]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11]));
    NOR3B \CAHBLTO10I_RNO[0]  (.A(N_82), .B(\CAHBLTIOlI_0[8] ), .C(
        \CAHBLTI0ll[14] ), .Y(\CAHBLTO1O0[0] ));
    NOR2B \CAHBLTl00I_RNIE6161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[26]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26]));
    NOR2B \CAHBLTO10I_RNO[11]  (.A(\CAHBLTIOlI_1[3] ), .B(N_83), .Y(
        \CAHBLTO1O0[11] ));
    NOR2B \CAHBLTO10I_RNO[10]  (.A(\CAHBLTIOlI_1[2] ), .B(N_83), .Y(
        \CAHBLTO1O0[10] ));
    NOR2B \CAHBLTl00I_RNIAQ061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[13]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13]));
    GND GND_i (.Y(GND));
    NOR3C \CAHBLTl00I_RNO[10]  (.A(N_103), .B(CAHBLTO1ll), .C(N_99), 
        .Y(\un1_CAHBLTIlO0l[10] ));
    MX2 \CAHBLTI1lI_RNIL3UL[17]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17]), .B(
        \CAHBLTI1lI[17]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[17] ));
    VCC VCC_i_0 (.Y(VCC_0));
    DFN1E0C0 \CAHBLTl00I[13]  (.D(\un1_CAHBLTIlO0l[13] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[13]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[0]  (.D(\CAHBLTO1O0[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[0]_net_1 ));
    DFN1E1C0 \CAHBLTOO0I[1]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTOO0I[1]_net_1 ));
    MX2 \CAHBLTI1lI_RNI1I8K[4]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4]), .B(
        \CAHBLTI1lI[4]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_4));
    NOR2B \CAHBLTl00I_RNIGE161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[28]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28]));
    NOR2B \CAHBLTl00I_RNIFA161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[27]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27]));
    NOR2B \CAHBLTl00I_RNIAM061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[22]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22]));
    NOR3C \CAHBLTl00I_RNO[1]  (.A(N_102), .B(CAHBLTO1ll), .C(N_100), 
        .Y(\un1_CAHBLTIlO0l[1] ));
    NOR2B \CAHBLTl00I_RNITCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[7]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7]));
    DFN1E1C0 \CAHBLTI1lI[0]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[0]_net_1 ));
    DFN1E0C0 \CAHBLTl00I[1]  (.D(\un1_CAHBLTIlO0l[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[1]_net_1 ));
    OA1B \CAHBLTl00I_RNIPQKO3[5]  (.A(N_1121), .B(
        CoreAHBLite_0_AHBmslave6_HRDATA[1]), .C(\CAHBLTIOII_i_0[1] ), 
        .Y(CAHBLTl00I_RNIPQKO3[5]));
    NOR2B \CAHBLTl00I_RNIBQ061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[23]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23]));
    MX2 \CAHBLTI1lI_RNIKVTL[16]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16]), .B(
        \CAHBLTI1lI[16]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[16] ));
    NOR2 \CAHBLTl00I_RNIF5VC[0]  (.A(\CAHBLTl00I[0]_net_1 ), .B(
        \CAHBLTl00I[1]_net_1 ), .Y(un1_CAHBLTl00I_2_i_a2_0_0));
    DFN1E0C0 \CAHBLTl00I[6]  (.D(CAHBLTIl0II), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(CAHBLTll0II));
    NOR2B \CAHBLTI1lI_RNINTNH3[18]  (.A(\CAHBLTl1II_0[7] ), .B(N_99), 
        .Y(CAHBLTIl0II));
    AOI1B \CAHBLTl00I_RNIJTOC2[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[2]), .B(CAHBLTllIl113), .C(
        N_1121), .Y(\CAHBLTIOII_i_0[2] ));
    DFN1E0C0 \CAHBLTO10I[15]  (.D(\CAHBLTO1O0[15] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[15]_net_1 ));
    MX2 \CAHBLTI1lI_RNI3I8K[6]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6]), .B(
        \CAHBLTI1lI[6]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_6));
    DFN1E1C0 \CAHBLTI1lI[11]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[11]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR3C \CAHBLTO10I_RNO[5]  (.A(N_82), .B(\CAHBLTI0ll[14] ), .C(
        \CAHBLTIOlI_0[9] ), .Y(\CAHBLTO1O0[5] ));
    NOR3C \CAHBLTl00I_RNO[14]  (.A(N_101), .B(CAHBLTO1ll), .C(N_99), 
        .Y(\un1_CAHBLTIlO0l[14] ));
    NOR2B \CAHBLTl00I_RNIGI161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[19]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19]));
    NOR2B \CAHBLTl00I_RNIUCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[8]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8]));
    NOR3C \CAHBLTl00I_RNO[3]  (.A(N_102), .B(CAHBLTO1ll), .C(N_104), 
        .Y(\un1_CAHBLTIlO0l[3] ));
    NOR2B \CAHBLTl00I_RNIHI161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[29]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29]));
    DFN1E1C0 \CAHBLTI1lI[13]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[13]_net_1 ));
    OA1B \CAHBLTl00I_RNINQKO3[5]  (.A(N_1121), .B(
        CoreAHBLite_0_AHBmslave6_HRDATA[0]), .C(\CAHBLTIOII_i_0[0] ), 
        .Y(CAHBLTl00I_RNINQKO3[5]));
    DFN1E1C0 \CAHBLTI1lI[17]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[17]_net_1 ));
    NOR3C \CAHBLTl00I_RNO[8]  (.A(N_103), .B(CAHBLTO1ll), .C(N_80), .Y(
        \un1_CAHBLTIlO0l[8] ));
    NOR3C \CAHBLTl00I_RNO[11]  (.A(N_103), .B(CAHBLTO1ll), .C(N_104), 
        .Y(\un1_CAHBLTIlO0l[11] ));
    AOI1B \CAHBLTl00I_RNIITOC2[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[1]), .B(CAHBLTllIl113), .C(
        N_1121), .Y(\CAHBLTIOII_i_0[1] ));
    DFN1E0C0 \CAHBLTl00I[8]  (.D(\un1_CAHBLTIlO0l[8] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[8]_net_1 ));
    MX2 \CAHBLTOO0I_RNI2VJJ[1]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1]), .B(
        \CAHBLTOO0I[1]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTl0ll[1])
        );
    NOR3B \CAHBLTI1lI_RNI2AQ52_0[12]  (.A(\CAHBLTI0ll[12] ), .B(
        CAHBLTO1ll), .C(\CAHBLTI0ll[13] ), .Y(\CAHBLTIOlI_0[9] ));
    MX2 \CAHBLTI1lI_RNITH8K[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0]), .B(
        \CAHBLTI1lI[0]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_0));
    DFN1E0C0 \CAHBLTl00I[2]  (.D(\un1_CAHBLTIlO0l[2] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[2]_net_1 ));
    NOR3B \CAHBLTI1lI_RNIK1OR2_0[12]  (.A(CAHBLTO1ll), .B(N_84), .C(
        \CAHBLTI0ll[12] ), .Y(\CAHBLTIOlI_1[2] ));
    DFN1E0C0 \CAHBLTl00I[0]  (.D(\un1_CAHBLTIlO0l[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[0]_net_1 ));
    MX2 \CAHBLTI1lI_RNIGFTL[12]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12]), .B(
        \CAHBLTI1lI[12]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[12] ));
    NOR2B \CAHBLTl00I_RNIEA161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[17]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17]));
    NOR3C \CAHBLTO10I_RNO[15]  (.A(\CAHBLTI0ll[14] ), .B(N_83), .C(
        \CAHBLTIOlI_0[7] ), .Y(\CAHBLTO1O0[15] ));
    DFN1E1C0 CAHBLTlO0I (.D(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), 
        .Q(CAHBLTlO0I_net_1));
    DFN1E0C0 \CAHBLTl00I[15]  (.D(\un1_CAHBLTIlO0l[15] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[15]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[6]  (.D(\CAHBLTO1O0[6] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[6]_net_1 ));
    MX2 \CAHBLTI1lI_RNIM7UL[18]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18]), .B(
        \CAHBLTI1lI[18]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[18] ));
    DFN1E1C0 \CAHBLTI1lI[18]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[18]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[10]  (.D(\CAHBLTO1O0[10] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[10]_net_1 ));
    NOR2B \CAHBLTl00I_RNIFE161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[18]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18]));
    MX2 \CAHBLTI1lI_RNI2I8K[5]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5]), .B(
        \CAHBLTI1lI[5]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_5));
    DFN1E1C0 \CAHBLTI1lI[6]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[6]_net_1 ));
    CAHBLTO10_1 CAHBLTI0Il (.CAHBLTO10I({\CAHBLTO10I[15]_net_1 , 
        \CAHBLTO10I[14]_net_1 , \CAHBLTO10I[13]_net_1 , 
        \CAHBLTO10I[12]_net_1 , \CAHBLTO10I[11]_net_1 , 
        \CAHBLTO10I[10]_net_1 , \CAHBLTO10I[9]_net_1 , 
        \CAHBLTO10I[8]_net_1 , \CAHBLTO10I[7]_net_1 , 
        \CAHBLTO10I[6]_net_1 , \CAHBLTO10I[5]_net_1 , 
        \CAHBLTO10I[4]_net_1 , \CAHBLTO10I[3]_net_1 , 
        \CAHBLTO10I[2]_net_1 , \CAHBLTO10I[1]_net_1 , 
        \CAHBLTO10I[0]_net_1 }), .CAHBLTl00I({\CAHBLTl00I[15]_net_1 , 
        \CAHBLTl00I[14]_net_1 , \CAHBLTl00I[13]_net_1 , 
        \CAHBLTl00I[12]_net_1 , \CAHBLTl00I[11]_net_1 , 
        \CAHBLTl00I[10]_net_1 , \CAHBLTl00I[9]_net_1 , 
        \CAHBLTl00I[8]_net_1 , \CAHBLTl00I[7]_net_1 }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1]}), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(
        FAB_CLK), .CAHBLTllIl113(CAHBLTllIl113), .N_1121(N_1121), .N_8(
        N_8), .CAHBLTIIIl(CAHBLTIIIl_net_1), .CAHBLTll0II(CAHBLTll0II), 
        .CAHBLTI1O0I(CAHBLTI1O0I), .N_115(N_115), .CAHBLTIIlI_iv_0(
        CAHBLTIIlI_iv_0), .CAHBLTIIlI_iv(CAHBLTIIlI_iv), 
        .CAHBLTlOII_iv_0(CAHBLTlOII_iv_0), .un1_CAHBLTlI0I_17(
        un1_CAHBLTlI0I_17_net_1), .CAHBLTO1lI14(CAHBLTO1lI14), 
        .CAHBLTlOII_iv(CAHBLTlOII_iv), .CAHBLTO1lI14_0(CAHBLTO1lI14_0));
    NOR2B \CAHBLTl00I_RNIBU061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[14]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14]));
    DFN1E0C0 CAHBLTIIIl (.D(CAHBLTI1ll), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        CAHBLTIIIl_net_1));
    NOR2B \CAHBLTl00I_RNID2161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[25]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25]));
    OA1 CAHBLTOI0I_RNO (.A(CAHBLTO1lI14_0), .B(CAHBLTOI0I_net_1), .C(
        un1_CAHBLTlI0I_17_net_1), .Y(CAHBLTl0lI));
    CAHBLTO_Z2 CAHBLTO0Il (.CAHBLTI0ll({\CAHBLTI0ll[19] , 
        \CAHBLTI0ll[18] , \CAHBLTI0ll[17] , \CAHBLTI0ll[16] , 
        \CAHBLTI0ll[15] , \CAHBLTI0ll[14] , \CAHBLTI0ll[13] , 
        \CAHBLTI0ll[12] }), .N_80(N_80), .N_99(N_99), .N_100(N_100), 
        .N_101(N_101), .N_102(N_102), .N_103(N_103), .N_104(N_104), 
        .N_82(N_82), .N_81(N_81), .N_83(N_83), .N_98(N_98), .N_84(N_84)
        );
    DFN1E0C0 \CAHBLTl00I[5]  (.D(CAHBLTO1lII), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(CAHBLTI1lII));
    NOR3B \CAHBLTO10I_RNO[8]  (.A(N_83), .B(\CAHBLTIOlI_0[8] ), .C(
        \CAHBLTI0ll[14] ), .Y(\CAHBLTO1O0[8] ));
    NOR3C \CAHBLTO10I_RNO[12]  (.A(\CAHBLTIOlI_0[4] ), .B(N_98), .C(
        N_83), .Y(\CAHBLTO1O0[12] ));
    NOR2B \CAHBLTI1lI_RNIIQSF1[13]  (.A(\CAHBLTI0ll[13] ), .B(
        CAHBLTO1ll), .Y(\CAHBLTIOlI_0[6] ));
    NOR3A \CAHBLTI1lI_RNI2AQ52_1[12]  (.A(CAHBLTO1ll), .B(
        \CAHBLTI0ll[12] ), .C(\CAHBLTI0ll[13] ), .Y(\CAHBLTIOlI_0[8] ));
    NOR3C \CAHBLTO10I_RNO[7]  (.A(N_82), .B(\CAHBLTI0ll[14] ), .C(
        \CAHBLTIOlI_0[7] ), .Y(\CAHBLTO1O0[7] ));
    NOR3C \CAHBLTl00I_RNO[0]  (.A(N_102), .B(CAHBLTO1ll), .C(N_80), .Y(
        \un1_CAHBLTIlO0l[0] ));
    GND GND_i_0 (.Y(GND_0));
    AO1A \CAHBLTl00I_RNIDNRQ3[5]  (.A(N_1121), .B(CAHBLTI00II_i_m_0), 
        .C(CAHBLTOO0II_i_m), .Y(CAHBLTlOII_iv_0));
    MX2 \CAHBLTI1lI_RNIFBTL[11]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11]), .B(
        \CAHBLTI1lI[11]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        CAHBLTI0ll_11));
    NOR2B \CAHBLTl00I_RNISCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[6]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6]));
    NOR2B \CAHBLTl00I_RNI9E061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[30]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30]));
    DFN1E1C0 \CAHBLTI1lI[15]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[15]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[9]  (.D(\CAHBLTO1O0[9] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[9]_net_1 ));
    DFN1E1C0 CAHBLTl1lI (.D(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), 
        .Q(CAHBLTl1lI_net_1));
    DFN1E1C0 \CAHBLTI1lI[14]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[14]_net_1 ));
    MX2 \CAHBLTI1lI_RNIUH8K[1]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1]), .B(
        \CAHBLTI1lI[1]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_1));
    DFN1C0 CAHBLTOI0I (.D(CAHBLTl0lI), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(CAHBLTOI0I_net_1));
    DFN1E0C0 \CAHBLTl00I[14]  (.D(\un1_CAHBLTIlO0l[14] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[14]_net_1 ));
    DFN1E1C0 \CAHBLTI1lI[10]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[10]_net_1 ));
    NOR2A CAHBLTOI0I_RNIKBFC91 (.A(CAHBLTO1lI14), .B(CAHBLTOI0I_net_1), 
        .Y(CAHBLTO1lI));
    NOR2B \CAHBLTO10I_RNO[2]  (.A(\CAHBLTIOlI_1[2] ), .B(N_82), .Y(
        \CAHBLTO1O0[2] ));
    DFN1E1C0 \CAHBLTI1lI[12]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[12]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[14]  (.D(\CAHBLTO1O0[14] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[14]_net_1 ));
    NOR2B \CAHBLTl00I_RNIRCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[5]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5]));
    MX2 \CAHBLTI1lI_RNI6I8K[9]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9]), .B(
        \CAHBLTI1lI[9]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_9));
    DFN1E1C0 \CAHBLTI1lI[9]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[9]_net_1 ));
    DFN1E0C0 CAHBLTI10I (.D(CAHBLTO1O0I), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(CAHBLTI1O0I));
    NOR2B \CAHBLTl00I_RNO[7]  (.A(\CAHBLTl1II_0[7] ), .B(N_104), .Y(
        \un1_CAHBLTIlO0l[7] ));
    NOR2B \CAHBLTl00I_RNI2BUP[0]  (.A(un1_CAHBLTl00I_2_i_a2_0_1), .B(
        un1_CAHBLTl00I_2_i_a2_0_0), .Y(N_115));
    DFN1E0C0 \CAHBLTl00I[11]  (.D(\un1_CAHBLTIlO0l[11] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[11]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[4]  (.D(\CAHBLTO1O0[4] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[4]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[8]  (.D(\CAHBLTO1O0[8] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[8]_net_1 ));
    OA1B \CAHBLTl00I_RNITQKO3[5]  (.A(N_1121), .B(
        CoreAHBLite_0_AHBmslave6_HRDATA[3]), .C(\CAHBLTIOII_i_0[3] ), 
        .Y(CAHBLTl00I_RNITQKO3[5]));
    DFN1E1C0 \CAHBLTI1lI[16]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[16]_net_1 ));
    NOR2B \CAHBLTl00I_RNI9I061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[21]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21]));
    NOR3C \CAHBLTI1lI_RNIK1OR2[12]  (.A(CAHBLTO1ll), .B(
        \CAHBLTI0ll[12] ), .C(N_84), .Y(\CAHBLTIOlI_1[3] ));
    DFN1E0C0 \CAHBLTO10I[5]  (.D(\CAHBLTO1O0[5] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[5]_net_1 ));
    MX2 \CAHBLTI1lI_RNI0I8K[3]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3]), .B(
        \CAHBLTI1lI[3]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTI0ll_3));
    DFN1E1C0 \CAHBLTI1lI[19]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19]), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[19]_net_1 ));
    AOI1B \CAHBLTl00I_RNIKTOC2[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[3]), .B(CAHBLTllIl113), .C(
        N_1121), .Y(\CAHBLTIOII_i_0[3] ));
    AOI1B \CAHBLTl00I_RNIHTOC2[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[0]), .B(CAHBLTllIl113), .C(
        N_1121), .Y(\CAHBLTIOII_i_0[0] ));
    NOR2B \CAHBLTl00I_RNICU061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[24]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24]));
    DFN1E1C0 \CAHBLTI1lI[4]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[4]_net_1 ));
    DFN1E1C0 \CAHBLTI1lI[8]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[8]_net_1 ));
    NOR3B \CAHBLTO10I_RNO[1]  (.A(N_82), .B(\CAHBLTIOlI_0[9] ), .C(
        \CAHBLTI0ll[14] ), .Y(\CAHBLTO1O0[1] ));
    DFN1E1C0 \CAHBLTI1lI[5]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[5]_net_1 ));
    MX2 \CAHBLTI1lI_RNIHJTL[13]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13]), .B(
        \CAHBLTI1lI[13]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[13] ));
    NOR3C \CAHBLTl00I_RNO[13]  (.A(N_101), .B(CAHBLTO1ll), .C(N_100), 
        .Y(\un1_CAHBLTIlO0l[13] ));
    NOR2A \CAHBLTI1lI_RNIIQSF1_0[13]  (.A(CAHBLTO1ll), .B(
        \CAHBLTI0ll[13] ), .Y(\CAHBLTIOlI_0[4] ));
    NOR2B \CAHBLTl00I_RNIC2161[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[15]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15]));
    OA1B \CAHBLTl00I_RNIRQKO3[5]  (.A(N_1121), .B(
        CoreAHBLite_0_AHBmslave6_HRDATA[2]), .C(\CAHBLTIOII_i_0[2] ), 
        .Y(CAHBLTl00I_RNIRQKO3[5]));
    AO1D \CAHBLTl00I_RNIFQ1U2[5]  (.A(N_1121), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), .Y(CAHBLTIIlI_iv_0));
    DFN1E0C0 \CAHBLTO10I[11]  (.D(\CAHBLTO1O0[11] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[11]_net_1 ));
    NOR3C \CAHBLTl00I_RNO[15]  (.A(N_101), .B(CAHBLTO1ll), .C(N_104), 
        .Y(\un1_CAHBLTIlO0l[15] ));
    NOR2 \CAHBLTl00I_RNIJ5VC[2]  (.A(\CAHBLTl00I[3]_net_1 ), .B(
        \CAHBLTl00I[2]_net_1 ), .Y(un1_CAHBLTl00I_2_i_a2_0_1));
    NOR2B \CAHBLTl00I_RNIQCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[4]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4]));
    NOR3B \CAHBLTI1lI_RNIEQR52[18]  (.A(\CAHBLTI0ll[18] ), .B(
        CAHBLTO1ll), .C(\CAHBLTI0ll[19] ), .Y(\CAHBLTl1II_0[7] ));
    DFN1E0C0 \CAHBLTl00I[7]  (.D(\un1_CAHBLTIlO0l[7] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTl00I[7]_net_1 ));
    DFN1E0C0 \CAHBLTO10I[2]  (.D(\CAHBLTO1O0[2] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTIIlI_iv), .Q(
        \CAHBLTO10I[2]_net_1 ));
    NOR3C \CAHBLTO10I_RNO[13]  (.A(\CAHBLTI0ll[14] ), .B(N_83), .C(
        \CAHBLTIOlI_0[9] ), .Y(\CAHBLTO1O0[13] ));
    NOR3B \CAHBLTO10I_RNO[9]  (.A(N_83), .B(\CAHBLTIOlI_0[9] ), .C(
        \CAHBLTI0ll[14] ), .Y(\CAHBLTO1O0[9] ));
    NOR3C \CAHBLTO10I_RNO[6]  (.A(\CAHBLTIOlI_0[6] ), .B(N_98), .C(
        N_82), .Y(\CAHBLTO1O0[6] ));
    MX2 \CAHBLTI1lI_RNIJRTL[15]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15]), .B(
        \CAHBLTI1lI[15]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[15] ));
    MX2 \CAHBLTOO0I_RNI1VJJ[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0]), .B(
        \CAHBLTOO0I[0]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(CAHBLTl0ll[0])
        );
    DFN1E1C0 \CAHBLTI1lI[2]  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBLTO1lI), .Q(
        \CAHBLTI1lI[2]_net_1 ));
    NOR3C \CAHBLTl00I_RNO[12]  (.A(N_101), .B(CAHBLTO1ll), .C(N_80), 
        .Y(\un1_CAHBLTIlO0l[12] ));
    MX2 \CAHBLTI1lI_RNINBUL[19]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19]), .B(
        \CAHBLTI1lI[19]_net_1 ), .S(CAHBLTOI0I_net_1), .Y(
        \CAHBLTI0ll[19] ));
    NOR2B \CAHBLTl00I_RNIVCR51[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[9]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9]));
    NOR2B \CAHBLTl00I_RNI9M061[5]  (.A(
        CoreAHBLite_0_AHBmslave5_HRDATA[12]), .B(CAHBLTllIl113), .Y(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12]));
    
endmodule


module CAHBLTlI1_CoreAHBLite_0_CAHBLTO1I0l_CAHBLTI1O0l_CAHBLTlI0l_1(
       CAHBLTl0ll,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       CAHBLTI0ll,
       CoreAHBLite_0_AHBmslave5_HADDR,
       CAHBLTOO0l,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBLTI1ll,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       CAHBLTl1lII,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CAHBLTO01,
       CAHBLTO1lII
    );
input  [0:0] CAHBLTl0ll;
output [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
input  [9:0] CAHBLTI0ll;
output [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
output [1:0] CAHBLTOO0l;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBLTI1ll;
output CoreAHBLite_0_AHBmslave5_HWRITE;
output CAHBLTl1lII;
input  CoreAHBLite_0_AHBmslave5_HREADY;
input  CAHBLTO01;
input  CAHBLTO1lII;

    wire \CAHBLTllOI_ns_2[0] , \CAHBLTllOI[0]_net_1 , 
        \CAHBLTllOI_ns_1[0] , \CAHBLTllOI[5]_net_1 , 
        \CAHBLTllOI_ns_0[0] , \CAHBLTllOI_ns_a5_2_0[0] , N_99, 
        \CAHBLTllOI_ns_0[5] , \CAHBLTllOI_ns_a5_0_0[5] , N_110, 
        \CAHBLTllOI_ns_a5_3_0[0] , \CAHBLTllOI[3]_net_1 , N_93, 
        \CAHBLTllOI_ns[5] , N_108, \CAHBLTllOI_ns[0] , N_95, 
        \CAHBLTllOI[2]_net_1 , \CAHBLTllOI_RNO[2]_net_1 , N_96, 
        \CAHBLTllOI_RNO[4]_net_1 , \CAHBLTllOI_RNO[7]_net_1 , N_111, 
        \CAHBLTllOI_RNO[6]_net_1 , \CAHBLTllOI_ns[3] , 
        \CAHBLTllOI[4]_net_1 , N_97, N_94, \CAHBLTllOI[7]_net_1 , GND, 
        VCC, GND_0, VCC_0;
    
    NOR3B \CAHBLTllOI_RNIU870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[4]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[4]));
    AO1A \CAHBLTllOI_RNO_3[0]  (.A(CAHBLTO01), .B(
        \CAHBLTllOI_ns_a5_2_0[0] ), .C(N_99), .Y(\CAHBLTllOI_ns_0[0] ));
    NOR2B \CAHBLTllOI_RNO_5[0]  (.A(\CAHBLTllOI[2]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(N_99));
    NOR3B \CAHBLTllOI_RNIS870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[2]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[2]));
    DFN1P0 \CAHBLTllOI[0]  (.D(\CAHBLTllOI_ns[0] ), .CLK(FAB_CLK), 
        .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[0]_net_1 ));
    AO1A \CAHBLTllOI_RNO_1[0]  (.A(CAHBLTO1lII), .B(
        \CAHBLTllOI[0]_net_1 ), .C(\CAHBLTllOI_ns_1[0] ), .Y(
        \CAHBLTllOI_ns_2[0] ));
    NOR2A \CAHBLTllOI_RNI3SQI4[7]  (.A(N_97), .B(\CAHBLTllOI[7]_net_1 )
        , .Y(N_111));
    NOR3B \CAHBLTllOI_RNI0970A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[6]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[6]));
    NOR2 \CAHBLTllOI_RNO[7]  (.A(N_111), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_RNO[7]_net_1 )
        );
    VCC VCC_i (.Y(VCC));
    NOR3B \CAHBLTllOI_RNI7HF6A[6]  (.A(CAHBLTOO0l[1]), .B(CAHBLTI1ll), 
        .C(CAHBLTOO0l[0]), .Y(CoreAHBLite_0_AHBmslave5_HWRITE));
    OA1C \CAHBLTllOI_RNO_1[5]  (.A(CAHBLTO1lII), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(N_94), .Y(N_108));
    NOR2A \CAHBLTllOI_RNO[6]  (.A(CAHBLTOO0l[0]), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_RNO[6]_net_1 )
        );
    NOR3B \CAHBLTllOI_RNI2970A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[8]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[8]));
    NOR3B \CAHBLTllOI_RNI1970A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[7]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[7]));
    NOR2B \CAHBLTllOI_RNO_4[0]  (.A(\CAHBLTllOI[0]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_ns_a5_2_0[0] )
        );
    AO1A \CAHBLTllOI_RNO[3]  (.A(CAHBLTO1lII), .B(
        \CAHBLTllOI[3]_net_1 ), .C(\CAHBLTllOI[4]_net_1 ), .Y(
        \CAHBLTllOI_ns[3] ));
    AO1A \CAHBLTllOI_RNO[0]  (.A(N_95), .B(\CAHBLTllOI_ns_a5_3_0[0] ), 
        .C(\CAHBLTllOI_ns_2[0] ), .Y(\CAHBLTllOI_ns[0] ));
    OA1C \CAHBLTllOI_RNO[2]  (.A(N_96), .B(\CAHBLTllOI[2]_net_1 ), .C(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_RNO[2]_net_1 )
        );
    NOR3B \CAHBLTllOI_RNI3970A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[9]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[9]));
    AO1B \CAHBLTllOI_RNI7ED6D[2]  (.A(CoreAHBLite_0_AHBmslave5_HREADY), 
        .B(CAHBLTOO0l[1]), .C(CAHBLTO1lII), .Y(CAHBLTl1lII));
    NOR3B \CAHBLTllOI_RNIV870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[5]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[5]));
    DFN1C0 \CAHBLTllOI[6]  (.D(\CAHBLTllOI_RNO[6]_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(CAHBLTOO0l[0]));
    DFN1C0 \CAHBLTllOI[4]  (.D(\CAHBLTllOI_RNO[4]_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CAHBLTllOI[4]_net_1 ));
    OR2B \CAHBLTllOI_RNIPGTT[5]  (.A(\CAHBLTllOI[5]_net_1 ), .B(
        CAHBLTO01), .Y(N_94));
    NOR2B \CAHBLTllOI_RNO_3[5]  (.A(\CAHBLTllOI[7]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(N_110));
    GND GND_i (.Y(GND));
    NOR2B \CAHBLTllOI_RNO[4]  (.A(CAHBLTOO0l[0]), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_RNO[4]_net_1 )
        );
    NOR3B \CAHBLTllOI_RNIT870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[3]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[3]));
    NOR3B \CAHBLTllOI_RNIULIV9[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTl0ll[0]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HSIZE[0]));
    OR2A \CAHBLTllOI_ns_o3[0]  (.A(CAHBLTO1lII), .B(CAHBLTO01), .Y(
        N_95));
    AO1A \CAHBLTllOI_RNO_2[0]  (.A(CAHBLTO01), .B(
        \CAHBLTllOI[5]_net_1 ), .C(\CAHBLTllOI_ns_0[0] ), .Y(
        \CAHBLTllOI_ns_1[0] ));
    OR2A \CAHBLTllOI_RNIGELF4[5]  (.A(CAHBLTO1lII), .B(N_94), .Y(N_97));
    DFN1C0 \CAHBLTllOI[2]  (.D(\CAHBLTllOI_RNO[2]_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CAHBLTllOI[2]_net_1 ));
    OR3B \CAHBLTllOI_RNIBDP89[2]  (.A(N_96), .B(N_111), .C(
        \CAHBLTllOI[2]_net_1 ), .Y(CAHBLTOO0l[1]));
    OR2 \CAHBLTllOI_RNIRE96[0]  (.A(\CAHBLTllOI[0]_net_1 ), .B(
        \CAHBLTllOI[3]_net_1 ), .Y(N_93));
    DFN1C0 \CAHBLTllOI[5]  (.D(\CAHBLTllOI_ns[5] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[5]_net_1 ));
    OR2 \CAHBLTllOI_RNO[5]  (.A(\CAHBLTllOI_ns_0[5] ), .B(N_108), .Y(
        \CAHBLTllOI_ns[5] ));
    NOR2B \CAHBLTllOI_RNO_2[5]  (.A(N_93), .B(CAHBLTO01), .Y(
        \CAHBLTllOI_ns_a5_0_0[5] ));
    NOR2B \CAHBLTllOI_RNO_0[0]  (.A(\CAHBLTllOI[3]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(\CAHBLTllOI_ns_a5_3_0[0] )
        );
    OR2A \CAHBLTllOI_RNIQNPI4[0]  (.A(N_93), .B(N_95), .Y(N_96));
    DFN1C0 \CAHBLTllOI[3]  (.D(\CAHBLTllOI_ns[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBLTllOI[3]_net_1 ));
    AO1 \CAHBLTllOI_RNO_0[5]  (.A(\CAHBLTllOI_ns_a5_0_0[5] ), .B(
        CAHBLTO1lII), .C(N_110), .Y(\CAHBLTllOI_ns_0[5] ));
    NOR3B \CAHBLTllOI_RNIR870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[1]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[1]));
    DFN1C0 \CAHBLTllOI[7]  (.D(\CAHBLTllOI_RNO[7]_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CAHBLTllOI[7]_net_1 ));
    NOR3B \CAHBLTllOI_RNIQ870A[6]  (.A(CAHBLTOO0l[1]), .B(
        CAHBLTI0ll[0]), .C(CAHBLTOO0l[0]), .Y(
        CoreAHBLite_0_AHBmslave5_HADDR[0]));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module CAHBLTl0Il_1(
       CoreAHBLite_0_AHBmslave5_HADDR,
       CAHBLTI0ll,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       CAHBLTl0ll,
       CAHBLTOO0l,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA,
       CoreAHBLite_0_AHBmslave5_HWDATA,
       CAHBLTO1lII,
       CAHBLTO01,
       CAHBLTl1lII,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       CAHBLTI1ll,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBLTI1lII,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CAHBLTllIl113,
       CAHBLTOO0II_i_m
    );
output [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
input  [9:0] CAHBLTI0ll;
output [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
input  [0:0] CAHBLTl0ll;
output [1:0] CAHBLTOO0l;
input  [31:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA;
output [31:0] CoreAHBLite_0_AHBmslave5_HWDATA;
input  CAHBLTO1lII;
input  CAHBLTO01;
output CAHBLTl1lII;
output CoreAHBLite_0_AHBmslave5_HWRITE;
input  CAHBLTI1ll;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBLTI1lII;
input  CoreAHBLite_0_AHBmslave5_HREADY;
input  CAHBLTllIl113;
output CAHBLTOO0II_i_m;

    wire CAHBLTl1Il6, \CAHBLTIO0l[1]_net_1 , \CAHBLTIO0l[0]_net_1 , 
        CAHBLTOO0II, GND, VCC, GND_0, VCC_0;
    
    NOR2B \CAHBLTIO0l_RNI2RHC_29[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[1]));
    NOR2B \CAHBLTIO0l_RNI2RHC_26[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[4]));
    NOR2B \CAHBLTIO0l_RNI2RHC_15[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[21]));
    NOR2A \CAHBLTIO0l_RNIDDFN1[1]  (.A(CAHBLTllIl113), .B(CAHBLTOO0II), 
        .Y(CAHBLTOO0II_i_m));
    NOR2A \CAHBLTIO0l_RNIRIB9[0]  (.A(\CAHBLTIO0l[1]_net_1 ), .B(
        \CAHBLTIO0l[0]_net_1 ), .Y(CAHBLTl1Il6));
    NOR2B \CAHBLTIO0l_RNI2RHC_7[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[29]));
    NOR2B \CAHBLTIO0l_RNI2RHC_12[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[24]));
    NOR2B \CAHBLTIO0l_RNI2RHC_3[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[11]));
    NOR2B \CAHBLTIO0l_RNI2RHC_13[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[23]));
    NOR2B \CAHBLTIO0l_RNI2RHC_9[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[27]));
    VCC VCC_i (.Y(VCC));
    NOR2B \CAHBLTIO0l_RNI2RHC_1[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[13]));
    NOR2B \CAHBLTIO0l_RNI2RHC_28[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[2]));
    NOR2B \CAHBLTIO0l_RNI2RHC_17[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[19]));
    NOR2B \CAHBLTIO0l_RNI2RHC_10[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[26]));
    NOR2B \CAHBLTIO0l_RNI2RHC_5[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[31]));
    NOR2B \CAHBLTIO0l_RNI2RHC_24[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[6]));
    NOR2B \CAHBLTIO0l_RNI2RHC_2[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[12]));
    NOR2B \CAHBLTIO0l_RNI2RHC_11[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[25]));
    NOR2B \CAHBLTIO0l_RNI2RHC_25[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[5]));
    AO1B \CAHBLTIO0l_RNIFF1N[1]  (.A(CoreAHBLite_0_AHBmslave5_HREADY), 
        .B(\CAHBLTIO0l[1]_net_1 ), .C(CAHBLTI1lII), .Y(CAHBLTOO0II));
    GND GND_i (.Y(GND));
    NOR2B \CAHBLTIO0l_RNI2RHC_19[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[17]));
    NOR2B \CAHBLTIO0l_RNI2RHC_16[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[20]));
    NOR2B \CAHBLTIO0l_RNI2RHC_22[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[8]));
    NOR2B \CAHBLTIO0l_RNI2RHC_0[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[14]));
    NOR2B \CAHBLTIO0l_RNI2RHC_23[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[7]));
    NOR2B \CAHBLTIO0l_RNI2RHC_8[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[28]));
    NOR2B \CAHBLTIO0l_RNI2RHC[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[15]));
    NOR2B \CAHBLTIO0l_RNI2RHC_27[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[3]));
    NOR2B \CAHBLTIO0l_RNI2RHC_20[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[16]));
    NOR2B \CAHBLTIO0l_RNI2RHC_4[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[10]));
    NOR2B \CAHBLTIO0l_RNI2RHC_18[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[18]));
    DFN1E1C0 \CAHBLTIO0l[0]  (.D(CAHBLTOO0l[0]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CoreAHBLite_0_AHBmslave5_HREADY), 
        .Q(\CAHBLTIO0l[0]_net_1 ));
    NOR2B \CAHBLTIO0l_RNI2RHC_6[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[30]));
    NOR2B \CAHBLTIO0l_RNI2RHC_30[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[0]));
    DFN1E1C0 \CAHBLTIO0l[1]  (.D(CAHBLTOO0l[1]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CoreAHBLite_0_AHBmslave5_HREADY), 
        .Q(\CAHBLTIO0l[1]_net_1 ));
    CAHBLTlI1_CoreAHBLite_0_CAHBLTO1I0l_CAHBLTI1O0l_CAHBLTlI0l_1 
        CAHBLTlI0l (.CAHBLTl0ll({CAHBLTl0ll[0]}), 
        .CoreAHBLite_0_AHBmslave5_HSIZE({
        CoreAHBLite_0_AHBmslave5_HSIZE[0]}), .CAHBLTI0ll({
        CAHBLTI0ll[9], CAHBLTI0ll[8], CAHBLTI0ll[7], CAHBLTI0ll[6], 
        CAHBLTI0ll[5], CAHBLTI0ll[4], CAHBLTI0ll[3], CAHBLTI0ll[2], 
        CAHBLTI0ll[1], CAHBLTI0ll[0]}), 
        .CoreAHBLite_0_AHBmslave5_HADDR({
        CoreAHBLite_0_AHBmslave5_HADDR[9], 
        CoreAHBLite_0_AHBmslave5_HADDR[8], 
        CoreAHBLite_0_AHBmslave5_HADDR[7], 
        CoreAHBLite_0_AHBmslave5_HADDR[6], 
        CoreAHBLite_0_AHBmslave5_HADDR[5], 
        CoreAHBLite_0_AHBmslave5_HADDR[4], 
        CoreAHBLite_0_AHBmslave5_HADDR[3], 
        CoreAHBLite_0_AHBmslave5_HADDR[2], 
        CoreAHBLite_0_AHBmslave5_HADDR[1], 
        CoreAHBLite_0_AHBmslave5_HADDR[0]}), .CAHBLTOO0l({
        CAHBLTOO0l[1], CAHBLTOO0l[0]}), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), .CAHBLTI1ll(
        CAHBLTI1ll), .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), .CAHBLTl1lII(CAHBLTl1lII), 
        .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), .CAHBLTO01(CAHBLTO01), 
        .CAHBLTO1lII(CAHBLTO1lII));
    NOR2B \CAHBLTIO0l_RNI2RHC_21[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[9]));
    NOR2B \CAHBLTIO0l_RNI2RHC_14[0]  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22]), .B(CAHBLTl1Il6), 
        .Y(CoreAHBLite_0_AHBmslave5_HWDATA[22]));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module CAHBLTlOl0_1_0_96_0_0(
       CoreAHBLite_0_AHBmslave6_HWDATA,
       CoreAHBLite_0_AHBmslave6_HADDR,
       CoreAHBLite_0_AHBmslave5_HWDATA,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA,
       CAHBLTOO0l,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       CoreAHBLite_0_AHBmslave5_HADDR,
       CoreAHBLite_0_AHBmslave5_HRDATA,
       CAHBLTl00I_RNITQKO3,
       CoreAHBLite_0_AHBmslave6_HRDATA,
       CAHBLTl00I_RNIRQKO3,
       CAHBLTl00I_RNIPQKO3,
       CAHBLTl00I_RNINQKO3,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA,
       CAHBLTl0ll_1,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR,
       un1_CAHBLTI1OI,
       CAHBLTI1Il6,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       CoreAHBLite_0_AHBmslave6_HREADY,
       CoreAHBLite_0_AHBmslave5_HREADY_i_m,
       CAHBLTO1ll,
       CAHBLTI1lII,
       CAHBLTllIl113,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK,
       CAHBLTI1ll,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE,
       FAB_CLK,
       MSS_CORE2_0_M2F_RESET_N,
       CAHBLTIIlI_iv,
       N_8,
       CAHBLTlOII_iv
    );
output [0:0] CoreAHBLite_0_AHBmslave6_HWDATA;
output [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
output [31:0] CoreAHBLite_0_AHBmslave5_HWDATA;
input  [31:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA;
output [1:0] CAHBLTOO0l;
output [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
output [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
input  [31:0] CoreAHBLite_0_AHBmslave5_HRDATA;
output [5:5] CAHBLTl00I_RNITQKO3;
input  [3:0] CoreAHBLite_0_AHBmslave6_HRDATA;
output [5:5] CAHBLTl00I_RNIRQKO3;
output [5:5] CAHBLTl00I_RNIPQKO3;
output [5:5] CAHBLTl00I_RNINQKO3;
input  [1:1] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS;
output [31:4] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA;
output CAHBLTl0ll_1;
input  [1:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE;
input  [19:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR;
output un1_CAHBLTI1OI;
output CAHBLTI1Il6;
input  CoreAHBLite_0_AHBmslave5_HREADY;
output CoreAHBLite_0_AHBmslave5_HWRITE;
input  CoreAHBLite_0_AHBmslave6_HREADY;
input  CoreAHBLite_0_AHBmslave5_HREADY_i_m;
output CAHBLTO1ll;
output CAHBLTI1lII;
output CAHBLTllIl113;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK;
output CAHBLTI1ll;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE;
input  FAB_CLK;
input  MSS_CORE2_0_M2F_RESET_N;
output CAHBLTIIlI_iv;
output N_8;
output CAHBLTlOII_iv;

    wire \CAHBLTI0ll[10] , \CAHBLTI0ll[11] , \CAHBLTI0ll[5] , 
        \CAHBLTI0ll[4] , \CAHBLTI0ll[3] , \CAHBLTI0ll[2] , 
        \CAHBLTI0ll[1] , \CAHBLTI0ll[0] , \CAHBLTI0ll[9] , 
        \CAHBLTI0ll[8] , \CAHBLTI0ll[7] , \CAHBLTI0ll[6] , 
        \CAHBLTl0ll[0] , CAHBLTO00II, CAHBLTl1lII, CAHBLTO01, 
        CAHBLTIl0II, CAHBLTO1lII, CAHBLTll0II, CAHBLTOO0II_i_m, 
        CAHBLTI00II_i_m_0, GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    CAHBLTl0Il_2 CAHBLTl1O0l (.CoreAHBLite_0_AHBmslave6_HADDR({
        CoreAHBLite_0_AHBmslave6_HADDR[11], 
        CoreAHBLite_0_AHBmslave6_HADDR[10], 
        CoreAHBLite_0_AHBmslave6_HADDR[9], 
        CoreAHBLite_0_AHBmslave6_HADDR[8], 
        CoreAHBLite_0_AHBmslave6_HADDR[7], 
        CoreAHBLite_0_AHBmslave6_HADDR[6], 
        CoreAHBLite_0_AHBmslave6_HADDR[5], 
        CoreAHBLite_0_AHBmslave6_HADDR[4], 
        CoreAHBLite_0_AHBmslave6_HADDR[3], 
        CoreAHBLite_0_AHBmslave6_HADDR[2], 
        CoreAHBLite_0_AHBmslave6_HADDR[1], 
        CoreAHBLite_0_AHBmslave6_HADDR[0]}), .CAHBLTI0ll({
        \CAHBLTI0ll[11] , \CAHBLTI0ll[10] , \CAHBLTI0ll[9] , 
        \CAHBLTI0ll[8] , \CAHBLTI0ll[7] , \CAHBLTI0ll[6] , 
        \CAHBLTI0ll[5] , \CAHBLTI0ll[4] , \CAHBLTI0ll[3] , 
        \CAHBLTI0ll[2] , \CAHBLTI0ll[1] , \CAHBLTI0ll[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]}), 
        .CoreAHBLite_0_AHBmslave6_HWDATA({
        CoreAHBLite_0_AHBmslave6_HWDATA[0]}), .CAHBLTIl0II(CAHBLTIl0II)
        , .CAHBLTO01(CAHBLTO01), .CAHBLTI1Il6(CAHBLTI1Il6), 
        .CAHBLTO00II(CAHBLTO00II), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), .CAHBLTIIlI_iv(
        CAHBLTIIlI_iv), .un1_CAHBLTI1OI(un1_CAHBLTI1OI), .CAHBLTll0II(
        CAHBLTll0II), .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), .CAHBLTI00II_i_m_0(
        CAHBLTI00II_i_m_0));
    CAHBLTO0OI_1_96_0_0_1_0_0 CAHBLTIlO0l (
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0]}), .CAHBLTI0ll_10(
        \CAHBLTI0ll[10] ), .CAHBLTI0ll_11(\CAHBLTI0ll[11] ), 
        .CAHBLTI0ll_5(\CAHBLTI0ll[5] ), .CAHBLTI0ll_4(\CAHBLTI0ll[4] ), 
        .CAHBLTI0ll_3(\CAHBLTI0ll[3] ), .CAHBLTI0ll_2(\CAHBLTI0ll[2] ), 
        .CAHBLTI0ll_1(\CAHBLTI0ll[1] ), .CAHBLTI0ll_0(\CAHBLTI0ll[0] ), 
        .CAHBLTI0ll_9(\CAHBLTI0ll[9] ), .CAHBLTI0ll_8(\CAHBLTI0ll[8] ), 
        .CAHBLTI0ll_7(\CAHBLTI0ll[7] ), .CAHBLTI0ll_6(\CAHBLTI0ll[6] ), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0]}), .CAHBLTl0ll({
        CAHBLTl0ll_1, \CAHBLTl0ll[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1]}), 
        .CAHBLTl00I_RNINQKO3({CAHBLTl00I_RNINQKO3[5]}), 
        .CAHBLTl00I_RNIPQKO3({CAHBLTl00I_RNIPQKO3[5]}), 
        .CAHBLTl00I_RNIRQKO3({CAHBLTl00I_RNIRQKO3[5]}), 
        .CoreAHBLite_0_AHBmslave6_HRDATA({
        CoreAHBLite_0_AHBmslave6_HRDATA[3], 
        CoreAHBLite_0_AHBmslave6_HRDATA[2], 
        CoreAHBLite_0_AHBmslave6_HRDATA[1], 
        CoreAHBLite_0_AHBmslave6_HRDATA[0]}), .CAHBLTl00I_RNITQKO3({
        CAHBLTl00I_RNITQKO3[5]}), .CoreAHBLite_0_AHBmslave5_HRDATA({
        CoreAHBLite_0_AHBmslave5_HRDATA[31], 
        CoreAHBLite_0_AHBmslave5_HRDATA[30], 
        CoreAHBLite_0_AHBmslave5_HRDATA[29], 
        CoreAHBLite_0_AHBmslave5_HRDATA[28], 
        CoreAHBLite_0_AHBmslave5_HRDATA[27], 
        CoreAHBLite_0_AHBmslave5_HRDATA[26], 
        CoreAHBLite_0_AHBmslave5_HRDATA[25], 
        CoreAHBLite_0_AHBmslave5_HRDATA[24], 
        CoreAHBLite_0_AHBmslave5_HRDATA[23], 
        CoreAHBLite_0_AHBmslave5_HRDATA[22], 
        CoreAHBLite_0_AHBmslave5_HRDATA[21], 
        CoreAHBLite_0_AHBmslave5_HRDATA[20], 
        CoreAHBLite_0_AHBmslave5_HRDATA[19], 
        CoreAHBLite_0_AHBmslave5_HRDATA[18], 
        CoreAHBLite_0_AHBmslave5_HRDATA[17], 
        CoreAHBLite_0_AHBmslave5_HRDATA[16], 
        CoreAHBLite_0_AHBmslave5_HRDATA[15], 
        CoreAHBLite_0_AHBmslave5_HRDATA[14], 
        CoreAHBLite_0_AHBmslave5_HRDATA[13], 
        CoreAHBLite_0_AHBmslave5_HRDATA[12], 
        CoreAHBLite_0_AHBmslave5_HRDATA[11], 
        CoreAHBLite_0_AHBmslave5_HRDATA[10], 
        CoreAHBLite_0_AHBmslave5_HRDATA[9], 
        CoreAHBLite_0_AHBmslave5_HRDATA[8], 
        CoreAHBLite_0_AHBmslave5_HRDATA[7], 
        CoreAHBLite_0_AHBmslave5_HRDATA[6], 
        CoreAHBLite_0_AHBmslave5_HRDATA[5], 
        CoreAHBLite_0_AHBmslave5_HRDATA[4], 
        CoreAHBLite_0_AHBmslave5_HRDATA[3], 
        CoreAHBLite_0_AHBmslave5_HRDATA[2], 
        CoreAHBLite_0_AHBmslave5_HRDATA[1], 
        CoreAHBLite_0_AHBmslave5_HRDATA[0]}), .CAHBLTlOII_iv(
        CAHBLTlOII_iv), .N_8(N_8), .CAHBLTIIlI_iv(CAHBLTIIlI_iv), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(
        FAB_CLK), .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .CAHBLTI1ll(
        CAHBLTI1ll), .CAHBLTO00II(CAHBLTO00II), .CAHBLTl1lII(
        CAHBLTl1lII), .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .CAHBLTO01(CAHBLTO01), 
        .CAHBLTIl0II(CAHBLTIl0II), .CAHBLTO1lII(CAHBLTO1lII), 
        .CAHBLTllIl113(CAHBLTllIl113), .CAHBLTI1lII(CAHBLTI1lII), 
        .CAHBLTll0II(CAHBLTll0II), .CAHBLTOO0II_i_m(CAHBLTOO0II_i_m), 
        .CAHBLTI00II_i_m_0(CAHBLTI00II_i_m_0), .CAHBLTO1ll(CAHBLTO1ll), 
        .CoreAHBLite_0_AHBmslave5_HREADY_i_m(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), 
        .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAHBLTl0Il_1 CAHBLTI1O0l (.CoreAHBLite_0_AHBmslave5_HADDR({
        CoreAHBLite_0_AHBmslave5_HADDR[9], 
        CoreAHBLite_0_AHBmslave5_HADDR[8], 
        CoreAHBLite_0_AHBmslave5_HADDR[7], 
        CoreAHBLite_0_AHBmslave5_HADDR[6], 
        CoreAHBLite_0_AHBmslave5_HADDR[5], 
        CoreAHBLite_0_AHBmslave5_HADDR[4], 
        CoreAHBLite_0_AHBmslave5_HADDR[3], 
        CoreAHBLite_0_AHBmslave5_HADDR[2], 
        CoreAHBLite_0_AHBmslave5_HADDR[1], 
        CoreAHBLite_0_AHBmslave5_HADDR[0]}), .CAHBLTI0ll({
        \CAHBLTI0ll[9] , \CAHBLTI0ll[8] , \CAHBLTI0ll[7] , 
        \CAHBLTI0ll[6] , \CAHBLTI0ll[5] , \CAHBLTI0ll[4] , 
        \CAHBLTI0ll[3] , \CAHBLTI0ll[2] , \CAHBLTI0ll[1] , 
        \CAHBLTI0ll[0] }), .CoreAHBLite_0_AHBmslave5_HSIZE({
        CoreAHBLite_0_AHBmslave5_HSIZE[0]}), .CAHBLTl0ll({
        \CAHBLTl0ll[0] }), .CAHBLTOO0l({CAHBLTOO0l[1], CAHBLTOO0l[0]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]}), 
        .CoreAHBLite_0_AHBmslave5_HWDATA({
        CoreAHBLite_0_AHBmslave5_HWDATA[31], 
        CoreAHBLite_0_AHBmslave5_HWDATA[30], 
        CoreAHBLite_0_AHBmslave5_HWDATA[29], 
        CoreAHBLite_0_AHBmslave5_HWDATA[28], 
        CoreAHBLite_0_AHBmslave5_HWDATA[27], 
        CoreAHBLite_0_AHBmslave5_HWDATA[26], 
        CoreAHBLite_0_AHBmslave5_HWDATA[25], 
        CoreAHBLite_0_AHBmslave5_HWDATA[24], 
        CoreAHBLite_0_AHBmslave5_HWDATA[23], 
        CoreAHBLite_0_AHBmslave5_HWDATA[22], 
        CoreAHBLite_0_AHBmslave5_HWDATA[21], 
        CoreAHBLite_0_AHBmslave5_HWDATA[20], 
        CoreAHBLite_0_AHBmslave5_HWDATA[19], 
        CoreAHBLite_0_AHBmslave5_HWDATA[18], 
        CoreAHBLite_0_AHBmslave5_HWDATA[17], 
        CoreAHBLite_0_AHBmslave5_HWDATA[16], 
        CoreAHBLite_0_AHBmslave5_HWDATA[15], 
        CoreAHBLite_0_AHBmslave5_HWDATA[14], 
        CoreAHBLite_0_AHBmslave5_HWDATA[13], 
        CoreAHBLite_0_AHBmslave5_HWDATA[12], 
        CoreAHBLite_0_AHBmslave5_HWDATA[11], 
        CoreAHBLite_0_AHBmslave5_HWDATA[10], 
        CoreAHBLite_0_AHBmslave5_HWDATA[9], 
        CoreAHBLite_0_AHBmslave5_HWDATA[8], 
        CoreAHBLite_0_AHBmslave5_HWDATA[7], 
        CoreAHBLite_0_AHBmslave5_HWDATA[6], 
        CoreAHBLite_0_AHBmslave5_HWDATA[5], 
        CoreAHBLite_0_AHBmslave5_HWDATA[4], 
        CoreAHBLite_0_AHBmslave5_HWDATA[3], 
        CoreAHBLite_0_AHBmslave5_HWDATA[2], 
        CoreAHBLite_0_AHBmslave5_HWDATA[1], 
        CoreAHBLite_0_AHBmslave5_HWDATA[0]}), .CAHBLTO1lII(CAHBLTO1lII)
        , .CAHBLTO01(CAHBLTO01), .CAHBLTl1lII(CAHBLTl1lII), 
        .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), .CAHBLTI1ll(CAHBLTI1ll), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(
        FAB_CLK), .CAHBLTI1lII(CAHBLTI1lII), 
        .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), .CAHBLTllIl113(CAHBLTllIl113)
        , .CAHBLTOO0II_i_m(CAHBLTOO0II_i_m));
    
endmodule


module CoreAHBLite_Z3(
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE,
       CAHBLTl0ll,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS,
       CAHBLTl00I_RNINQKO3,
       CAHBLTl00I_RNIPQKO3,
       CAHBLTl00I_RNIRQKO3,
       CoreAHBLite_0_AHBmslave6_HRDATA,
       CAHBLTl00I_RNITQKO3,
       CoreAHBLite_0_AHBmslave5_HRDATA,
       CoreAHBLite_0_AHBmslave5_HADDR,
       CoreAHBLite_0_AHBmslave5_HSIZE,
       CAHBLTOO0l,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA,
       CoreAHBLite_0_AHBmslave5_HWDATA,
       CoreAHBLite_0_AHBmslave6_HADDR,
       CoreAHBLite_0_AHBmslave6_HWDATA,
       CAHBLTlOII_iv,
       N_8,
       CAHBLTIIlI_iv,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE,
       CAHBLTI1ll,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK,
       CAHBLTllIl113,
       CAHBLTI1lII,
       CAHBLTO1ll,
       CoreAHBLite_0_AHBmslave5_HREADY_i_m,
       CoreAHBLite_0_AHBmslave6_HREADY,
       CoreAHBLite_0_AHBmslave5_HWRITE,
       CoreAHBLite_0_AHBmslave5_HREADY,
       CAHBLTI1Il6,
       un1_CAHBLTI1OI
    );
input  [19:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR;
input  [1:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE;
output [1:1] CAHBLTl0ll;
output [31:4] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA;
input  [1:1] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS;
output [5:5] CAHBLTl00I_RNINQKO3;
output [5:5] CAHBLTl00I_RNIPQKO3;
output [5:5] CAHBLTl00I_RNIRQKO3;
input  [3:0] CoreAHBLite_0_AHBmslave6_HRDATA;
output [5:5] CAHBLTl00I_RNITQKO3;
input  [31:0] CoreAHBLite_0_AHBmslave5_HRDATA;
output [9:0] CoreAHBLite_0_AHBmslave5_HADDR;
output [0:0] CoreAHBLite_0_AHBmslave5_HSIZE;
output [1:0] CAHBLTOO0l;
input  [31:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA;
output [31:0] CoreAHBLite_0_AHBmslave5_HWDATA;
output [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
output [0:0] CoreAHBLite_0_AHBmslave6_HWDATA;
output CAHBLTlOII_iv;
output N_8;
output CAHBLTIIlI_iv;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE;
output CAHBLTI1ll;
input  MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK;
output CAHBLTllIl113;
output CAHBLTI1lII;
output CAHBLTO1ll;
input  CoreAHBLite_0_AHBmslave5_HREADY_i_m;
input  CoreAHBLite_0_AHBmslave6_HREADY;
output CoreAHBLite_0_AHBmslave5_HWRITE;
input  CoreAHBLite_0_AHBmslave5_HREADY;
output CAHBLTI1Il6;
output un1_CAHBLTI1OI;

    wire GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    CAHBLTlOl0_1_0_96_0_0 CAHBLTO1I0l (
        .CoreAHBLite_0_AHBmslave6_HWDATA({
        CoreAHBLite_0_AHBmslave6_HWDATA[0]}), 
        .CoreAHBLite_0_AHBmslave6_HADDR({
        CoreAHBLite_0_AHBmslave6_HADDR[11], 
        CoreAHBLite_0_AHBmslave6_HADDR[10], 
        CoreAHBLite_0_AHBmslave6_HADDR[9], 
        CoreAHBLite_0_AHBmslave6_HADDR[8], 
        CoreAHBLite_0_AHBmslave6_HADDR[7], 
        CoreAHBLite_0_AHBmslave6_HADDR[6], 
        CoreAHBLite_0_AHBmslave6_HADDR[5], 
        CoreAHBLite_0_AHBmslave6_HADDR[4], 
        CoreAHBLite_0_AHBmslave6_HADDR[3], 
        CoreAHBLite_0_AHBmslave6_HADDR[2], 
        CoreAHBLite_0_AHBmslave6_HADDR[1], 
        CoreAHBLite_0_AHBmslave6_HADDR[0]}), 
        .CoreAHBLite_0_AHBmslave5_HWDATA({
        CoreAHBLite_0_AHBmslave5_HWDATA[31], 
        CoreAHBLite_0_AHBmslave5_HWDATA[30], 
        CoreAHBLite_0_AHBmslave5_HWDATA[29], 
        CoreAHBLite_0_AHBmslave5_HWDATA[28], 
        CoreAHBLite_0_AHBmslave5_HWDATA[27], 
        CoreAHBLite_0_AHBmslave5_HWDATA[26], 
        CoreAHBLite_0_AHBmslave5_HWDATA[25], 
        CoreAHBLite_0_AHBmslave5_HWDATA[24], 
        CoreAHBLite_0_AHBmslave5_HWDATA[23], 
        CoreAHBLite_0_AHBmslave5_HWDATA[22], 
        CoreAHBLite_0_AHBmslave5_HWDATA[21], 
        CoreAHBLite_0_AHBmslave5_HWDATA[20], 
        CoreAHBLite_0_AHBmslave5_HWDATA[19], 
        CoreAHBLite_0_AHBmslave5_HWDATA[18], 
        CoreAHBLite_0_AHBmslave5_HWDATA[17], 
        CoreAHBLite_0_AHBmslave5_HWDATA[16], 
        CoreAHBLite_0_AHBmslave5_HWDATA[15], 
        CoreAHBLite_0_AHBmslave5_HWDATA[14], 
        CoreAHBLite_0_AHBmslave5_HWDATA[13], 
        CoreAHBLite_0_AHBmslave5_HWDATA[12], 
        CoreAHBLite_0_AHBmslave5_HWDATA[11], 
        CoreAHBLite_0_AHBmslave5_HWDATA[10], 
        CoreAHBLite_0_AHBmslave5_HWDATA[9], 
        CoreAHBLite_0_AHBmslave5_HWDATA[8], 
        CoreAHBLite_0_AHBmslave5_HWDATA[7], 
        CoreAHBLite_0_AHBmslave5_HWDATA[6], 
        CoreAHBLite_0_AHBmslave5_HWDATA[5], 
        CoreAHBLite_0_AHBmslave5_HWDATA[4], 
        CoreAHBLite_0_AHBmslave5_HWDATA[3], 
        CoreAHBLite_0_AHBmslave5_HWDATA[2], 
        CoreAHBLite_0_AHBmslave5_HWDATA[1], 
        CoreAHBLite_0_AHBmslave5_HWDATA[0]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]}), .CAHBLTOO0l({
        CAHBLTOO0l[1], CAHBLTOO0l[0]}), 
        .CoreAHBLite_0_AHBmslave5_HSIZE({
        CoreAHBLite_0_AHBmslave5_HSIZE[0]}), 
        .CoreAHBLite_0_AHBmslave5_HADDR({
        CoreAHBLite_0_AHBmslave5_HADDR[9], 
        CoreAHBLite_0_AHBmslave5_HADDR[8], 
        CoreAHBLite_0_AHBmslave5_HADDR[7], 
        CoreAHBLite_0_AHBmslave5_HADDR[6], 
        CoreAHBLite_0_AHBmslave5_HADDR[5], 
        CoreAHBLite_0_AHBmslave5_HADDR[4], 
        CoreAHBLite_0_AHBmslave5_HADDR[3], 
        CoreAHBLite_0_AHBmslave5_HADDR[2], 
        CoreAHBLite_0_AHBmslave5_HADDR[1], 
        CoreAHBLite_0_AHBmslave5_HADDR[0]}), 
        .CoreAHBLite_0_AHBmslave5_HRDATA({
        CoreAHBLite_0_AHBmslave5_HRDATA[31], 
        CoreAHBLite_0_AHBmslave5_HRDATA[30], 
        CoreAHBLite_0_AHBmslave5_HRDATA[29], 
        CoreAHBLite_0_AHBmslave5_HRDATA[28], 
        CoreAHBLite_0_AHBmslave5_HRDATA[27], 
        CoreAHBLite_0_AHBmslave5_HRDATA[26], 
        CoreAHBLite_0_AHBmslave5_HRDATA[25], 
        CoreAHBLite_0_AHBmslave5_HRDATA[24], 
        CoreAHBLite_0_AHBmslave5_HRDATA[23], 
        CoreAHBLite_0_AHBmslave5_HRDATA[22], 
        CoreAHBLite_0_AHBmslave5_HRDATA[21], 
        CoreAHBLite_0_AHBmslave5_HRDATA[20], 
        CoreAHBLite_0_AHBmslave5_HRDATA[19], 
        CoreAHBLite_0_AHBmslave5_HRDATA[18], 
        CoreAHBLite_0_AHBmslave5_HRDATA[17], 
        CoreAHBLite_0_AHBmslave5_HRDATA[16], 
        CoreAHBLite_0_AHBmslave5_HRDATA[15], 
        CoreAHBLite_0_AHBmslave5_HRDATA[14], 
        CoreAHBLite_0_AHBmslave5_HRDATA[13], 
        CoreAHBLite_0_AHBmslave5_HRDATA[12], 
        CoreAHBLite_0_AHBmslave5_HRDATA[11], 
        CoreAHBLite_0_AHBmslave5_HRDATA[10], 
        CoreAHBLite_0_AHBmslave5_HRDATA[9], 
        CoreAHBLite_0_AHBmslave5_HRDATA[8], 
        CoreAHBLite_0_AHBmslave5_HRDATA[7], 
        CoreAHBLite_0_AHBmslave5_HRDATA[6], 
        CoreAHBLite_0_AHBmslave5_HRDATA[5], 
        CoreAHBLite_0_AHBmslave5_HRDATA[4], 
        CoreAHBLite_0_AHBmslave5_HRDATA[3], 
        CoreAHBLite_0_AHBmslave5_HRDATA[2], 
        CoreAHBLite_0_AHBmslave5_HRDATA[1], 
        CoreAHBLite_0_AHBmslave5_HRDATA[0]}), .CAHBLTl00I_RNITQKO3({
        CAHBLTl00I_RNITQKO3[5]}), .CoreAHBLite_0_AHBmslave6_HRDATA({
        CoreAHBLite_0_AHBmslave6_HRDATA[3], 
        CoreAHBLite_0_AHBmslave6_HRDATA[2], 
        CoreAHBLite_0_AHBmslave6_HRDATA[1], 
        CoreAHBLite_0_AHBmslave6_HRDATA[0]}), .CAHBLTl00I_RNIRQKO3({
        CAHBLTl00I_RNIRQKO3[5]}), .CAHBLTl00I_RNIPQKO3({
        CAHBLTl00I_RNIPQKO3[5]}), .CAHBLTl00I_RNINQKO3({
        CAHBLTl00I_RNINQKO3[5]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4]}), .CAHBLTl0ll_1(
        CAHBLTl0ll[1]), .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0]}), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0]}), .un1_CAHBLTI1OI(
        un1_CAHBLTI1OI), .CAHBLTI1Il6(CAHBLTI1Il6), 
        .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), 
        .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), 
        .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), 
        .CoreAHBLite_0_AHBmslave5_HREADY_i_m(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), .CAHBLTO1ll(CAHBLTO1ll), 
        .CAHBLTI1lII(CAHBLTI1lII), .CAHBLTllIl113(CAHBLTllIl113), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .CAHBLTI1ll(CAHBLTI1ll)
        , .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .FAB_CLK(FAB_CLK), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), 
        .CAHBLTIIlI_iv(CAHBLTIIlI_iv), .N_8(N_8), .CAHBLTlOII_iv(
        CAHBLTlOII_iv));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module CAHBtoAPB3O(
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       COREAHBTOAPB3_0_APBmaster_PSELx,
       TP_PENABLE_c,
       COREAHBTOAPB3_0_APBmaster_PREADY,
       CAHBtoAPB3lI,
       CAHBtoAPB3l_i_3,
       CAHBLTI1ll,
       CAHBLTI1Il6,
       N_179,
       CAHBtoAPB3Il,
       CAHBtoAPB3lII,
       un1_CAHBLTI1OI,
       CoreAHBLite_0_AHBmslave6_HREADY,
       CAHBLTO1ll,
       CAHBtoAPB3l4_1,
       CAHBtoAPB3II,
       TP_PWRITE_c,
       CAHBtoAPB3OI,
       N_152
    );
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
output COREAHBTOAPB3_0_APBmaster_PSELx;
input  TP_PENABLE_c;
input  COREAHBTOAPB3_0_APBmaster_PREADY;
output CAHBtoAPB3lI;
output CAHBtoAPB3l_i_3;
input  CAHBLTI1ll;
input  CAHBLTI1Il6;
output N_179;
output CAHBtoAPB3Il;
output CAHBtoAPB3lII;
input  un1_CAHBLTI1OI;
output CoreAHBLite_0_AHBmslave6_HREADY;
input  CAHBLTO1ll;
output CAHBtoAPB3l4_1;
output CAHBtoAPB3II;
output TP_PWRITE_c;
output CAHBtoAPB3OI;
output N_152;

    wire HREADYOUT_4_0_0_0, N_175_1, HREADYOUT_4_0_0, 
        \CAHBtoAPB3IOI_ns_i_0[3] , CAHBtoAPB3Il_0_0, 
        \CAHBtoAPB3IOI[4]_net_1 , CAHBtoAPB3III_10_i_0, 
        CAHBtoAPB3III_net_1, N_155, N_171, \CAHBtoAPB3IOI_ns_0[0] , 
        \CAHBtoAPB3IOI[0]_net_1 , \CAHBtoAPB3IOI_ns_i_a3_0[3] , 
        \CAHBtoAPB3IOI[3]_net_1 , CAHBtoAPB3l4_1_1, 
        HREADYOUT_4_0_a3_0_0, \CAHBtoAPB3IOI_RNO[3]_net_1 , N_151, 
        HREADYOUT_4, N_176, N_156, CAHBtoAPB3III_RNO_net_1, N_153, 
        \CAHBtoAPB3IOI_ns[0] , HREADYOUT_4_0_0_tz, N_158, 
        \CAHBtoAPB3IOI_RNIDSHR2[1]_net_1 , CAHBtoAPB3lII_RNO_net_1, 
        PSEL_RNO_net_1, \CAHBtoAPB3IOI_ns[4] , N_168, 
        \CAHBtoAPB3IOI_ns[1] , N_165, CAHBtoAPB3ll4_net_1, GND, VCC, 
        GND_0, VCC_0;
    
    OR2B \CAHBtoAPB3IOI_RNI6F912[2]  (.A(CAHBtoAPB3ll4_net_1), .B(
        TP_PWRITE_c), .Y(N_152));
    OR3 HREADYOUT_RNO (.A(N_176), .B(HREADYOUT_4_0_0_0), .C(N_156), .Y(
        HREADYOUT_4));
    NOR3C HREADYOUT_RNI2A1441 (.A(CAHBLTI1Il6), .B(CAHBLTI1ll), .C(
        CAHBtoAPB3l4_1), .Y(N_175_1));
    AO1 \CAHBtoAPB3IOI_RNO[1]  (.A(N_158), .B(N_175_1), .C(N_165), .Y(
        \CAHBtoAPB3IOI_ns[1] ));
    NOR2B \CAHBtoAPB3IOI_RNI55DBR[1]  (.A(N_153), .B(CAHBtoAPB3l4_1), 
        .Y(CAHBtoAPB3lI));
    OA1C CAHBtoAPB3III_RNO (.A(N_153), .B(N_151), .C(
        CAHBtoAPB3III_10_i_0), .Y(CAHBtoAPB3III_RNO_net_1));
    AO1A \CAHBtoAPB3IOI_RNICUSN2[1]  (.A(CAHBtoAPB3ll4_net_1), .B(
        HREADYOUT_4_0_a3_0_0), .C(CAHBtoAPB3OI), .Y(N_153));
    OR2 \CAHBtoAPB3IOI_RNI9L8Q[4]  (.A(\CAHBtoAPB3IOI[4]_net_1 ), .B(
        CAHBtoAPB3OI), .Y(CAHBtoAPB3Il_0_0));
    DFN1C0 \CAHBtoAPB3IOI[3]  (.D(\CAHBtoAPB3IOI_RNO[3]_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CAHBtoAPB3IOI[3]_net_1 ));
    NOR2 \CAHBtoAPB3IOI_RNIVLPKQ[2]  (.A(N_152), .B(CAHBtoAPB3l4_1), 
        .Y(N_179));
    AO1A \CAHBtoAPB3IOI_RNO[0]  (.A(CAHBtoAPB3lII), .B(N_179), .C(
        \CAHBtoAPB3IOI_ns_0[0] ), .Y(\CAHBtoAPB3IOI_ns[0] ));
    VCC VCC_i (.Y(VCC));
    DFN1C0 PSEL (.D(PSEL_RNO_net_1), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(COREAHBTOAPB3_0_APBmaster_PSELx));
    NOR3C \CAHBtoAPB3IOI_RNO_0[1]  (.A(CAHBtoAPB3lII), .B(N_179), .C(
        CAHBtoAPB3III_net_1), .Y(N_165));
    OR2B \CAHBtoAPB3IOI_RNIHMT1R[0]  (.A(N_158), .B(CAHBtoAPB3l4_1), 
        .Y(CAHBtoAPB3l_i_3));
    NOR2B HREADYOUT_RNIP6GJO (.A(CAHBtoAPB3l4_1_1), .B(CAHBLTI1Il6), 
        .Y(CAHBtoAPB3l4_1));
    DFN1C0 \CAHBtoAPB3IOI[4]  (.D(\CAHBtoAPB3IOI_ns[4] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBtoAPB3IOI[4]_net_1 ));
    NOR3A CAHBtoAPB3III_RNO_1 (.A(CAHBtoAPB3lII), .B(
        CAHBtoAPB3III_net_1), .C(CAHBtoAPB3OI), .Y(N_171));
    DFN1C0 \CAHBtoAPB3IOI[1]  (.D(\CAHBtoAPB3IOI_ns[1] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(CAHBtoAPB3OI));
    AO1A \CAHBtoAPB3IOI_RNITVDB51[0]  (.A(N_151), .B(
        \CAHBtoAPB3IOI[0]_net_1 ), .C(CAHBtoAPB3Il_0_0), .Y(
        CAHBtoAPB3Il));
    OR2B \CAHBtoAPB3IOI_RNI632FR[1]  (.A(
        \CAHBtoAPB3IOI_RNIDSHR2[1]_net_1 ), .B(CAHBtoAPB3l4_1), .Y(
        N_155));
    OA1C CAHBtoAPB3lII_RNO (.A(N_155), .B(CAHBtoAPB3lII), .C(N_179), 
        .Y(CAHBtoAPB3lII_RNO_net_1));
    AO1A HREADYOUT_RNO_1 (.A(N_152), .B(N_175_1), .C(HREADYOUT_4_0_0), 
        .Y(HREADYOUT_4_0_0_0));
    OR3 \CAHBtoAPB3IOI_RNO_1[3]  (.A(CAHBtoAPB3OI), .B(TP_PWRITE_c), 
        .C(CAHBtoAPB3II), .Y(\CAHBtoAPB3IOI_ns_i_0[3] ));
    OR2A \CAHBtoAPB3IOI_RNIOFDE2[0]  (.A(N_152), .B(
        \CAHBtoAPB3IOI[0]_net_1 ), .Y(N_158));
    GND GND_i (.Y(GND));
    AO1A CAHBtoAPB3III_RNO_0 (.A(CAHBtoAPB3III_net_1), .B(N_155), .C(
        N_171), .Y(CAHBtoAPB3III_10_i_0));
    NOR2A HREADYOUT_RNO_2 (.A(HREADYOUT_4_0_0_tz), .B(CAHBtoAPB3l4_1), 
        .Y(HREADYOUT_4_0_0));
    NOR2B HREADYOUT_RNO_0 (.A(N_179), .B(CAHBtoAPB3III_net_1), .Y(
        N_176));
    NOR3C HREADYOUT_RNIQTFTD (.A(CAHBLTO1ll), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(un1_CAHBLTI1OI), .Y(
        CAHBtoAPB3l4_1_1));
    NOR2A CAHBtoAPB3lII_RNI7JJM (.A(TP_PWRITE_c), .B(CAHBtoAPB3lII), 
        .Y(HREADYOUT_4_0_a3_0_0));
    AO1 \CAHBtoAPB3IOI_RNIRTEI61[0]  (.A(\CAHBtoAPB3IOI[0]_net_1 ), .B(
        N_151), .C(CAHBtoAPB3II), .Y(N_156));
    DFN1P0 \CAHBtoAPB3IOI[0]  (.D(\CAHBtoAPB3IOI_ns[0] ), .CLK(FAB_CLK)
        , .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBtoAPB3IOI[0]_net_1 ));
    DFN1C0 CAHBtoAPB3III (.D(CAHBtoAPB3III_RNO_net_1), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(CAHBtoAPB3III_net_1));
    AO1A \CAHBtoAPB3IOI_RNO_0[0]  (.A(CAHBtoAPB3l4_1), .B(
        \CAHBtoAPB3IOI[0]_net_1 ), .C(CAHBtoAPB3II), .Y(
        \CAHBtoAPB3IOI_ns_0[0] ));
    OR2 HREADYOUT_RNO_3 (.A(CAHBtoAPB3OI), .B(HREADYOUT_4_0_a3_0_0), 
        .Y(HREADYOUT_4_0_0_tz));
    NOR2 \CAHBtoAPB3IOI_RNO_0[3]  (.A(\CAHBtoAPB3IOI[4]_net_1 ), .B(
        \CAHBtoAPB3IOI[3]_net_1 ), .Y(\CAHBtoAPB3IOI_ns_i_a3_0[3] ));
    DFN1C0 CAHBtoAPB3lII_inst_1 (.D(CAHBtoAPB3lII_RNO_net_1), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(CAHBtoAPB3lII));
    NOR2B \CAHBtoAPB3IOI_RNI7J912[3]  (.A(\CAHBtoAPB3IOI[3]_net_1 ), 
        .B(CAHBtoAPB3ll4_net_1), .Y(CAHBtoAPB3II));
    AO1B HREADYOUT_RNI2A1441_0 (.A(CAHBLTI1ll), .B(CAHBLTI1Il6), .C(
        CAHBtoAPB3l4_1), .Y(N_151));
    NOR2B CAHBtoAPB3ll4 (.A(COREAHBTOAPB3_0_APBmaster_PREADY), .B(
        TP_PENABLE_c), .Y(CAHBtoAPB3ll4_net_1));
    AOI1 \CAHBtoAPB3IOI_RNO[3]  (.A(\CAHBtoAPB3IOI_ns_i_a3_0[3] ), .B(
        N_151), .C(\CAHBtoAPB3IOI_ns_i_0[3] ), .Y(
        \CAHBtoAPB3IOI_RNO[3]_net_1 ));
    OA1 \CAHBtoAPB3IOI_RNIDSHR2[1]  (.A(CAHBtoAPB3OI), .B(TP_PWRITE_c), 
        .C(N_152), .Y(\CAHBtoAPB3IOI_RNIDSHR2[1]_net_1 ));
    NOR2A PSEL_RNO (.A(N_152), .B(N_156), .Y(PSEL_RNO_net_1));
    DFN1P0 HREADYOUT (.D(HREADYOUT_4), .CLK(FAB_CLK), .PRE(
        MSS_CORE2_0_M2F_RESET_N), .Q(CoreAHBLite_0_AHBmslave6_HREADY));
    NOR3B \CAHBtoAPB3IOI_RNO_0[4]  (.A(CAHBtoAPB3lII), .B(N_179), .C(
        CAHBtoAPB3III_net_1), .Y(N_168));
    AO1D \CAHBtoAPB3IOI_RNO[4]  (.A(N_151), .B(N_152), .C(N_168), .Y(
        \CAHBtoAPB3IOI_ns[4] ));
    DFN1C0 \CAHBtoAPB3IOI[2]  (.D(\CAHBtoAPB3IOI_RNIDSHR2[1]_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(TP_PWRITE_c));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module CAHBtoAPB3IOl(
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBtoAPB3II,
       CAHBtoAPB3Il,
       N_152,
       TP_PENABLE_c
    );
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBtoAPB3II;
input  CAHBtoAPB3Il;
input  N_152;
output TP_PENABLE_c;

    wire \CAHBtoAPB3IIl_0_0_a3_0[1] , \CAHBtoAPB3OIl_ns[0] , 
        \CAHBtoAPB3OIl[0]_net_1 , \CAHBtoAPB3IIl[1] , GND, VCC, GND_0, 
        VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    AO1A \CAHBtoAPB3OIl_RNO[1]  (.A(CAHBtoAPB3II), .B(
        \CAHBtoAPB3IIl_0_0_a3_0[1] ), .C(\CAHBtoAPB3OIl[0]_net_1 ), .Y(
        \CAHBtoAPB3IIl[1] ));
    GND GND_i_0 (.Y(GND_0));
    NOR3A \CAHBtoAPB3OIl_RNO[0]  (.A(CAHBtoAPB3Il), .B(TP_PENABLE_c), 
        .C(\CAHBtoAPB3OIl[0]_net_1 ), .Y(\CAHBtoAPB3OIl_ns[0] ));
    NOR2B \CAHBtoAPB3OIl_RNO_0[1]  (.A(TP_PENABLE_c), .B(N_152), .Y(
        \CAHBtoAPB3IIl_0_0_a3_0[1] ));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \CAHBtoAPB3OIl[1]  (.D(\CAHBtoAPB3IIl[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(TP_PENABLE_c));
    GND GND_i (.Y(GND));
    DFN1C0 \CAHBtoAPB3OIl[0]  (.D(\CAHBtoAPB3OIl_ns[0] ), .CLK(FAB_CLK)
        , .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(\CAHBtoAPB3OIl[0]_net_1 ));
    
endmodule


module CAHBtoAPB3O1I(
       CoreAHBLite_0_AHBmslave6_HWDATA,
       CoreAPB3_0_APBmslave0_0_PWDATA,
       COREAHBTOAPB3_0_APBmaster_PRDATA,
       CoreAHBLite_0_AHBmslave6_HRDATA,
       CoreAPB3_0_APBmslave0_0_PADDR,
       CoreAHBLite_0_AHBmslave6_HADDR,
       CAHBtoAPB3lI,
       CAHBtoAPB3OI,
       CAHBtoAPB3II,
       MSS_CORE2_0_M2F_RESET_N,
       FAB_CLK,
       CAHBtoAPB3lII,
       N_179,
       CAHBtoAPB3l4_1,
       CAHBtoAPB3l_i_3
    );
input  [0:0] CoreAHBLite_0_AHBmslave6_HWDATA;
output [0:0] CoreAPB3_0_APBmslave0_0_PWDATA;
input  [3:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
output [3:0] CoreAHBLite_0_AHBmslave6_HRDATA;
output [11:0] CoreAPB3_0_APBmslave0_0_PADDR;
input  [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
input  CAHBtoAPB3lI;
input  CAHBtoAPB3OI;
input  CAHBtoAPB3II;
input  MSS_CORE2_0_M2F_RESET_N;
input  FAB_CLK;
input  CAHBtoAPB3lII;
input  N_179;
input  CAHBtoAPB3l4_1;
input  CAHBtoAPB3l_i_3;

    wire \CAHBtoAPB3I1I_5[0] , \CAHBtoAPB3l1I[0]_net_1 , 
        \CAHBtoAPB3I1I_5[1] , \CAHBtoAPB3l1I[1]_net_1 , 
        \CAHBtoAPB3I1I_5[2] , \CAHBtoAPB3l1I[2]_net_1 , 
        \CAHBtoAPB3I1I_5[3] , \CAHBtoAPB3l1I[3]_net_1 , 
        \CAHBtoAPB3I1I_5[4] , \CAHBtoAPB3l1I[4]_net_1 , 
        \CAHBtoAPB3I1I_5[6] , \CAHBtoAPB3l1I[6]_net_1 , 
        \CAHBtoAPB3I1I_5[8] , \CAHBtoAPB3l1I[8]_net_1 , 
        \CAHBtoAPB3I1I_5[9] , \CAHBtoAPB3l1I[9]_net_1 , 
        \CAHBtoAPB3I1I_5[10] , \CAHBtoAPB3l1I[10]_net_1 , 
        \CAHBtoAPB3I1I_5[11] , \CAHBtoAPB3l1I[11]_net_1 , 
        \CAHBtoAPB3I1I_5[5] , \CAHBtoAPB3l1I[5]_net_1 , 
        \CAHBtoAPB3I1I_5[7] , \CAHBtoAPB3l1I[7]_net_1 , 
        CAHBtoAPB3I1I_1_sqmuxa_net_1, GND, VCC, GND_0, VCC_0;
    
    DFN1E0C0 \PADDR[11]  (.D(\CAHBtoAPB3I1I_5[11] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1)
        , .Q(CoreAPB3_0_APBmslave0_0_PADDR[11]));
    DFN1E0C0 \PADDR[8]  (.D(\CAHBtoAPB3I1I_5[8] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[8]));
    MX2 \PADDR_RNO[10]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[10]), .B(
        \CAHBtoAPB3l1I[10]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[10] ));
    DFN1E1C0 \CAHBtoAPB3l1I[8]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[8]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[8]_net_1 ));
    DFN1E1C0 \CAHBtoAPB3l1I[10]  (.D(
        CoreAHBLite_0_AHBmslave6_HADDR[10]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), .Q(
        \CAHBtoAPB3l1I[10]_net_1 ));
    DFN1E1C0 \HRDATA[0]  (.D(COREAHBTOAPB3_0_APBmaster_PRDATA[0]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3II), 
        .Q(CoreAHBLite_0_AHBmslave6_HRDATA[0]));
    DFN1E1C0 \HRDATA[3]  (.D(COREAHBTOAPB3_0_APBmaster_PRDATA[3]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3II), 
        .Q(CoreAHBLite_0_AHBmslave6_HRDATA[3]));
    DFN1E0C0 \PADDR[5]  (.D(\CAHBtoAPB3I1I_5[5] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[5]));
    MX2 \PADDR_RNO[1]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[1]), .B(
        \CAHBtoAPB3l1I[1]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[1] ));
    DFN1E0C0 \PADDR[3]  (.D(\CAHBtoAPB3I1I_5[3] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[3]));
    MX2 \PADDR_RNO[0]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[0]), .B(
        \CAHBtoAPB3l1I[0]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[0] ));
    MX2 \PADDR_RNO[3]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[3]), .B(
        \CAHBtoAPB3l1I[3]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[3] ));
    DFN1E1C0 \CAHBtoAPB3l1I[1]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[1]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AOI1B CAHBtoAPB3I1I_1_sqmuxa (.A(N_179), .B(CAHBtoAPB3lII), .C(
        CAHBtoAPB3l_i_3), .Y(CAHBtoAPB3I1I_1_sqmuxa_net_1));
    MX2 \PADDR_RNO[9]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[9]), .B(
        \CAHBtoAPB3l1I[9]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[9] ));
    DFN1E1C0 \CAHBtoAPB3l1I[9]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[9]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[9]_net_1 ));
    DFN1E0C0 \PADDR[7]  (.D(\CAHBtoAPB3I1I_5[7] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[7]));
    DFN1E0C0 \PADDR[6]  (.D(\CAHBtoAPB3I1I_5[6] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[6]));
    MX2 \PADDR_RNO[7]  (.A(\CAHBtoAPB3l1I[7]_net_1 ), .B(
        CoreAHBLite_0_AHBmslave6_HADDR[7]), .S(CAHBtoAPB3l4_1), .Y(
        \CAHBtoAPB3I1I_5[7] ));
    DFN1E1C0 \CAHBtoAPB3l1I[4]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[4]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[4]_net_1 ));
    MX2 \PADDR_RNO[6]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[6]), .B(
        \CAHBtoAPB3l1I[6]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[6] ));
    DFN1E0C0 \PADDR[1]  (.D(\CAHBtoAPB3I1I_5[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[1]));
    DFN1E1C0 \CAHBtoAPB3l1I[5]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[5]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[5]_net_1 ));
    GND GND_i (.Y(GND));
    MX2 \PADDR_RNO[4]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[4]), .B(
        \CAHBtoAPB3l1I[4]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[4] ));
    DFN1E1C0 \CAHBtoAPB3l1I[3]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[3]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[3]_net_1 ));
    MX2 \PADDR_RNO[11]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[11]), .B(
        \CAHBtoAPB3l1I[11]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[11] ));
    DFN1E1C0 \CAHBtoAPB3l1I[2]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[2]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[2]_net_1 ));
    MX2 \PADDR_RNO[2]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[2]), .B(
        \CAHBtoAPB3l1I[2]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[2] ));
    MX2 \PADDR_RNO[8]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[8]), .B(
        \CAHBtoAPB3l1I[8]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[8] ));
    DFN1E1C0 \HRDATA[2]  (.D(COREAHBTOAPB3_0_APBmaster_PRDATA[2]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3II), 
        .Q(CoreAHBLite_0_AHBmslave6_HRDATA[2]));
    DFN1E0C0 \PADDR[0]  (.D(\CAHBtoAPB3I1I_5[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[0]));
    DFN1E1C0 \CAHBtoAPB3l1I[0]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[0]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[0]_net_1 ));
    DFN1E0C0 \PADDR[4]  (.D(\CAHBtoAPB3I1I_5[4] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[4]));
    DFN1E1C0 \HRDATA[1]  (.D(COREAHBTOAPB3_0_APBmaster_PRDATA[1]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3II), 
        .Q(CoreAHBLite_0_AHBmslave6_HRDATA[1]));
    DFN1E0C0 \PADDR[9]  (.D(\CAHBtoAPB3I1I_5[9] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[9]));
    DFN1E1C0 \PWDATA[0]  (.D(CoreAHBLite_0_AHBmslave6_HWDATA[0]), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3OI), .Q(
        CoreAPB3_0_APBmslave0_0_PWDATA[0]));
    DFN1E1C0 \CAHBtoAPB3l1I[11]  (.D(
        CoreAHBLite_0_AHBmslave6_HADDR[11]), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), .Q(
        \CAHBtoAPB3l1I[11]_net_1 ));
    DFN1E1C0 \CAHBtoAPB3l1I[6]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[6]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[6]_net_1 ));
    DFN1E0C0 \PADDR[2]  (.D(\CAHBtoAPB3I1I_5[2] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1), .Q(
        CoreAPB3_0_APBmslave0_0_PADDR[2]));
    MX2 \PADDR_RNO[5]  (.A(CoreAHBLite_0_AHBmslave6_HADDR[5]), .B(
        \CAHBtoAPB3l1I[5]_net_1 ), .S(CAHBtoAPB3l_i_3), .Y(
        \CAHBtoAPB3I1I_5[5] ));
    DFN1E0C0 \PADDR[10]  (.D(\CAHBtoAPB3I1I_5[10] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3I1I_1_sqmuxa_net_1)
        , .Q(CoreAPB3_0_APBmslave0_0_PADDR[10]));
    DFN1E1C0 \CAHBtoAPB3l1I[7]  (.D(CoreAHBLite_0_AHBmslave6_HADDR[7]), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(CAHBtoAPB3lI), 
        .Q(\CAHBtoAPB3l1I[7]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module COREAHBTOAPB3_15s(
       CoreAHBLite_0_AHBmslave6_HADDR,
       CoreAPB3_0_APBmslave0_0_PADDR,
       CoreAHBLite_0_AHBmslave6_HRDATA,
       COREAHBTOAPB3_0_APBmaster_PRDATA,
       CoreAPB3_0_APBmslave0_0_PWDATA,
       CoreAHBLite_0_AHBmslave6_HWDATA,
       TP_PWRITE_c,
       CAHBLTO1ll,
       CoreAHBLite_0_AHBmslave6_HREADY,
       un1_CAHBLTI1OI,
       CAHBLTI1Il6,
       CAHBLTI1ll,
       COREAHBTOAPB3_0_APBmaster_PREADY,
       TP_PENABLE_c,
       COREAHBTOAPB3_0_APBmaster_PSELx,
       FAB_CLK,
       MSS_CORE2_0_M2F_RESET_N
    );
input  [11:0] CoreAHBLite_0_AHBmslave6_HADDR;
output [11:0] CoreAPB3_0_APBmslave0_0_PADDR;
output [3:0] CoreAHBLite_0_AHBmslave6_HRDATA;
input  [3:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
output [0:0] CoreAPB3_0_APBmslave0_0_PWDATA;
input  [0:0] CoreAHBLite_0_AHBmslave6_HWDATA;
output TP_PWRITE_c;
input  CAHBLTO1ll;
output CoreAHBLite_0_AHBmslave6_HREADY;
input  un1_CAHBLTI1OI;
input  CAHBLTI1Il6;
input  CAHBLTI1ll;
input  COREAHBTOAPB3_0_APBmaster_PREADY;
output TP_PENABLE_c;
output COREAHBTOAPB3_0_APBmaster_PSELx;
input  FAB_CLK;
input  MSS_CORE2_0_M2F_RESET_N;

    wire CAHBtoAPB3lI, CAHBtoAPB3l_i_3, N_179, CAHBtoAPB3Il, 
        CAHBtoAPB3lII, CAHBtoAPB3l4_1, CAHBtoAPB3II, CAHBtoAPB3OI, 
        N_152, GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    CAHBtoAPB3O CAHBtoAPB3Oll (.MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), 
        .COREAHBTOAPB3_0_APBmaster_PSELx(
        COREAHBTOAPB3_0_APBmaster_PSELx), .TP_PENABLE_c(TP_PENABLE_c), 
        .COREAHBTOAPB3_0_APBmaster_PREADY(
        COREAHBTOAPB3_0_APBmaster_PREADY), .CAHBtoAPB3lI(CAHBtoAPB3lI), 
        .CAHBtoAPB3l_i_3(CAHBtoAPB3l_i_3), .CAHBLTI1ll(CAHBLTI1ll), 
        .CAHBLTI1Il6(CAHBLTI1Il6), .N_179(N_179), .CAHBtoAPB3Il(
        CAHBtoAPB3Il), .CAHBtoAPB3lII(CAHBtoAPB3lII), .un1_CAHBLTI1OI(
        un1_CAHBLTI1OI), .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), .CAHBLTO1ll(CAHBLTO1ll), 
        .CAHBtoAPB3l4_1(CAHBtoAPB3l4_1), .CAHBtoAPB3II(CAHBtoAPB3II), 
        .TP_PWRITE_c(TP_PWRITE_c), .CAHBtoAPB3OI(CAHBtoAPB3OI), .N_152(
        N_152));
    GND GND_i_0 (.Y(GND_0));
    CAHBtoAPB3IOl CAHBtoAPB3Ill (.MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), .CAHBtoAPB3II(
        CAHBtoAPB3II), .CAHBtoAPB3Il(CAHBtoAPB3Il), .N_152(N_152), 
        .TP_PENABLE_c(TP_PENABLE_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAHBtoAPB3O1I CAHBtoAPB3lll (.CoreAHBLite_0_AHBmslave6_HWDATA({
        CoreAHBLite_0_AHBmslave6_HWDATA[0]}), 
        .CoreAPB3_0_APBmslave0_0_PWDATA({
        CoreAPB3_0_APBmslave0_0_PWDATA[0]}), 
        .COREAHBTOAPB3_0_APBmaster_PRDATA({
        COREAHBTOAPB3_0_APBmaster_PRDATA[3], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[2], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[1], 
        COREAHBTOAPB3_0_APBmaster_PRDATA[0]}), 
        .CoreAHBLite_0_AHBmslave6_HRDATA({
        CoreAHBLite_0_AHBmslave6_HRDATA[3], 
        CoreAHBLite_0_AHBmslave6_HRDATA[2], 
        CoreAHBLite_0_AHBmslave6_HRDATA[1], 
        CoreAHBLite_0_AHBmslave6_HRDATA[0]}), 
        .CoreAPB3_0_APBmslave0_0_PADDR({
        CoreAPB3_0_APBmslave0_0_PADDR[11], 
        CoreAPB3_0_APBmslave0_0_PADDR[10], 
        CoreAPB3_0_APBmslave0_0_PADDR[9], 
        CoreAPB3_0_APBmslave0_0_PADDR[8], 
        CoreAPB3_0_APBmslave0_0_PADDR[7], 
        CoreAPB3_0_APBmslave0_0_PADDR[6], 
        CoreAPB3_0_APBmslave0_0_PADDR[5], 
        CoreAPB3_0_APBmslave0_0_PADDR[4], 
        CoreAPB3_0_APBmslave0_0_PADDR[3], 
        CoreAPB3_0_APBmslave0_0_PADDR[2], 
        CoreAPB3_0_APBmslave0_0_PADDR[1], 
        CoreAPB3_0_APBmslave0_0_PADDR[0]}), 
        .CoreAHBLite_0_AHBmslave6_HADDR({
        CoreAHBLite_0_AHBmslave6_HADDR[11], 
        CoreAHBLite_0_AHBmslave6_HADDR[10], 
        CoreAHBLite_0_AHBmslave6_HADDR[9], 
        CoreAHBLite_0_AHBmslave6_HADDR[8], 
        CoreAHBLite_0_AHBmslave6_HADDR[7], 
        CoreAHBLite_0_AHBmslave6_HADDR[6], 
        CoreAHBLite_0_AHBmslave6_HADDR[5], 
        CoreAHBLite_0_AHBmslave6_HADDR[4], 
        CoreAHBLite_0_AHBmslave6_HADDR[3], 
        CoreAHBLite_0_AHBmslave6_HADDR[2], 
        CoreAHBLite_0_AHBmslave6_HADDR[1], 
        CoreAHBLite_0_AHBmslave6_HADDR[0]}), .CAHBtoAPB3lI(
        CAHBtoAPB3lI), .CAHBtoAPB3OI(CAHBtoAPB3OI), .CAHBtoAPB3II(
        CAHBtoAPB3II), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(FAB_CLK), .CAHBtoAPB3lII(
        CAHBtoAPB3lII), .N_179(N_179), .CAHBtoAPB3l4_1(CAHBtoAPB3l4_1), 
        .CAHBtoAPB3l_i_3(CAHBtoAPB3l_i_3));
    
endmodule


module MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC(
       MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC,
       MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND,
       MSS_ADLIB_INST_MACCLKCCC,
       MSS_ADLIB_INST_PLLLOCK,
       CLK50_c,
       MAINXIN,
       GLA0,
       FAB_CLK
    );
input  MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC;
input  MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND;
output MSS_ADLIB_INST_MACCLKCCC;
output MSS_ADLIB_INST_PLLLOCK;
input  CLK50_c;
input  MAINXIN;
output GLA0;
output FAB_CLK;

    wire N_CLKA_XTLOSC, N_PLLINT_CLKC_Y, I_MSSCCC_GLA, I_MSSCCC_GLC, 
        I_MSSCCC_LOCK, I_MSSCCC_YB, I_MSSCCC_YC, GND, VCC, GND_0, 
        VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    MSS_CCC #( .VCOFREQUENCY(80.000000) )  I_MSSCCC (.CLKA(
        N_CLKA_XTLOSC), .EXTFB(MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), 
        .GLA(I_MSSCCC_GLA), .GLAMSS(GLA0), .LOCK(I_MSSCCC_LOCK), 
        .LOCKMSS(MSS_ADLIB_INST_PLLLOCK), .CLKB(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .GLB(FAB_CLK), .YB(
        I_MSSCCC_YB), .CLKC(N_PLLINT_CLKC_Y), .GLC(I_MSSCCC_GLC), .YC(
        I_MSSCCC_YC), .MACCLK(MSS_ADLIB_INST_MACCLKCCC), .OADIV({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .OADIVHALF(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .OAMUX({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .BYPASSA(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .DLYGLA({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .DLYGLAMSS({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .DLYGLAFAB({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .OBDIV({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .OBDIVHALF(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .OBMUX({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .BYPASSB(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .DLYGLB({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .OCDIV({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .OCDIVHALF(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .OCMUX({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .BYPASSC(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC), .DLYGLC({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .FINDIV({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .FBDIV({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .FBDLY({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .FBSEL({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC}), .XDLYSEL(
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND), .GLMUXSEL({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}), .GLMUXCFG({
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND, 
        MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND}));
    GND GND_i_0 (.Y(GND_0));
    PLLINT I_CLKC_PLLINT (.A(CLK50_c), .Y(N_PLLINT_CLKC_Y));
    VCC VCC_i (.Y(VCC));
    MSS_XTLOSC I_XTLOSC (.XTL(MAINXIN), .CLKOUT(N_CLKA_XTLOSC));
    GND GND_i (.Y(GND));
    
endmodule


module MSS_CORE2(
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA,
       CAHBLTl00I_RNITQKO3,
       CAHBLTl00I_RNIRQKO3,
       CAHBLTl00I_RNIPQKO3,
       CAHBLTl00I_RNINQKO3,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS_1,
       MAC_RXD,
       MAC_TXD,
       MAINXIN,
       CLK50_c,
       N_8,
       CAHBLTlOII_iv,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE,
       MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK,
       MSS_CORE2_GND,
       FAB_CLK,
       MSS_CORE2_VCC,
       MAC_CRSDV,
       MAC_MDC,
       MAC_MDIO,
       MAC_RXER,
       MAC_TXEN,
       MSS_RESET_N,
       UART_0_RXD,
       UART_0_TXD,
       MSS_CORE2_0_M2F_RESET_N
    );
output [1:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE;
input  [31:4] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA;
input  [5:5] CAHBLTl00I_RNITQKO3;
input  [5:5] CAHBLTl00I_RNIRQKO3;
input  [5:5] CAHBLTl00I_RNIPQKO3;
input  [5:5] CAHBLTl00I_RNINQKO3;
output [31:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA;
output [19:0] MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR;
output MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS_1;
input  [1:0] MAC_RXD;
output [1:0] MAC_TXD;
input  MAINXIN;
input  CLK50_c;
input  N_8;
input  CAHBLTlOII_iv;
output MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE;
output MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK;
input  MSS_CORE2_GND;
output FAB_CLK;
input  MSS_CORE2_VCC;
input  MAC_CRSDV;
output MAC_MDC;
inout  MAC_MDIO;
input  MAC_RXER;
output MAC_TXEN;
input  MSS_RESET_N;
input  UART_0_RXD;
output UART_0_TXD;
output MSS_CORE2_0_M2F_RESET_N;

    wire MSS_ADLIB_INST_M2FRESETn, MSS_UART_0_TXD_D, MSS_UART_0_RXD_Y, 
        MSS_RESET_0_MSS_RESET_N_Y, MSS_MAC_0_TXEN_D, \MACTXD_net_0[1] , 
        \MACTXD_net_0[0] , MSS_MAC_0_RXER_Y, MSS_MAC_0_RXD_1_Y, 
        MSS_MAC_0_RXD_0_Y, MSS_MAC_0_MDIO_Y, MSS_MAC_0_MDIO_D, 
        MSS_MAC_0_MDIO_E, MSS_MAC_0_MDC_D, MSS_MAC_0_CRSDV_Y, 
        MSS_ADLIB_INST_EMCRWn, MSS_ADLIB_INST_EMCDBOE, 
        MSS_ADLIB_INST_EMCCLK, MSS_ADLIB_INST_CALIBOUT, 
        MSS_ADLIB_INST_WDINT, MSS_ADLIB_INST_DEEPSLEEP, 
        MSS_ADLIB_INST_SLEEP, MSS_ADLIB_INST_TXEV, 
        MSS_ADLIB_INST_UART0RTSn, MSS_ADLIB_INST_UART0DTRn, 
        MSS_ADLIB_INST_UART1RTSn, MSS_ADLIB_INST_UART1DTRn, 
        MSS_ADLIB_INST_I2C0SMBUSNO, MSS_ADLIB_INST_I2C1SMBUSNO, 
        MSS_ADLIB_INST_I2C0SMBALERTNO, MSS_ADLIB_INST_I2C1SMBALERTNO, 
        GLA0, MSS_ADLIB_INST_MACCLKCCC, MSS_ADLIB_INST_PLLLOCK, 
        MSS_ADLIB_INST_SPI0DO, MSS_ADLIB_INST_SPI0DOE, 
        MSS_ADLIB_INST_SPI0CLKO, MSS_ADLIB_INST_SPI0MODE, 
        MSS_ADLIB_INST_I2C0SDAO, MSS_ADLIB_INST_I2C0SCLO, 
        MSS_ADLIB_INST_SPI1DO, MSS_ADLIB_INST_SPI1DOE, 
        MSS_ADLIB_INST_SPI1CLKO, MSS_ADLIB_INST_SPI1MODE, 
        MSS_ADLIB_INST_UART1TXD, MSS_ADLIB_INST_I2C1SDAO, 
        MSS_ADLIB_INST_I2C1SCLO, \MSS_ADLIB_INST_MACM2FTXD[0] , 
        \MSS_ADLIB_INST_MACM2FTXD[1] , MSS_ADLIB_INST_MACM2FTXEN, 
        MSS_ADLIB_INST_MACM2FMDO, MSS_ADLIB_INST_MACM2FMDEN, 
        MSS_ADLIB_INST_MACM2FMDC, MSS_ADLIB_INST_PUFABn, 
        MSS_ADLIB_INST_FABHREADYOUT, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[0] , 
        MSS_ADLIB_INST_LVTTL3, MSS_ADLIB_INST_LVTTL6, 
        MSS_ADLIB_INST_VAREFOUT, MSS_ADLIB_INST_LVTTL1, 
        MSS_ADLIB_INST_SDD2, MSS_ADLIB_INST_LVTTL9, 
        MSS_ADLIB_INST_LVTTL2, MSS_ADLIB_INST_SDD1, 
        MSS_ADLIB_INST_LVTTL5, MSS_ADLIB_INST_SDD0, 
        MSS_ADLIB_INST_LVTTL10, MSS_ADLIB_INST_LVTTL8, 
        MSS_ADLIB_INST_LVTTL0, MSS_ADLIB_INST_LVTTL7, 
        MSS_ADLIB_INST_LVTTL4, MSS_ADLIB_INST_LVTTL11, 
        MSS_ADLIB_INST_FABHRESP, MSS_ADLIB_INST_CMP0, 
        MSS_ADLIB_INST_CMP1, MSS_ADLIB_INST_CMP2, MSS_ADLIB_INST_CMP3, 
        MSS_ADLIB_INST_CMP4, MSS_ADLIB_INST_CMP5, MSS_ADLIB_INST_CMP6, 
        MSS_ADLIB_INST_CMP7, MSS_ADLIB_INST_CMP8, MSS_ADLIB_INST_CMP9, 
        MSS_ADLIB_INST_CMP10, MSS_ADLIB_INST_CMP11, 
        MSS_ADLIB_INST_VCC15GOOD, MSS_ADLIB_INST_VCC33GOOD, 
        \MSS_ADLIB_INST_EMCBYTEN[0] , \MSS_ADLIB_INST_EMCBYTEN[1] , 
        \MSS_ADLIB_INST_EMCAB[0] , \MSS_ADLIB_INST_EMCAB[1] , 
        \MSS_ADLIB_INST_EMCAB[2] , \MSS_ADLIB_INST_EMCAB[3] , 
        \MSS_ADLIB_INST_EMCAB[4] , \MSS_ADLIB_INST_EMCAB[5] , 
        \MSS_ADLIB_INST_EMCAB[6] , \MSS_ADLIB_INST_EMCAB[7] , 
        \MSS_ADLIB_INST_EMCAB[8] , \MSS_ADLIB_INST_EMCAB[9] , 
        \MSS_ADLIB_INST_EMCAB[10] , \MSS_ADLIB_INST_EMCAB[11] , 
        \MSS_ADLIB_INST_EMCAB[12] , \MSS_ADLIB_INST_EMCAB[13] , 
        \MSS_ADLIB_INST_EMCAB[14] , \MSS_ADLIB_INST_EMCAB[15] , 
        \MSS_ADLIB_INST_EMCAB[16] , \MSS_ADLIB_INST_EMCAB[17] , 
        \MSS_ADLIB_INST_EMCAB[18] , \MSS_ADLIB_INST_EMCAB[19] , 
        \MSS_ADLIB_INST_EMCAB[20] , \MSS_ADLIB_INST_EMCAB[21] , 
        \MSS_ADLIB_INST_EMCAB[22] , \MSS_ADLIB_INST_EMCAB[23] , 
        \MSS_ADLIB_INST_EMCAB[24] , \MSS_ADLIB_INST_EMCAB[25] , 
        MSS_ADLIB_INST_EMCOEN0n, MSS_ADLIB_INST_EMCOEN1n, 
        \MSS_ADLIB_INST_EMCWDB[0] , \MSS_ADLIB_INST_EMCWDB[1] , 
        \MSS_ADLIB_INST_EMCWDB[2] , \MSS_ADLIB_INST_EMCWDB[3] , 
        \MSS_ADLIB_INST_EMCWDB[4] , \MSS_ADLIB_INST_EMCWDB[5] , 
        \MSS_ADLIB_INST_EMCWDB[6] , \MSS_ADLIB_INST_EMCWDB[7] , 
        \MSS_ADLIB_INST_EMCWDB[8] , \MSS_ADLIB_INST_EMCWDB[9] , 
        \MSS_ADLIB_INST_EMCWDB[10] , \MSS_ADLIB_INST_EMCWDB[11] , 
        \MSS_ADLIB_INST_EMCWDB[12] , \MSS_ADLIB_INST_EMCWDB[13] , 
        \MSS_ADLIB_INST_EMCWDB[14] , \MSS_ADLIB_INST_EMCWDB[15] , 
        MSS_ADLIB_INST_EMCCS0n, MSS_ADLIB_INST_EMCCS1n, 
        \MSS_ADLIB_INST_GPOE[0] , \MSS_ADLIB_INST_GPOE[1] , 
        \MSS_ADLIB_INST_GPOE[2] , \MSS_ADLIB_INST_GPOE[3] , 
        \MSS_ADLIB_INST_GPOE[4] , \MSS_ADLIB_INST_GPOE[5] , 
        \MSS_ADLIB_INST_GPOE[6] , \MSS_ADLIB_INST_GPOE[7] , 
        \MSS_ADLIB_INST_GPOE[8] , \MSS_ADLIB_INST_GPOE[9] , 
        \MSS_ADLIB_INST_GPOE[10] , \MSS_ADLIB_INST_GPOE[11] , 
        \MSS_ADLIB_INST_GPOE[12] , \MSS_ADLIB_INST_GPOE[13] , 
        \MSS_ADLIB_INST_GPOE[14] , \MSS_ADLIB_INST_GPOE[15] , 
        \MSS_ADLIB_INST_GPOE[16] , \MSS_ADLIB_INST_GPOE[17] , 
        \MSS_ADLIB_INST_GPOE[18] , \MSS_ADLIB_INST_GPOE[19] , 
        \MSS_ADLIB_INST_GPOE[20] , \MSS_ADLIB_INST_GPOE[21] , 
        \MSS_ADLIB_INST_GPOE[22] , \MSS_ADLIB_INST_GPOE[23] , 
        \MSS_ADLIB_INST_GPOE[24] , \MSS_ADLIB_INST_GPOE[25] , 
        \MSS_ADLIB_INST_GPOE[26] , \MSS_ADLIB_INST_GPOE[27] , 
        \MSS_ADLIB_INST_GPOE[28] , \MSS_ADLIB_INST_GPOE[29] , 
        \MSS_ADLIB_INST_GPOE[30] , \MSS_ADLIB_INST_GPOE[31] , 
        \GPO_net_0[0] , \GPO_net_0[1] , \GPO_net_0[2] , \GPO_net_0[3] , 
        \GPO_net_0[4] , \GPO_net_0[5] , \GPO_net_0[6] , \GPO_net_0[7] , 
        \GPO_net_0[8] , \GPO_net_0[9] , \GPO_net_0[10] , 
        \GPO_net_0[11] , \GPO_net_0[12] , \GPO_net_0[13] , 
        \GPO_net_0[14] , \GPO_net_0[15] , \GPO_net_0[16] , 
        \GPO_net_0[17] , \GPO_net_0[18] , \GPO_net_0[19] , 
        \GPO_net_0[20] , \GPO_net_0[21] , \GPO_net_0[22] , 
        \GPO_net_0[23] , \GPO_net_0[24] , \GPO_net_0[25] , 
        \GPO_net_0[26] , \GPO_net_0[27] , \GPO_net_0[28] , 
        \GPO_net_0[29] , \GPO_net_0[30] , \GPO_net_0[31] , 
        \MSS_ADLIB_INST_MSSINT[0] , \MSS_ADLIB_INST_MSSINT[1] , 
        \MSS_ADLIB_INST_MSSINT[2] , \MSS_ADLIB_INST_MSSINT[3] , 
        \MSS_ADLIB_INST_MSSINT[4] , \MSS_ADLIB_INST_MSSINT[5] , 
        \MSS_ADLIB_INST_MSSINT[6] , \MSS_ADLIB_INST_MSSINT[7] , 
        \MSS_ADLIB_INST_SPI0SSO[0] , \MSS_ADLIB_INST_SPI0SSO[1] , 
        \MSS_ADLIB_INST_SPI0SSO[2] , \MSS_ADLIB_INST_SPI0SSO[3] , 
        \MSS_ADLIB_INST_SPI0SSO[4] , \MSS_ADLIB_INST_SPI0SSO[5] , 
        \MSS_ADLIB_INST_SPI0SSO[6] , \MSS_ADLIB_INST_SPI0SSO[7] , 
        \MSS_ADLIB_INST_SPI1SSO[0] , \MSS_ADLIB_INST_SPI1SSO[1] , 
        \MSS_ADLIB_INST_SPI1SSO[2] , \MSS_ADLIB_INST_SPI1SSO[3] , 
        \MSS_ADLIB_INST_SPI1SSO[4] , \MSS_ADLIB_INST_SPI1SSO[5] , 
        \MSS_ADLIB_INST_SPI1SSO[6] , \MSS_ADLIB_INST_SPI1SSO[7] , 
        \MSS_ADLIB_INST_FABHRDATA[0] , \MSS_ADLIB_INST_FABHRDATA[1] , 
        \MSS_ADLIB_INST_FABHRDATA[2] , \MSS_ADLIB_INST_FABHRDATA[3] , 
        \MSS_ADLIB_INST_FABHRDATA[4] , \MSS_ADLIB_INST_FABHRDATA[5] , 
        \MSS_ADLIB_INST_FABHRDATA[6] , \MSS_ADLIB_INST_FABHRDATA[7] , 
        \MSS_ADLIB_INST_FABHRDATA[8] , \MSS_ADLIB_INST_FABHRDATA[9] , 
        \MSS_ADLIB_INST_FABHRDATA[10] , \MSS_ADLIB_INST_FABHRDATA[11] , 
        \MSS_ADLIB_INST_FABHRDATA[12] , \MSS_ADLIB_INST_FABHRDATA[13] , 
        \MSS_ADLIB_INST_FABHRDATA[14] , \MSS_ADLIB_INST_FABHRDATA[15] , 
        \MSS_ADLIB_INST_FABHRDATA[16] , \MSS_ADLIB_INST_FABHRDATA[17] , 
        \MSS_ADLIB_INST_FABHRDATA[18] , \MSS_ADLIB_INST_FABHRDATA[19] , 
        \MSS_ADLIB_INST_FABHRDATA[20] , \MSS_ADLIB_INST_FABHRDATA[21] , 
        \MSS_ADLIB_INST_FABHRDATA[22] , \MSS_ADLIB_INST_FABHRDATA[23] , 
        \MSS_ADLIB_INST_FABHRDATA[24] , \MSS_ADLIB_INST_FABHRDATA[25] , 
        \MSS_ADLIB_INST_FABHRDATA[26] , \MSS_ADLIB_INST_FABHRDATA[27] , 
        \MSS_ADLIB_INST_FABHRDATA[28] , \MSS_ADLIB_INST_FABHRDATA[29] , 
        \MSS_ADLIB_INST_FABHRDATA[30] , \MSS_ADLIB_INST_FABHRDATA[31] , 
        \MSS_ADLIB_INST_ACEFLAGS[0] , \MSS_ADLIB_INST_ACEFLAGS[1] , 
        \MSS_ADLIB_INST_ACEFLAGS[2] , \MSS_ADLIB_INST_ACEFLAGS[3] , 
        \MSS_ADLIB_INST_ACEFLAGS[4] , \MSS_ADLIB_INST_ACEFLAGS[5] , 
        \MSS_ADLIB_INST_ACEFLAGS[6] , \MSS_ADLIB_INST_ACEFLAGS[7] , 
        \MSS_ADLIB_INST_ACEFLAGS[8] , \MSS_ADLIB_INST_ACEFLAGS[9] , 
        \MSS_ADLIB_INST_ACEFLAGS[10] , \MSS_ADLIB_INST_ACEFLAGS[11] , 
        \MSS_ADLIB_INST_ACEFLAGS[12] , \MSS_ADLIB_INST_ACEFLAGS[13] , 
        \MSS_ADLIB_INST_ACEFLAGS[14] , \MSS_ADLIB_INST_ACEFLAGS[15] , 
        \MSS_ADLIB_INST_ACEFLAGS[16] , \MSS_ADLIB_INST_ACEFLAGS[17] , 
        \MSS_ADLIB_INST_ACEFLAGS[18] , \MSS_ADLIB_INST_ACEFLAGS[19] , 
        \MSS_ADLIB_INST_ACEFLAGS[20] , \MSS_ADLIB_INST_ACEFLAGS[21] , 
        \MSS_ADLIB_INST_ACEFLAGS[22] , \MSS_ADLIB_INST_ACEFLAGS[23] , 
        \MSS_ADLIB_INST_ACEFLAGS[24] , \MSS_ADLIB_INST_ACEFLAGS[25] , 
        \MSS_ADLIB_INST_ACEFLAGS[26] , \MSS_ADLIB_INST_ACEFLAGS[27] , 
        \MSS_ADLIB_INST_ACEFLAGS[28] , \MSS_ADLIB_INST_ACEFLAGS[29] , 
        \MSS_ADLIB_INST_ACEFLAGS[30] , \MSS_ADLIB_INST_ACEFLAGS[31] , 
        GND, VCC, GND_0, VCC_0;
    
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("U5") )  MSS_MAC_0_RXD_1 (
        .PAD(MAC_RXD[1]), .Y(MSS_MAC_0_RXD_1_Y));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA4") )  MSS_MAC_0_RXER (
        .PAD(MAC_RXER), .Y(MSS_MAC_0_RXER_Y));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA5") )  MSS_MAC_0_TXD_0 (
        .D(\MACTXD_net_0[0] ), .PAD(MAC_TXD[0]));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("Y4") )  MSS_MAC_0_TXEN (.D(
        MSS_MAC_0_TXEN_D), .PAD(MAC_TXEN));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("R1") )  
        MSS_RESET_0_MSS_RESET_N (.PAD(MSS_RESET_N), .Y(
        MSS_RESET_0_MSS_RESET_N_Y));
    MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0 (
        .MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_VCC(MSS_CORE2_VCC), 
        .MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC_GND(MSS_CORE2_GND), 
        .MSS_ADLIB_INST_MACCLKCCC(MSS_ADLIB_INST_MACCLKCCC), 
        .MSS_ADLIB_INST_PLLLOCK(MSS_ADLIB_INST_PLLLOCK), .CLK50_c(
        CLK50_c), .MAINXIN(MAINXIN), .GLA0(GLA0), .FAB_CLK(FAB_CLK));
    GND GND_i_0 (.Y(GND_0));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("V5") )  MSS_MAC_0_RXD_0 (
        .PAD(MAC_RXD[0]), .Y(MSS_MAC_0_RXD_0_Y));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA3") )  MSS_MAC_0_MDC (.D(
        MSS_MAC_0_MDC_D), .PAD(MAC_MDC));
    VCC VCC_i (.Y(VCC));
    BIBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("V4") )  MSS_MAC_0_MDIO (
        .PAD(MAC_MDIO), .D(MSS_MAC_0_MDIO_D), .E(MSS_MAC_0_MDIO_E), .Y(
        MSS_MAC_0_MDIO_Y));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("U18") )  MSS_UART_0_RXD (
        .PAD(UART_0_RXD), .Y(MSS_UART_0_RXD_Y));
    GND GND_i (.Y(GND));
    VCC VCC_i_0 (.Y(VCC_0));
    CLKINT MSS_ADLIB_INST_RNI7863 (.A(MSS_ADLIB_INST_M2FRESETn), .Y(
        MSS_CORE2_0_M2F_RESET_N));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("Y22") )  MSS_UART_0_TXD (
        .D(MSS_UART_0_TXD_D), .PAD(UART_0_TXD));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("W4") )  MSS_MAC_0_CRSDV (
        .PAD(MAC_CRSDV), .Y(MSS_MAC_0_CRSDV_Y));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("W5") )  MSS_MAC_0_TXD_1 (
        .D(\MACTXD_net_0[1] ), .PAD(MAC_TXD[1]));
    MSS_AHB #( .ACT_CONFIG(128), .ACT_FCLK(80000000), .ACT_DIE("IP6X5M2")
        , .ACT_PKG("fg484") )  MSS_ADLIB_INST (.MSSHADDR({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0]}), .MSSHWDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0]}), .MSSHTRANS({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS_1, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[0] }), .MSSHSIZE({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0]}), .MSSHLOCK(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .MSSHWRITE(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .MSSHRDATA({
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5], 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4], 
        CAHBLTl00I_RNITQKO3[5], CAHBLTl00I_RNIRQKO3[5], 
        CAHBLTl00I_RNIPQKO3[5], CAHBLTl00I_RNINQKO3[5]}), .MSSHREADY(
        CAHBLTlOII_iv), .MSSHRESP(N_8), .FABHADDR({MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND}), .FABHWDATA({
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND}), 
        .FABHTRANS({MSS_CORE2_GND, MSS_CORE2_GND}), .FABHSIZE({
        MSS_CORE2_GND, MSS_CORE2_GND}), .FABHMASTLOCK(MSS_CORE2_GND), 
        .FABHWRITE(MSS_CORE2_GND), .FABHSEL(MSS_CORE2_GND), .FABHREADY(
        MSS_CORE2_VCC), .FABHRDATA({\MSS_ADLIB_INST_FABHRDATA[31] , 
        \MSS_ADLIB_INST_FABHRDATA[30] , \MSS_ADLIB_INST_FABHRDATA[29] , 
        \MSS_ADLIB_INST_FABHRDATA[28] , \MSS_ADLIB_INST_FABHRDATA[27] , 
        \MSS_ADLIB_INST_FABHRDATA[26] , \MSS_ADLIB_INST_FABHRDATA[25] , 
        \MSS_ADLIB_INST_FABHRDATA[24] , \MSS_ADLIB_INST_FABHRDATA[23] , 
        \MSS_ADLIB_INST_FABHRDATA[22] , \MSS_ADLIB_INST_FABHRDATA[21] , 
        \MSS_ADLIB_INST_FABHRDATA[20] , \MSS_ADLIB_INST_FABHRDATA[19] , 
        \MSS_ADLIB_INST_FABHRDATA[18] , \MSS_ADLIB_INST_FABHRDATA[17] , 
        \MSS_ADLIB_INST_FABHRDATA[16] , \MSS_ADLIB_INST_FABHRDATA[15] , 
        \MSS_ADLIB_INST_FABHRDATA[14] , \MSS_ADLIB_INST_FABHRDATA[13] , 
        \MSS_ADLIB_INST_FABHRDATA[12] , \MSS_ADLIB_INST_FABHRDATA[11] , 
        \MSS_ADLIB_INST_FABHRDATA[10] , \MSS_ADLIB_INST_FABHRDATA[9] , 
        \MSS_ADLIB_INST_FABHRDATA[8] , \MSS_ADLIB_INST_FABHRDATA[7] , 
        \MSS_ADLIB_INST_FABHRDATA[6] , \MSS_ADLIB_INST_FABHRDATA[5] , 
        \MSS_ADLIB_INST_FABHRDATA[4] , \MSS_ADLIB_INST_FABHRDATA[3] , 
        \MSS_ADLIB_INST_FABHRDATA[2] , \MSS_ADLIB_INST_FABHRDATA[1] , 
        \MSS_ADLIB_INST_FABHRDATA[0] }), .FABHREADYOUT(
        MSS_ADLIB_INST_FABHREADYOUT), .FABHRESP(
        MSS_ADLIB_INST_FABHRESP), .SYNCCLKFDBK(FAB_CLK), .CALIBOUT(
        MSS_ADLIB_INST_CALIBOUT), .CALIBIN(MSS_CORE2_GND), .FABINT(
        MSS_CORE2_GND), .MSSINT({\MSS_ADLIB_INST_MSSINT[7] , 
        \MSS_ADLIB_INST_MSSINT[6] , \MSS_ADLIB_INST_MSSINT[5] , 
        \MSS_ADLIB_INST_MSSINT[4] , \MSS_ADLIB_INST_MSSINT[3] , 
        \MSS_ADLIB_INST_MSSINT[2] , \MSS_ADLIB_INST_MSSINT[1] , 
        \MSS_ADLIB_INST_MSSINT[0] }), .WDINT(MSS_ADLIB_INST_WDINT), 
        .F2MRESETn(MSS_CORE2_VCC), .DMAREADY({MSS_CORE2_GND, 
        MSS_CORE2_GND}), .RXEV(MSS_CORE2_GND), .VRON(MSS_CORE2_GND), 
        .M2FRESETn(MSS_ADLIB_INST_M2FRESETn), .DEEPSLEEP(
        MSS_ADLIB_INST_DEEPSLEEP), .SLEEP(MSS_ADLIB_INST_SLEEP), .TXEV(
        MSS_ADLIB_INST_TXEV), .GPI({MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND}), .GPO({\GPO_net_0[31] , 
        \GPO_net_0[30] , \GPO_net_0[29] , \GPO_net_0[28] , 
        \GPO_net_0[27] , \GPO_net_0[26] , \GPO_net_0[25] , 
        \GPO_net_0[24] , \GPO_net_0[23] , \GPO_net_0[22] , 
        \GPO_net_0[21] , \GPO_net_0[20] , \GPO_net_0[19] , 
        \GPO_net_0[18] , \GPO_net_0[17] , \GPO_net_0[16] , 
        \GPO_net_0[15] , \GPO_net_0[14] , \GPO_net_0[13] , 
        \GPO_net_0[12] , \GPO_net_0[11] , \GPO_net_0[10] , 
        \GPO_net_0[9] , \GPO_net_0[8] , \GPO_net_0[7] , \GPO_net_0[6] , 
        \GPO_net_0[5] , \GPO_net_0[4] , \GPO_net_0[3] , \GPO_net_0[2] , 
        \GPO_net_0[1] , \GPO_net_0[0] }), .UART0CTSn(MSS_CORE2_GND), 
        .UART0DSRn(MSS_CORE2_GND), .UART0RIn(MSS_CORE2_GND), 
        .UART0DCDn(MSS_CORE2_GND), .UART0RTSn(MSS_ADLIB_INST_UART0RTSn)
        , .UART0DTRn(MSS_ADLIB_INST_UART0DTRn), .UART1CTSn(
        MSS_CORE2_GND), .UART1DSRn(MSS_CORE2_GND), .UART1RIn(
        MSS_CORE2_GND), .UART1DCDn(MSS_CORE2_GND), .UART1RTSn(
        MSS_ADLIB_INST_UART1RTSn), .UART1DTRn(MSS_ADLIB_INST_UART1DTRn)
        , .I2C0SMBUSNI(MSS_CORE2_GND), .I2C0SMBALERTNI(MSS_CORE2_GND), 
        .I2C0BCLK(MSS_CORE2_GND), .I2C0SMBUSNO(
        MSS_ADLIB_INST_I2C0SMBUSNO), .I2C0SMBALERTNO(
        MSS_ADLIB_INST_I2C0SMBALERTNO), .I2C1SMBUSNI(MSS_CORE2_GND), 
        .I2C1SMBALERTNI(MSS_CORE2_GND), .I2C1BCLK(MSS_CORE2_GND), 
        .I2C1SMBUSNO(MSS_ADLIB_INST_I2C1SMBUSNO), .I2C1SMBALERTNO(
        MSS_ADLIB_INST_I2C1SMBALERTNO), .MACM2FTXD({
        \MSS_ADLIB_INST_MACM2FTXD[1] , \MSS_ADLIB_INST_MACM2FTXD[0] }), 
        .MACF2MRXD({MSS_CORE2_GND, MSS_CORE2_GND}), .MACM2FTXEN(
        MSS_ADLIB_INST_MACM2FTXEN), .MACF2MCRSDV(MSS_CORE2_GND), 
        .MACF2MRXER(MSS_CORE2_GND), .MACF2MMDI(MSS_CORE2_GND), 
        .MACM2FMDO(MSS_ADLIB_INST_MACM2FMDO), .MACM2FMDEN(
        MSS_ADLIB_INST_MACM2FMDEN), .MACM2FMDC(
        MSS_ADLIB_INST_MACM2FMDC), .FABSDD0D(MSS_CORE2_GND), .FABSDD1D(
        MSS_CORE2_GND), .FABSDD2D(MSS_CORE2_GND), .FABSDD0CLK(
        MSS_CORE2_GND), .FABSDD1CLK(MSS_CORE2_GND), .FABSDD2CLK(
        MSS_CORE2_GND), .FABACETRIG(MSS_CORE2_GND), .ACEFLAGS({
        \MSS_ADLIB_INST_ACEFLAGS[31] , \MSS_ADLIB_INST_ACEFLAGS[30] , 
        \MSS_ADLIB_INST_ACEFLAGS[29] , \MSS_ADLIB_INST_ACEFLAGS[28] , 
        \MSS_ADLIB_INST_ACEFLAGS[27] , \MSS_ADLIB_INST_ACEFLAGS[26] , 
        \MSS_ADLIB_INST_ACEFLAGS[25] , \MSS_ADLIB_INST_ACEFLAGS[24] , 
        \MSS_ADLIB_INST_ACEFLAGS[23] , \MSS_ADLIB_INST_ACEFLAGS[22] , 
        \MSS_ADLIB_INST_ACEFLAGS[21] , \MSS_ADLIB_INST_ACEFLAGS[20] , 
        \MSS_ADLIB_INST_ACEFLAGS[19] , \MSS_ADLIB_INST_ACEFLAGS[18] , 
        \MSS_ADLIB_INST_ACEFLAGS[17] , \MSS_ADLIB_INST_ACEFLAGS[16] , 
        \MSS_ADLIB_INST_ACEFLAGS[15] , \MSS_ADLIB_INST_ACEFLAGS[14] , 
        \MSS_ADLIB_INST_ACEFLAGS[13] , \MSS_ADLIB_INST_ACEFLAGS[12] , 
        \MSS_ADLIB_INST_ACEFLAGS[11] , \MSS_ADLIB_INST_ACEFLAGS[10] , 
        \MSS_ADLIB_INST_ACEFLAGS[9] , \MSS_ADLIB_INST_ACEFLAGS[8] , 
        \MSS_ADLIB_INST_ACEFLAGS[7] , \MSS_ADLIB_INST_ACEFLAGS[6] , 
        \MSS_ADLIB_INST_ACEFLAGS[5] , \MSS_ADLIB_INST_ACEFLAGS[4] , 
        \MSS_ADLIB_INST_ACEFLAGS[3] , \MSS_ADLIB_INST_ACEFLAGS[2] , 
        \MSS_ADLIB_INST_ACEFLAGS[1] , \MSS_ADLIB_INST_ACEFLAGS[0] }), 
        .CMP0(MSS_ADLIB_INST_CMP0), .CMP1(MSS_ADLIB_INST_CMP1), .CMP2(
        MSS_ADLIB_INST_CMP2), .CMP3(MSS_ADLIB_INST_CMP3), .CMP4(
        MSS_ADLIB_INST_CMP4), .CMP5(MSS_ADLIB_INST_CMP5), .CMP6(
        MSS_ADLIB_INST_CMP6), .CMP7(MSS_ADLIB_INST_CMP7), .CMP8(
        MSS_ADLIB_INST_CMP8), .CMP9(MSS_ADLIB_INST_CMP9), .CMP10(
        MSS_ADLIB_INST_CMP10), .CMP11(MSS_ADLIB_INST_CMP11), .LVTTL0EN(
        MSS_CORE2_GND), .LVTTL1EN(MSS_CORE2_GND), .LVTTL2EN(
        MSS_CORE2_GND), .LVTTL3EN(MSS_CORE2_GND), .LVTTL4EN(
        MSS_CORE2_GND), .LVTTL5EN(MSS_CORE2_GND), .LVTTL6EN(
        MSS_CORE2_GND), .LVTTL7EN(MSS_CORE2_GND), .LVTTL8EN(
        MSS_CORE2_GND), .LVTTL9EN(MSS_CORE2_GND), .LVTTL10EN(
        MSS_CORE2_GND), .LVTTL11EN(MSS_CORE2_GND), .LVTTL0(
        MSS_ADLIB_INST_LVTTL0), .LVTTL1(MSS_ADLIB_INST_LVTTL1), 
        .LVTTL2(MSS_ADLIB_INST_LVTTL2), .LVTTL3(MSS_ADLIB_INST_LVTTL3), 
        .LVTTL4(MSS_ADLIB_INST_LVTTL4), .LVTTL5(MSS_ADLIB_INST_LVTTL5), 
        .LVTTL6(MSS_ADLIB_INST_LVTTL6), .LVTTL7(MSS_ADLIB_INST_LVTTL7), 
        .LVTTL8(MSS_ADLIB_INST_LVTTL8), .LVTTL9(MSS_ADLIB_INST_LVTTL9), 
        .LVTTL10(MSS_ADLIB_INST_LVTTL10), .LVTTL11(
        MSS_ADLIB_INST_LVTTL11), .PUFABn(MSS_ADLIB_INST_PUFABn), 
        .VCC15GOOD(MSS_ADLIB_INST_VCC15GOOD), .VCC33GOOD(
        MSS_ADLIB_INST_VCC33GOOD), .FCLK(GLA0), .MACCLKCCC(
        MSS_ADLIB_INST_MACCLKCCC), .RCOSC(MSS_CORE2_GND), .MACCLK(
        MSS_CORE2_GND), .PLLLOCK(MSS_ADLIB_INST_PLLLOCK), .MSSRESETn(
        MSS_RESET_0_MSS_RESET_N_Y), .GPOE({\MSS_ADLIB_INST_GPOE[31] , 
        \MSS_ADLIB_INST_GPOE[30] , \MSS_ADLIB_INST_GPOE[29] , 
        \MSS_ADLIB_INST_GPOE[28] , \MSS_ADLIB_INST_GPOE[27] , 
        \MSS_ADLIB_INST_GPOE[26] , \MSS_ADLIB_INST_GPOE[25] , 
        \MSS_ADLIB_INST_GPOE[24] , \MSS_ADLIB_INST_GPOE[23] , 
        \MSS_ADLIB_INST_GPOE[22] , \MSS_ADLIB_INST_GPOE[21] , 
        \MSS_ADLIB_INST_GPOE[20] , \MSS_ADLIB_INST_GPOE[19] , 
        \MSS_ADLIB_INST_GPOE[18] , \MSS_ADLIB_INST_GPOE[17] , 
        \MSS_ADLIB_INST_GPOE[16] , \MSS_ADLIB_INST_GPOE[15] , 
        \MSS_ADLIB_INST_GPOE[14] , \MSS_ADLIB_INST_GPOE[13] , 
        \MSS_ADLIB_INST_GPOE[12] , \MSS_ADLIB_INST_GPOE[11] , 
        \MSS_ADLIB_INST_GPOE[10] , \MSS_ADLIB_INST_GPOE[9] , 
        \MSS_ADLIB_INST_GPOE[8] , \MSS_ADLIB_INST_GPOE[7] , 
        \MSS_ADLIB_INST_GPOE[6] , \MSS_ADLIB_INST_GPOE[5] , 
        \MSS_ADLIB_INST_GPOE[4] , \MSS_ADLIB_INST_GPOE[3] , 
        \MSS_ADLIB_INST_GPOE[2] , \MSS_ADLIB_INST_GPOE[1] , 
        \MSS_ADLIB_INST_GPOE[0] }), .SPI0DO(MSS_ADLIB_INST_SPI0DO), 
        .SPI0DOE(MSS_ADLIB_INST_SPI0DOE), .SPI0DI(MSS_CORE2_GND), 
        .SPI0CLKI(MSS_CORE2_GND), .SPI0CLKO(MSS_ADLIB_INST_SPI0CLKO), 
        .SPI0MODE(MSS_ADLIB_INST_SPI0MODE), .SPI0SSI(MSS_CORE2_GND), 
        .SPI0SSO({\MSS_ADLIB_INST_SPI0SSO[7] , 
        \MSS_ADLIB_INST_SPI0SSO[6] , \MSS_ADLIB_INST_SPI0SSO[5] , 
        \MSS_ADLIB_INST_SPI0SSO[4] , \MSS_ADLIB_INST_SPI0SSO[3] , 
        \MSS_ADLIB_INST_SPI0SSO[2] , \MSS_ADLIB_INST_SPI0SSO[1] , 
        \MSS_ADLIB_INST_SPI0SSO[0] }), .UART0TXD(MSS_UART_0_TXD_D), 
        .UART0RXD(MSS_UART_0_RXD_Y), .I2C0SDAI(MSS_CORE2_GND), 
        .I2C0SDAO(MSS_ADLIB_INST_I2C0SDAO), .I2C0SCLI(MSS_CORE2_GND), 
        .I2C0SCLO(MSS_ADLIB_INST_I2C0SCLO), .SPI1DO(
        MSS_ADLIB_INST_SPI1DO), .SPI1DOE(MSS_ADLIB_INST_SPI1DOE), 
        .SPI1DI(MSS_CORE2_GND), .SPI1CLKI(MSS_CORE2_GND), .SPI1CLKO(
        MSS_ADLIB_INST_SPI1CLKO), .SPI1MODE(MSS_ADLIB_INST_SPI1MODE), 
        .SPI1SSI(MSS_CORE2_GND), .SPI1SSO({\MSS_ADLIB_INST_SPI1SSO[7] , 
        \MSS_ADLIB_INST_SPI1SSO[6] , \MSS_ADLIB_INST_SPI1SSO[5] , 
        \MSS_ADLIB_INST_SPI1SSO[4] , \MSS_ADLIB_INST_SPI1SSO[3] , 
        \MSS_ADLIB_INST_SPI1SSO[2] , \MSS_ADLIB_INST_SPI1SSO[1] , 
        \MSS_ADLIB_INST_SPI1SSO[0] }), .UART1TXD(
        MSS_ADLIB_INST_UART1TXD), .UART1RXD(MSS_CORE2_GND), .I2C1SDAI(
        MSS_CORE2_GND), .I2C1SDAO(MSS_ADLIB_INST_I2C1SDAO), .I2C1SCLI(
        MSS_CORE2_GND), .I2C1SCLO(MSS_ADLIB_INST_I2C1SCLO), .MACTXD({
        \MACTXD_net_0[1] , \MACTXD_net_0[0] }), .MACRXD({
        MSS_MAC_0_RXD_1_Y, MSS_MAC_0_RXD_0_Y}), .MACTXEN(
        MSS_MAC_0_TXEN_D), .MACCRSDV(MSS_MAC_0_CRSDV_Y), .MACRXER(
        MSS_MAC_0_RXER_Y), .MACMDI(MSS_MAC_0_MDIO_Y), .MACMDO(
        MSS_MAC_0_MDIO_D), .MACMDEN(MSS_MAC_0_MDIO_E), .MACMDC(
        MSS_MAC_0_MDC_D), .EMCCLK(MSS_ADLIB_INST_EMCCLK), .EMCCLKRTN(
        MSS_ADLIB_INST_EMCCLK), .EMCRDB({MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, MSS_CORE2_GND, 
        MSS_CORE2_GND, MSS_CORE2_GND}), .EMCAB({
        \MSS_ADLIB_INST_EMCAB[25] , \MSS_ADLIB_INST_EMCAB[24] , 
        \MSS_ADLIB_INST_EMCAB[23] , \MSS_ADLIB_INST_EMCAB[22] , 
        \MSS_ADLIB_INST_EMCAB[21] , \MSS_ADLIB_INST_EMCAB[20] , 
        \MSS_ADLIB_INST_EMCAB[19] , \MSS_ADLIB_INST_EMCAB[18] , 
        \MSS_ADLIB_INST_EMCAB[17] , \MSS_ADLIB_INST_EMCAB[16] , 
        \MSS_ADLIB_INST_EMCAB[15] , \MSS_ADLIB_INST_EMCAB[14] , 
        \MSS_ADLIB_INST_EMCAB[13] , \MSS_ADLIB_INST_EMCAB[12] , 
        \MSS_ADLIB_INST_EMCAB[11] , \MSS_ADLIB_INST_EMCAB[10] , 
        \MSS_ADLIB_INST_EMCAB[9] , \MSS_ADLIB_INST_EMCAB[8] , 
        \MSS_ADLIB_INST_EMCAB[7] , \MSS_ADLIB_INST_EMCAB[6] , 
        \MSS_ADLIB_INST_EMCAB[5] , \MSS_ADLIB_INST_EMCAB[4] , 
        \MSS_ADLIB_INST_EMCAB[3] , \MSS_ADLIB_INST_EMCAB[2] , 
        \MSS_ADLIB_INST_EMCAB[1] , \MSS_ADLIB_INST_EMCAB[0] }), 
        .EMCWDB({\MSS_ADLIB_INST_EMCWDB[15] , 
        \MSS_ADLIB_INST_EMCWDB[14] , \MSS_ADLIB_INST_EMCWDB[13] , 
        \MSS_ADLIB_INST_EMCWDB[12] , \MSS_ADLIB_INST_EMCWDB[11] , 
        \MSS_ADLIB_INST_EMCWDB[10] , \MSS_ADLIB_INST_EMCWDB[9] , 
        \MSS_ADLIB_INST_EMCWDB[8] , \MSS_ADLIB_INST_EMCWDB[7] , 
        \MSS_ADLIB_INST_EMCWDB[6] , \MSS_ADLIB_INST_EMCWDB[5] , 
        \MSS_ADLIB_INST_EMCWDB[4] , \MSS_ADLIB_INST_EMCWDB[3] , 
        \MSS_ADLIB_INST_EMCWDB[2] , \MSS_ADLIB_INST_EMCWDB[1] , 
        \MSS_ADLIB_INST_EMCWDB[0] }), .EMCRWn(MSS_ADLIB_INST_EMCRWn), 
        .EMCCS0n(MSS_ADLIB_INST_EMCCS0n), .EMCCS1n(
        MSS_ADLIB_INST_EMCCS1n), .EMCOEN0n(MSS_ADLIB_INST_EMCOEN0n), 
        .EMCOEN1n(MSS_ADLIB_INST_EMCOEN1n), .EMCBYTEN({
        \MSS_ADLIB_INST_EMCBYTEN[1] , \MSS_ADLIB_INST_EMCBYTEN[0] }), 
        .EMCDBOE(MSS_ADLIB_INST_EMCDBOE), .ADC0(MSS_CORE2_GND), .ADC1(
        MSS_CORE2_GND), .ADC2(MSS_CORE2_GND), .ADC3(MSS_CORE2_GND), 
        .ADC4(MSS_CORE2_GND), .ADC5(MSS_CORE2_GND), .ADC6(
        MSS_CORE2_GND), .ADC7(MSS_CORE2_GND), .ADC8(MSS_CORE2_GND), 
        .ADC9(MSS_CORE2_GND), .ADC10(MSS_CORE2_GND), .ADC11(
        MSS_CORE2_GND), .SDD0(MSS_ADLIB_INST_SDD0), .SDD1(
        MSS_ADLIB_INST_SDD1), .SDD2(MSS_ADLIB_INST_SDD2), .ABPS0(
        MSS_CORE2_GND), .ABPS1(MSS_CORE2_GND), .ABPS2(MSS_CORE2_GND), 
        .ABPS3(MSS_CORE2_GND), .ABPS4(MSS_CORE2_GND), .ABPS5(
        MSS_CORE2_GND), .ABPS6(MSS_CORE2_GND), .ABPS7(MSS_CORE2_GND), 
        .ABPS8(MSS_CORE2_GND), .ABPS9(MSS_CORE2_GND), .ABPS10(
        MSS_CORE2_GND), .ABPS11(MSS_CORE2_GND), .TM0(MSS_CORE2_GND), 
        .TM1(MSS_CORE2_GND), .TM2(MSS_CORE2_GND), .TM3(MSS_CORE2_GND), 
        .TM4(MSS_CORE2_GND), .TM5(MSS_CORE2_GND), .CM0(MSS_CORE2_GND), 
        .CM1(MSS_CORE2_GND), .CM2(MSS_CORE2_GND), .CM3(MSS_CORE2_GND), 
        .CM4(MSS_CORE2_GND), .CM5(MSS_CORE2_GND), .GNDTM0(
        MSS_CORE2_GND), .GNDTM1(MSS_CORE2_GND), .GNDTM2(MSS_CORE2_GND), 
        .VAREF0(MSS_CORE2_GND), .VAREF1(MSS_CORE2_GND), .VAREF2(
        MSS_CORE2_GND), .VAREFOUT(MSS_ADLIB_INST_VAREFOUT), .GNDVAREF(
        MSS_CORE2_GND), .PUn(MSS_CORE2_GND));
    
endmodule


module adc081s101_adc081s101_0_3(
       SCLK_c,
       stonyman_0_startAdcCapture,
       adc081s101_3_conversionComplete,
       adc081s101_3_cs,
       MSS_CORE2_0_M2F_RESET_N
    );
input  SCLK_c;
input  stonyman_0_startAdcCapture;
output adc081s101_3_conversionComplete;
output adc081s101_3_cs;
input  MSS_CORE2_0_M2F_RESET_N;

    wire cntrWaitQuiet_n2_i_a3_0, \cntrWaitQuiet[0]_net_1 , 
        \cntrWaitQuiet[1]_net_1 , \cntrWaitQuiet[2]_net_1 , 
        bitsRead_n1_i_0, \bitsRead[0]_net_1 , \bitsRead[1]_net_1 , 
        bitsRead_n2_i_0, \bitsRead[2]_net_1 , cs_1_sqmuxa_0_a3_0, 
        cs_1_sqmuxa_1, cntrWaitTrailinglde_0_a3_0, N_108, N_43, 
        bitsReade_0_a3_0, \cntrWaitLeading[0]_net_1 , 
        \cntrWaitLeading[1]_net_1 , \bitsRead[3]_net_1 , cs16_0_a2_0, 
        N_82, N_79, N_35, N_76, N_37, N_72, N_41, cs16, N_10, N_61, 
        N_107, N_27_1, un1_reset_i_1, N_144, cntrWaitQuiete, N_83, 
        un1_conversionComplete18, N_67, N_103, N_66, N_104, N_65, 
        N_53_i, \cntrWaitTrailing[1]_net_1 , 
        \cntrWaitTrailing[0]_net_1 , N_48, \cntrWaitTrailing[2]_net_1 , 
        N_39, N_31, N_73, N_147, bitsReade, cntrWaitTrailinge, 
        \cntrWaitLeading_6[1] , I_10_2, \cntrWaitLeading_6[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , N_77, N_146, N_62, 
        \DWACT_ADD_CI_0_partial_sum[1] , \DWACT_ADD_CI_0_TMP[0] , GND, 
        VCC, GND_0, VCC_0;
    
    DFN1 cs (.D(N_66), .CLK(SCLK_c), .Q(adc081s101_3_cs));
    OR2A cs_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_104), .Y(N_66));
    OR3 \cntrWaitTrailing_RNIOOPB1[2]  (.A(\cntrWaitTrailing[0]_net_1 )
        , .B(\cntrWaitTrailing[1]_net_1 ), .C(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_43));
    OR3 \cntrWaitQuiet_RNIOGEG[2]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        \cntrWaitQuiet[1]_net_1 ), .C(\cntrWaitQuiet[2]_net_1 ), .Y(
        N_41));
    AX1E \bitsRead_RNO_0[2]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(\bitsRead[2]_net_1 ), .Y(
        bitsRead_n2_i_0));
    NOR2A cs_RNIG9GB1 (.A(N_83), .B(stonyman_0_startAdcCapture), .Y(
        N_61));
    XOR2 un1_cntrWaitLeading_I_8 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_62), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    AO1 \cntrWaitTrailing_RNI9UIQ3[2]  (.A(cntrWaitTrailinglde_0_a3_0), 
        .B(N_82), .C(N_72), .Y(cntrWaitTrailinge));
    AO1A \cntrWaitQuiet_RNO[2]  (.A(un1_reset_i_1), .B(
        cntrWaitQuiet_n2_i_a3_0), .C(N_72), .Y(N_27_1));
    NOR2 \bitsRead_RNO[2]  (.A(bitsRead_n2_i_0), .B(N_76), .Y(N_37));
    VCC VCC_i (.Y(VCC));
    XOR2 un1_cntrWaitLeading_I_10 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), 
        .B(\DWACT_ADD_CI_0_TMP[0] ), .Y(I_10_2));
    NOR2A cs_RNIU83A1 (.A(cs_1_sqmuxa_1), .B(N_41), .Y(N_76));
    DFN1E1 \cntrWaitTrailing[1]  (.D(N_147), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[1]_net_1 ));
    DFN1 \cntrWaitLeading[0]  (.D(\cntrWaitLeading_6[0] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[0]_net_1 ));
    MX2 conversionComplete_RNO_0 (.A(adc081s101_3_conversionComplete), 
        .B(un1_conversionComplete18), .S(N_10), .Y(N_103));
    OR3C \bitsRead_RNO_0[3]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(\bitsRead[2]_net_1 ), .Y(N_48));
    DFN1 conversionComplete (.D(N_67), .CLK(SCLK_c), .Q(
        adc081s101_3_conversionComplete));
    AO1 cs_RNI2E1S2 (.A(N_83), .B(N_41), .C(un1_reset_i_1), .Y(
        cntrWaitQuiete));
    OR2 \cntrWaitLeading_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(N_72), .Y(\cntrWaitLeading_6[0] ));
    DFN1E1 \cntrWaitTrailing[2]  (.D(N_31), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[2]_net_1 ));
    NOR2B \cntrWaitTrailing_RNIQRDR1[2]  (.A(N_108), .B(N_43), .Y(
        cntrWaitTrailinglde_0_a3_0));
    NOR2B cs_RNID0RS (.A(MSS_CORE2_0_M2F_RESET_N), .B(cs_1_sqmuxa_1), 
        .Y(cs_1_sqmuxa_0_a3_0));
    DFN1 \cntrWaitLeading[1]  (.D(\cntrWaitLeading_6[1] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[1]_net_1 ));
    DFN1E1 \bitsRead[3]  (.D(N_39), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[3]_net_1 ));
    OA1 \cntrWaitLeading_RNI1J7Q[1]  (.A(\cntrWaitLeading[0]_net_1 ), 
        .B(\cntrWaitLeading[1]_net_1 ), .C(N_108), .Y(N_62));
    DFN1E1 \cntrWaitQuiet[1]  (.D(N_144), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[1]_net_1 ));
    DFN1E1 \bitsRead[0]  (.D(N_77), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[0]_net_1 ));
    NOR2A cs_RNI6OKP (.A(adc081s101_3_cs), .B(
        stonyman_0_startAdcCapture), .Y(cs_1_sqmuxa_1));
    NOR2 \bitsRead_RNIJGT8[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_79));
    AO1 \bitsRead_RNII60C2[3]  (.A(bitsReade_0_a3_0), .B(N_108), .C(
        N_72), .Y(bitsReade));
    OR2A cs_RNI5H9D1 (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_76), .Y(
        un1_reset_i_1));
    XOR2 un1_cntrWaitLeading_I_7 (.A(\cntrWaitLeading[1]_net_1 ), .B(
        N_62), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    GND GND_i (.Y(GND));
    NOR2 \bitsRead_RNO[0]  (.A(\bitsRead[0]_net_1 ), .B(N_76), .Y(N_77)
        );
    XNOR2 \bitsRead_RNO_0[1]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .Y(bitsRead_n1_i_0));
    NOR2 \bitsRead_RNO[3]  (.A(N_48), .B(N_76), .Y(N_39));
    XOR2 \cntrWaitTrailing_RNO_0[1]  (.A(\cntrWaitTrailing[1]_net_1 ), 
        .B(\cntrWaitTrailing[0]_net_1 ), .Y(N_53_i));
    OR2 \cntrWaitTrailing_RNO[2]  (.A(N_73), .B(N_72), .Y(N_31));
    NOR2A \bitsRead_RNIN0U8[3]  (.A(\bitsRead[3]_net_1 ), .B(
        \bitsRead[2]_net_1 ), .Y(cs16_0_a2_0));
    NOR2 \cntrWaitQuiet_RNO[0]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        un1_reset_i_1), .Y(N_65));
    DFN1E1 \cntrWaitQuiet[2]  (.D(N_27_1), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[2]_net_1 ));
    OR2A \cntrWaitTrailing_RNO[0]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(N_72), .Y(N_146));
    NOR3 \bitsRead_RNIBI2F[3]  (.A(\cntrWaitLeading[0]_net_1 ), .B(
        \cntrWaitLeading[1]_net_1 ), .C(\bitsRead[3]_net_1 ), .Y(
        bitsReade_0_a3_0));
    NOR2A cs_RNI23KF (.A(MSS_CORE2_0_M2F_RESET_N), .B(adc081s101_3_cs), 
        .Y(N_108));
    NOR2B \bitsRead_RNIAHRH[1]  (.A(cs16_0_a2_0), .B(N_79), .Y(N_82));
    NOR2B cs_RNI5C9U (.A(N_82), .B(adc081s101_3_cs), .Y(N_83));
    DFN1E1 \bitsRead[2]  (.D(N_37), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[2]_net_1 ));
    OA1 \cntrWaitQuiet_RNO_0[2]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        \cntrWaitQuiet[1]_net_1 ), .C(\cntrWaitQuiet[2]_net_1 ), .Y(
        cntrWaitQuiet_n2_i_a3_0));
    OR2 \cntrWaitLeading_RNO[1]  (.A(I_10_2), .B(N_72), .Y(
        \cntrWaitLeading_6[1] ));
    AO1A cs_RNO_0 (.A(N_76), .B(adc081s101_3_cs), .C(cs16), .Y(N_104));
    NOR2 \cntrWaitTrailing_RNO[1]  (.A(N_53_i), .B(N_72), .Y(N_147));
    OR3 conversionComplete_RNO_2 (.A(N_76), .B(N_61), .C(N_107), .Y(
        N_10));
    OR2A conversionComplete_RNO_1 (.A(N_61), .B(N_76), .Y(
        un1_conversionComplete18));
    DFN1E1 \cntrWaitQuiet[0]  (.D(N_65), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[0]_net_1 ));
    NOR3A cs_RNO_1 (.A(N_82), .B(N_43), .C(adc081s101_3_cs), .Y(cs16));
    OA1 \cntrWaitTrailing_RNO_0[2]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(\cntrWaitTrailing[1]_net_1 ), .C(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_73));
    OR2A conversionComplete_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_103)
        , .Y(N_67));
    NOR2 \bitsRead_RNO[1]  (.A(bitsRead_n1_i_0), .B(N_76), .Y(N_35));
    AND2 un1_cntrWaitLeading_I_1 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_62), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XA1C \cntrWaitQuiet_RNO[1]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        \cntrWaitQuiet[1]_net_1 ), .C(un1_reset_i_1), .Y(N_144));
    DFN1E1 \bitsRead[1]  (.D(N_35), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[1]_net_1 ));
    NOR3B conversionComplete_RNO_3 (.A(N_41), .B(N_83), .C(
        adc081s101_3_conversionComplete), .Y(N_107));
    NOR2A \cntrWaitQuiet_RNI5H9D1[2]  (.A(cs_1_sqmuxa_0_a3_0), .B(N_41)
        , .Y(N_72));
    DFN1E1 \cntrWaitTrailing[0]  (.D(N_146), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[0]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module adc081s101_adc081s101_0_2(
       SCLK_c,
       adc081s101_2_conversionComplete,
       stonyman_0_startAdcCapture,
       MSS_CORE2_0_M2F_RESET_N,
       adc081s101_2_cs
    );
input  SCLK_c;
output adc081s101_2_conversionComplete;
input  stonyman_0_startAdcCapture;
input  MSS_CORE2_0_M2F_RESET_N;
output adc081s101_2_cs;

    wire N_83, N_80, cs16_0_a2_0_0, N_64, cntrWaitTrailinglde_0_a2_0, 
        cs16_0_a2_0_net_1, N_44, N_109, cs16, cs_1_sqmuxa_0_a2_0, 
        \bitsRead[3]_net_1 , \bitsRead[2]_net_1 , N_69, N_41, 
        \cntrWaitQuiet[2]_net_1 , un1_reset_i_1, N_10, N_77, N_62, 
        N_108, N_35, \bitsRead[0]_net_1 , \bitsRead[1]_net_1 , N_37, 
        N_45, bitsRead_0_sqmuxa_1, un7lto1, \cntrWaitQuiet[1]_net_1 , 
        \cntrWaitQuiet[0]_net_1 , N_137, N_66, N_54_i, 
        \cntrWaitTrailing[1]_net_1 , \cntrWaitTrailing[0]_net_1 , 
        \cntrWaitTrailing[2]_net_1 , N_39, N_31, N_42, N_74, N_140, 
        bitsReade, cntrWaitTrailinge, \cntrWaitLeading_6[1] , I_10_1, 
        \cntrWaitLeading_6[0] , \DWACT_ADD_CI_0_partial_sum[0] , N_84, 
        N_78, N_139, N_63, \cntrWaitLeading[1]_net_1 , 
        \cntrWaitLeading[0]_net_1 , N_104, un1_conversionComplete18, 
        N_105, N_67, N_68, cntrWaitQuiete, N_27_1, 
        \DWACT_ADD_CI_0_partial_sum[1] , \DWACT_ADD_CI_0_TMP[0] , GND, 
        VCC, GND_0, VCC_0;
    
    DFN1 cs (.D(N_67), .CLK(SCLK_c), .Q(adc081s101_2_cs));
    OR2A cs_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_105), .Y(N_67));
    AND2 \cntrWaitTrailing_RNIMRDR1[2]  (.A(N_44), .B(N_109), .Y(
        cntrWaitTrailinglde_0_a2_0));
    XOR2 un1_cntrWaitLeading_I_8 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2B \cntrWaitLeading_RNIUI7Q[1]  (.A(un7lto1), .B(N_109), .Y(
        N_63));
    NOR3A cs_RNIQ83A1 (.A(adc081s101_2_cs), .B(
        stonyman_0_startAdcCapture), .C(N_42), .Y(N_77));
    AO1A \cntrWaitQuiet_RNO[2]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), .C(
        N_69), .Y(N_27_1));
    XA1C \bitsRead_RNO[2]  (.A(\bitsRead[2]_net_1 ), .B(N_45), .C(N_77)
        , .Y(N_37));
    VCC VCC_i (.Y(VCC));
    XOR2 un1_cntrWaitLeading_I_10 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), 
        .B(\DWACT_ADD_CI_0_TMP[0] ), .Y(I_10_1));
    DFN1E1 \cntrWaitTrailing[1]  (.D(N_140), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[1]_net_1 ));
    AND2 cs16_0_a2_0_RNILLF82 (.A(N_83), .B(cntrWaitTrailinglde_0_a2_0)
        , .Y(N_64));
    DFN1 \cntrWaitLeading[0]  (.D(\cntrWaitLeading_6[0] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[0]_net_1 ));
    MX2 conversionComplete_RNO_0 (.A(adc081s101_2_conversionComplete), 
        .B(un1_conversionComplete18), .S(N_10), .Y(N_104));
    DFN1 conversionComplete (.D(N_68), .CLK(SCLK_c), .Q(
        adc081s101_2_conversionComplete));
    NOR3C cs_RNI0C9U (.A(N_80), .B(cs16_0_a2_0_0), .C(adc081s101_2_cs), 
        .Y(N_84));
    AND2 cs16_0_a2_0 (.A(N_80), .B(cs16_0_a2_0_0), .Y(N_83));
    AO1A \cntrWaitLeading_RNO[0]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), 
        .C(\DWACT_ADD_CI_0_partial_sum[0] ), .Y(\cntrWaitLeading_6[0] )
        );
    NOR2A \bitsRead_RNIL0U8[3]  (.A(\bitsRead[3]_net_1 ), .B(
        \bitsRead[2]_net_1 ), .Y(cs16_0_a2_0_0));
    DFN1E1 \cntrWaitTrailing[2]  (.D(N_31), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[2]_net_1 ));
    DFN1 \cntrWaitLeading[1]  (.D(\cntrWaitLeading_6[1] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[1]_net_1 ));
    DFN1E1 \bitsRead[3]  (.D(N_39), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[3]_net_1 ));
    DFN1E1 \cntrWaitQuiet[1]  (.D(N_137), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[1]_net_1 ));
    OR2 \cntrWaitLeading_RNITFJA[1]  (.A(\cntrWaitLeading[1]_net_1 ), 
        .B(\cntrWaitLeading[0]_net_1 ), .Y(un7lto1));
    DFN1E1 \bitsRead[0]  (.D(N_78), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[0]_net_1 ));
    OR2B \bitsRead_RNIHGT8[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_45));
    NOR3B conversionComplete_RNO_4 (.A(N_42), .B(N_84), .C(
        adc081s101_2_conversionComplete), .Y(N_108));
    XOR2 un1_cntrWaitLeading_I_7 (.A(\cntrWaitLeading[1]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    GND GND_i (.Y(GND));
    NOR2 \bitsRead_RNO[0]  (.A(\bitsRead[0]_net_1 ), .B(N_77), .Y(N_78)
        );
    AO1A cs16_0_a2_0_RNIM6PL3 (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), .C(
        N_64), .Y(cntrWaitTrailinge));
    NOR3A \bitsRead_RNO[3]  (.A(\bitsRead[2]_net_1 ), .B(N_45), .C(
        N_77), .Y(N_39));
    XOR2 \cntrWaitTrailing_RNO_0[1]  (.A(\cntrWaitTrailing[1]_net_1 ), 
        .B(\cntrWaitTrailing[0]_net_1 ), .Y(N_54_i));
    AO1A \cntrWaitTrailing_RNO[2]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), 
        .C(N_74), .Y(N_31));
    NOR2 \bitsRead_RNIHGT8_0[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_80));
    AO1A \bitsRead_RNIA60C2[3]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), .C(
        bitsRead_0_sqmuxa_1), .Y(bitsReade));
    NOR2 \cntrWaitQuiet_RNO[0]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        un1_reset_i_1), .Y(N_66));
    NOR2A cs_RNI13KF (.A(MSS_CORE2_0_M2F_RESET_N), .B(adc081s101_2_cs), 
        .Y(N_109));
    DFN1E1 \cntrWaitQuiet[2]  (.D(N_27_1), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[2]_net_1 ));
    AO1C \cntrWaitTrailing_RNO[0]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), 
        .C(\cntrWaitTrailing[0]_net_1 ), .Y(N_139));
    NOR2 cs16_0_a2_0_1 (.A(adc081s101_2_cs), .B(N_44), .Y(
        cs16_0_a2_0_net_1));
    DFN1E1 \bitsRead[2]  (.D(N_37), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[2]_net_1 ));
    NOR3B \cntrWaitQuiet_RNO_0[2]  (.A(N_41), .B(
        \cntrWaitQuiet[2]_net_1 ), .C(un1_reset_i_1), .Y(N_69));
    AO1A \cntrWaitLeading_RNO[1]  (.A(N_42), .B(cs_1_sqmuxa_0_a2_0), 
        .C(I_10_1), .Y(\cntrWaitLeading_6[1] ));
    AO1A cs_RNO_0 (.A(N_77), .B(adc081s101_2_cs), .C(cs16), .Y(N_105));
    OA1C \cntrWaitTrailing_RNO[1]  (.A(cs_1_sqmuxa_0_a2_0), .B(N_42), 
        .C(N_54_i), .Y(N_140));
    AND2 cs16_0_a2 (.A(N_83), .B(cs16_0_a2_0_net_1), .Y(cs16));
    OR3 conversionComplete_RNO_2 (.A(N_77), .B(N_62), .C(N_108), .Y(
        N_10));
    OR2 conversionComplete_RNO_1 (.A(N_77), .B(
        stonyman_0_startAdcCapture), .Y(un1_conversionComplete18));
    DFN1E1 \cntrWaitQuiet[0]  (.D(N_66), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[0]_net_1 ));
    OR2A cs_RNI1H9D1 (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_77), .Y(
        un1_reset_i_1));
    AO1 cs_RNIMD1S2 (.A(N_84), .B(N_42), .C(un1_reset_i_1), .Y(
        cntrWaitQuiete));
    OA1 \cntrWaitTrailing_RNO_0[2]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(\cntrWaitTrailing[1]_net_1 ), .C(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_74));
    OR2A conversionComplete_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_104)
        , .Y(N_68));
    XA1B \bitsRead_RNO[1]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(N_77), .Y(N_35));
    NOR3B cs_RNIC0RS (.A(adc081s101_2_cs), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(stonyman_0_startAdcCapture), .Y(cs_1_sqmuxa_0_a2_0));
    AND2 un1_cntrWaitLeading_I_1 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XA1C \cntrWaitQuiet_RNO[1]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        \cntrWaitQuiet[1]_net_1 ), .C(un1_reset_i_1), .Y(N_137));
    OR2 \cntrWaitQuiet_RNID0VA[1]  (.A(\cntrWaitQuiet[1]_net_1 ), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_41));
    DFN1E1 \bitsRead[1]  (.D(N_35), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[1]_net_1 ));
    NOR2A conversionComplete_RNO_3 (.A(N_84), .B(
        stonyman_0_startAdcCapture), .Y(N_62));
    OR2 \cntrWaitQuiet_RNILGEG[2]  (.A(N_41), .B(
        \cntrWaitQuiet[2]_net_1 ), .Y(N_42));
    DFN1E1 \cntrWaitTrailing[0]  (.D(N_139), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[0]_net_1 ));
    NOR3A \bitsRead_RNI9LMU[3]  (.A(N_109), .B(un7lto1), .C(
        \bitsRead[3]_net_1 ), .Y(bitsRead_0_sqmuxa_1));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    OR3 \cntrWaitTrailing_RNILOPB1[2]  (.A(\cntrWaitTrailing[0]_net_1 )
        , .B(\cntrWaitTrailing[1]_net_1 ), .C(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_44));
    
endmodule


module stonyman_ioreg(
       CoreAPB3_0_APBmslave0_0_PRDATA,
       fifo_px_1_Q,
       fifo_px_0_Q,
       CoreAPB3_0_APBmslave0_0_PWDATA,
       CoreAPB3_0_APBmslave0_0_PADDR,
       SCLK_c,
       fifo_px_0_AFULL,
       fifo_px_1_AFULL,
       fifo_px_0_FULL,
       fifo_px_1_OVERFLOW,
       fifo_px_0_OVERFLOW,
       stonyman_0_busy,
       TP_START_CAPTURE_c,
       ioreg_ready,
       bus_read_enable,
       MSS_CORE2_0_M2F_RESET_N,
       REP_0,
       REP,
       fifo_px_1_EMPTY,
       fifo_px_0_EMPTY,
       bus_write_enable_1,
       TP_PWRITE_c
    );
output [3:0] CoreAPB3_0_APBmslave0_0_PRDATA;
input  [0:0] fifo_px_1_Q;
input  [0:0] fifo_px_0_Q;
input  [0:0] CoreAPB3_0_APBmslave0_0_PWDATA;
input  [7:0] CoreAPB3_0_APBmslave0_0_PADDR;
input  SCLK_c;
input  fifo_px_0_AFULL;
input  fifo_px_1_AFULL;
input  fifo_px_0_FULL;
input  fifo_px_1_OVERFLOW;
input  fifo_px_0_OVERFLOW;
input  stonyman_0_busy;
output TP_START_CAPTURE_c;
output ioreg_ready;
input  bus_read_enable;
input  MSS_CORE2_0_M2F_RESET_N;
output REP_0;
output REP;
input  fifo_px_1_EMPTY;
input  fifo_px_0_EMPTY;
input  bus_write_enable_1;
input  TP_PWRITE_c;

    wire N_95, N_83, startCapture_5_i_a2_0_2_net_1, 
        startCapture_5_i_a2_0_0_net_1, ready_7_0_o2_0_0_net_1, 
        \dataout_9[0] , N_70, N_71, N_69, N_68, N_101, ready_7, N_65, 
        N_61, N_78, N_224, \fifoRdenState[1]_net_1 , 
        \currentCam[0]_net_1 , N_77, N_58, N_57, N_240, 
        ioreg_cam1_fifo_rden, ioreg_cam0_fifo_rden, N_20, N_146, N_18, 
        N_147, N_80, \fifoRdenState[0]_net_1 , N_176s, N_176, N_175s, 
        N_148, N_214, N_241, N_16, N_236, N_237, N_13, N_53, N_56, 
        N_55, N_54, \dataout_1_RNO[3]_net_1 , N_145, 
        \dataout_1_RNO[2]_net_1 , N_144, \dataout_1_RNO[1]_net_1 , 
        N_143, \dataout_1_RNO[0]_net_1 , N_142, \dataout_9[3] , 
        \dataout_9[2] , \dataout_9[1] , GND, VCC, GND_0, VCC_0;
    
    OR2A ready_0_sqmuxa_1_i_i_o2_0 (.A(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .B(N_240), .Y(N_241));
    DFN1E1 ready (.D(ready_7), .CLK(SCLK_c), .E(
        MSS_CORE2_0_M2F_RESET_N), .Q(ioreg_ready));
    OR2B \currentCam_RNO_1[0]  (.A(CoreAPB3_0_APBmslave0_0_PADDR[7]), 
        .B(bus_read_enable), .Y(N_214));
    DFN1 fifoRden_0_ (.D(N_18), .CLK(SCLK_c), .Q(ioreg_cam0_fifo_rden));
    NOR2B \dataout_1_RNO_4[0]  (.A(N_58), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .Y(N_69));
    MX2B fifoRden_0__RNO_0 (.A(ioreg_cam0_fifo_rden), .B(
        \fifoRdenState[0]_net_1 ), .S(N_78), .Y(N_147));
    MX2 \currentCam_RNO_0[0]  (.A(CoreAPB3_0_APBmslave0_0_PADDR[5]), 
        .B(\currentCam[0]_net_1 ), .S(N_214), .Y(N_148));
    MX2 \dataout_1_RNO_0[0]  (.A(CoreAPB3_0_APBmslave0_0_PRDATA[0]), 
        .B(\dataout_9[0] ), .S(N_61), .Y(N_142));
    NOR2B \fifoRdenState_RNO[1]  (.A(N_176), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_176s));
    DFN1 \dataout_1[3]  (.D(\dataout_1_RNO[3]_net_1 ), .CLK(SCLK_c), 
        .Q(CoreAPB3_0_APBmslave0_0_PRDATA[3]));
    MX2 \dataout_1_RNO_0[3]  (.A(CoreAPB3_0_APBmslave0_0_PRDATA[3]), 
        .B(\dataout_9[3] ), .S(N_61), .Y(N_145));
    OA1 ready_RNO_0 (.A(bus_read_enable), .B(bus_write_enable_1), .C(
        ioreg_ready), .Y(N_65));
    VCC VCC_i (.Y(VCC));
    NOR3A fifoRden_0__RNO_1 (.A(N_224), .B(\fifoRdenState[1]_net_1 ), 
        .C(\currentCam[0]_net_1 ), .Y(N_78));
    DFN1 \dataout_1[1]  (.D(\dataout_1_RNO[1]_net_1 ), .CLK(SCLK_c), 
        .Q(CoreAPB3_0_APBmslave0_0_PRDATA[1]));
    XA1 \fifoRdenState_RNO[0]  (.A(\fifoRdenState[0]_net_1 ), .B(N_224)
        , .C(MSS_CORE2_0_M2F_RESET_N), .Y(N_175s));
    NOR2B fifoRden_0__RNO (.A(N_147), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        N_18));
    DFN1 \fifoRdenState[1]  (.D(N_176s), .CLK(SCLK_c), .Q(
        \fifoRdenState[1]_net_1 ));
    MX2 \dataout_1_RNO_2[2]  (.A(fifo_px_0_AFULL), .B(fifo_px_1_AFULL), 
        .S(\currentCam[0]_net_1 ), .Y(N_54));
    NOR3C \dataout_1_RNO[3]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_237), 
        .C(N_145), .Y(\dataout_1_RNO[3]_net_1 ));
    NOR2B \fifoRdenState_RNIBHG3[1]  (.A(\fifoRdenState[0]_net_1 ), .B(
        \fifoRdenState[1]_net_1 ), .Y(N_80));
    OR3 \dataout_1_RNO_1[0]  (.A(N_70), .B(N_71), .C(N_69), .Y(
        \dataout_9[0] ));
    NOR3C \dataout_1_RNO[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_237), 
        .C(N_144), .Y(\dataout_1_RNO[2]_net_1 ));
    OR2A ready_0_sqmuxa_1_i_i_o2_1 (.A(
        CoreAPB3_0_APBmslave0_0_PADDR[7]), .B(N_101), .Y(N_240));
    NOR3A \dataout_1_RNO_1[1]  (.A(N_55), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .C(N_240), .Y(
        \dataout_9[1] ));
    OR3 ready_7_0_o2_0 (.A(CoreAPB3_0_APBmslave0_0_PADDR[1]), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[0]), .C(ready_7_0_o2_0_0_net_1), 
        .Y(N_101));
    OR3A startCapture_RNO_0 (.A(stonyman_0_busy), .B(bus_read_enable), 
        .C(bus_write_enable_1), .Y(N_53));
    NOR2A ready_7_0_a2_2 (.A(N_83), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[7]), .Y(N_95));
    DFN1 \dataout_1[0]  (.D(\dataout_1_RNO[0]_net_1 ), .CLK(SCLK_c), 
        .Q(CoreAPB3_0_APBmslave0_0_PRDATA[0]));
    AO1C \dataout_1_1_0_o2[0]  (.A(N_101), .B(N_236), .C(
        bus_read_enable), .Y(N_237));
    DFN1 \currentCam[0]  (.D(N_16), .CLK(SCLK_c), .Q(
        \currentCam[0]_net_1 ));
    DFN1 fifoRden_1_ (.D(N_20), .CLK(SCLK_c), .Q(ioreg_cam1_fifo_rden));
    NOR2A fifoRden_1__RNIO37J (.A(ioreg_cam1_fifo_rden), .B(
        fifo_px_1_EMPTY), .Y(REP));
    MX2 \dataout_1_RNO_2[1]  (.A(fifo_px_0_FULL), .B(fifo_px_1_AFULL), 
        .S(\currentCam[0]_net_1 ), .Y(N_55));
    GND GND_i (.Y(GND));
    AND2 startCapture_5_i_a2_0_0 (.A(TP_PWRITE_c), .B(
        CoreAPB3_0_APBmslave0_0_PWDATA[0]), .Y(
        startCapture_5_i_a2_0_0_net_1));
    MX2 \dataout_1_RNO_6[0]  (.A(fifo_px_0_Q[0]), .B(fifo_px_1_Q[0]), 
        .S(\currentCam[0]_net_1 ), .Y(N_58));
    DFN1 \fifoRdenState[0]  (.D(N_175s), .CLK(SCLK_c), .Q(
        \fifoRdenState[0]_net_1 ));
    MX2 \dataout_1_RNO_5[0]  (.A(fifo_px_0_EMPTY), .B(fifo_px_1_EMPTY), 
        .S(\currentCam[0]_net_1 ), .Y(N_57));
    AND2 startCapture_5_i_a2_0_2 (.A(startCapture_5_i_a2_0_0_net_1), 
        .B(N_95), .Y(startCapture_5_i_a2_0_2_net_1));
    MX2 \dataout_1_RNO_0[1]  (.A(CoreAPB3_0_APBmslave0_0_PRDATA[1]), 
        .B(\dataout_9[1] ), .S(N_61), .Y(N_143));
    MX2 \dataout_1_RNO_2[3]  (.A(fifo_px_0_OVERFLOW), .B(
        fifo_px_1_OVERFLOW), .S(\currentCam[0]_net_1 ), .Y(N_56));
    NOR2B fifoRden_1__RNO (.A(N_146), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        N_20));
    DFN1E1 startCapture (.D(N_13), .CLK(SCLK_c), .E(
        MSS_CORE2_0_M2F_RESET_N), .Q(TP_START_CAPTURE_c));
    MX2B fifoRden_1__RNO_0 (.A(ioreg_cam1_fifo_rden), .B(
        \fifoRdenState[0]_net_1 ), .S(N_77), .Y(N_146));
    OA1 \fifoRdenState_RNIQ9MH3[1]  (.A(N_241), .B(N_80), .C(
        bus_read_enable), .Y(N_61));
    NOR3B startCapture_5_i_a2_0_2_RNI9TU13 (.A(bus_write_enable_1), .B(
        startCapture_5_i_a2_0_2_net_1), .C(N_101), .Y(N_68));
    OA1C startCapture_RNO (.A(N_53), .B(TP_START_CAPTURE_c), .C(N_68), 
        .Y(N_13));
    AX1C \fifoRdenState_RNO_0[1]  (.A(\fifoRdenState[0]_net_1 ), .B(
        N_224), .C(\fifoRdenState[1]_net_1 ), .Y(N_176));
    OR2 \dataout_1_1_0_o2_0[0]  (.A(N_83), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[7]), .Y(N_236));
    MX2 \dataout_1_RNO_0[2]  (.A(CoreAPB3_0_APBmslave0_0_PRDATA[2]), 
        .B(\dataout_9[2] ), .S(N_61), .Y(N_144));
    NOR3A \dataout_1_RNO_1[3]  (.A(N_56), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .C(N_240), .Y(
        \dataout_9[3] ));
    NOR3B \dataout_1_RNO_3[0]  (.A(N_83), .B(stonyman_0_busy), .C(
        CoreAPB3_0_APBmslave0_0_PADDR[7]), .Y(N_71));
    NOR3C \dataout_1_RNO[1]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_237), 
        .C(N_143), .Y(\dataout_1_RNO[1]_net_1 ));
    NOR3A \dataout_1_RNO_2[0]  (.A(N_57), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .C(N_240), .Y(N_70));
    NOR3 ready_7_0_a2_3 (.A(CoreAPB3_0_APBmslave0_0_PADDR[2]), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[6]), .C(
        CoreAPB3_0_APBmslave0_0_PADDR[5]), .Y(N_83));
    DFN1 \dataout_1[2]  (.D(\dataout_1_RNO[2]_net_1 ), .CLK(SCLK_c), 
        .Q(CoreAPB3_0_APBmslave0_0_PRDATA[2]));
    NOR3B fifoRden_1__RNO_1 (.A(N_224), .B(\currentCam[0]_net_1 ), .C(
        \fifoRdenState[1]_net_1 ), .Y(N_77));
    NOR3C \dataout_1_RNO[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_237), 
        .C(N_142), .Y(\dataout_1_RNO[0]_net_1 ));
    NOR3A \dataout_1_RNO_1[2]  (.A(N_54), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[2]), .C(N_240), .Y(
        \dataout_9[2] ));
    OR2 ready_7_0_o2_0_0 (.A(CoreAPB3_0_APBmslave0_0_PADDR[3]), .B(
        CoreAPB3_0_APBmslave0_0_PADDR[4]), .Y(ready_7_0_o2_0_0_net_1));
    NOR2A fifoRdenState_16_0_a2_0_a2 (.A(bus_read_enable), .B(N_241), 
        .Y(N_224));
    NOR2B \currentCam_RNO[0]  (.A(N_148), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(N_16));
    NOR2A fifoRden_0__RNIUKTE (.A(ioreg_cam0_fifo_rden), .B(
        fifo_px_0_EMPTY), .Y(REP_0));
    VCC VCC_i_0 (.Y(VCC_0));
    OR3 ready_RNO (.A(N_65), .B(N_68), .C(N_61), .Y(ready_7));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module stonyman_apb3(
       CoreAPB3_0_APBmslave0_0_PADDR,
       CoreAPB3_0_APBmslave0_0_PWDATA,
       fifo_px_0_Q,
       fifo_px_1_Q,
       CoreAPB3_0_APBmslave0_0_PRDATA,
       fifo_px_0_EMPTY,
       fifo_px_1_EMPTY,
       REP_0,
       REP,
       MSS_CORE2_0_M2F_RESET_N,
       ioreg_ready,
       TP_START_CAPTURE_c,
       stonyman_0_busy,
       fifo_px_0_OVERFLOW,
       fifo_px_1_OVERFLOW,
       fifo_px_0_FULL,
       fifo_px_1_AFULL,
       fifo_px_0_AFULL,
       SCLK_c,
       TP_PWRITE_c,
       TP_PSEL_c,
       TP_PENABLE_c
    );
input  [7:0] CoreAPB3_0_APBmslave0_0_PADDR;
input  [0:0] CoreAPB3_0_APBmslave0_0_PWDATA;
input  [0:0] fifo_px_0_Q;
input  [0:0] fifo_px_1_Q;
output [3:0] CoreAPB3_0_APBmslave0_0_PRDATA;
input  fifo_px_0_EMPTY;
input  fifo_px_1_EMPTY;
output REP_0;
output REP;
input  MSS_CORE2_0_M2F_RESET_N;
output ioreg_ready;
output TP_START_CAPTURE_c;
input  stonyman_0_busy;
input  fifo_px_0_OVERFLOW;
input  fifo_px_1_OVERFLOW;
input  fifo_px_0_FULL;
input  fifo_px_1_AFULL;
input  fifo_px_0_AFULL;
input  SCLK_c;
input  TP_PWRITE_c;
input  TP_PSEL_c;
input  TP_PENABLE_c;

    wire bus_write_enable_1_net_1, bus_read_enable_net_1, GND, VCC, 
        GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    stonyman_ioreg stonyman_ioreg_0 (.CoreAPB3_0_APBmslave0_0_PRDATA({
        CoreAPB3_0_APBmslave0_0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_0_PRDATA[0]}), .fifo_px_1_Q({
        fifo_px_1_Q[0]}), .fifo_px_0_Q({fifo_px_0_Q[0]}), 
        .CoreAPB3_0_APBmslave0_0_PWDATA({
        CoreAPB3_0_APBmslave0_0_PWDATA[0]}), 
        .CoreAPB3_0_APBmslave0_0_PADDR({
        CoreAPB3_0_APBmslave0_0_PADDR[7], 
        CoreAPB3_0_APBmslave0_0_PADDR[6], 
        CoreAPB3_0_APBmslave0_0_PADDR[5], 
        CoreAPB3_0_APBmslave0_0_PADDR[4], 
        CoreAPB3_0_APBmslave0_0_PADDR[3], 
        CoreAPB3_0_APBmslave0_0_PADDR[2], 
        CoreAPB3_0_APBmslave0_0_PADDR[1], 
        CoreAPB3_0_APBmslave0_0_PADDR[0]}), .SCLK_c(SCLK_c), 
        .fifo_px_0_AFULL(fifo_px_0_AFULL), .fifo_px_1_AFULL(
        fifo_px_1_AFULL), .fifo_px_0_FULL(fifo_px_0_FULL), 
        .fifo_px_1_OVERFLOW(fifo_px_1_OVERFLOW), .fifo_px_0_OVERFLOW(
        fifo_px_0_OVERFLOW), .stonyman_0_busy(stonyman_0_busy), 
        .TP_START_CAPTURE_c(TP_START_CAPTURE_c), .ioreg_ready(
        ioreg_ready), .bus_read_enable(bus_read_enable_net_1), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .REP_0(REP), 
        .REP(REP_0), .fifo_px_1_EMPTY(fifo_px_1_EMPTY), 
        .fifo_px_0_EMPTY(fifo_px_0_EMPTY), .bus_write_enable_1(
        bus_write_enable_1_net_1), .TP_PWRITE_c(TP_PWRITE_c));
    NOR2A bus_read_enable (.A(TP_PSEL_c), .B(TP_PWRITE_c), .Y(
        bus_read_enable_net_1));
    VCC VCC_i (.Y(VCC));
    NOR2B bus_write_enable_1 (.A(TP_PENABLE_c), .B(TP_PSEL_c), .Y(
        bus_write_enable_1_net_1));
    GND GND_i (.Y(GND));
    
endmodule


module fifo_px_1(
       stonyman_0_px1_out,
       fifo_px_1_Q,
       fifo_px_1_AFULL,
       fifo_px_1_OVERFLOW,
       fifo_px_1_EMPTY,
       REP,
       MSS_CORE2_0_M2F_RESET_N,
       fifo_px_1_VCC,
       fifo_px_1_GND,
       SCLK_c,
       stonyman_0_writeEnable
    );
input  [1:0] stonyman_0_px1_out;
output [0:0] fifo_px_1_Q;
output fifo_px_1_AFULL;
output fifo_px_1_OVERFLOW;
output fifo_px_1_EMPTY;
input  REP;
input  MSS_CORE2_0_M2F_RESET_N;
input  fifo_px_1_VCC;
input  fifo_px_1_GND;
input  SCLK_c;
input  stonyman_0_writeEnable;

    wire OR2_2_Y, m15_i_0, DFN1C0_AFULL_RNO_1_0, fifo_px_1_FULL, 
        AO1C_9_Y, AO1C_6_Y, AO1C_1_Y, m15_i_a4_1, XNOR2_12_Y, 
        XNOR2_31_Y, XNOR2_24_Y, m15_i_o4_0, AO1C_4_Y, AO1C_5_Y, 
        AO1C_8_Y, DFN1C0_AFULL_RNO_2_0, XNOR2_29_Y, AND2_93_Y, 
        AO1_18_Y, AND2_97_Y, \WBINNXTSHIFT[8] , INV_6_Y, AO1_5_Y, 
        AND2_60_Y, AO1_14_Y, AO1_1_Y, AO1_46_Y, XOR2_51_Y, AO1_38_Y, 
        AND2_82_Y, AO1_55_Y, AND2_55_Y, AO1_57_Y, AO1_58_Y, XOR2_73_Y, 
        \WBINNXTSHIFT[4] , INV_3_Y, XOR2_8_Y, \WBINNXTSHIFT[11] , 
        INV_11_Y, \WDIFF[11] , XOR2_64_Y, AO1_49_Y, XOR2_28_Y, 
        \WBINNXTSHIFT[6] , INV_4_Y, AO1_16_Y, AND2_75_Y, AND2_47_Y, 
        AO1_4_Y, XOR2_30_Y, AO1_44_Y, XOR2_45_Y, AND2_40_Y, XOR2_75_Y, 
        \WBINNXTSHIFT[10] , INV_8_Y, AND2_62_Y, XOR2_34_Y, AND2_101_Y, 
        AND2_99_Y, XOR2_74_Y, \WBINNXTSHIFT[5] , INV_2_Y, MEMORYWE, 
        NAND2_0_Y, WEP, AND2_43_Y, AO1_56_Y, AO1_21_Y, AND2_79_Y, 
        AO1_42_Y, AO1_8_Y, XOR2_20_Y, AO1_40_Y, XOR2_85_Y, XOR2_100_Y, 
        \WBINNXTSHIFT[7] , INV_9_Y, AO1_39_Y, AND2_20_Y, AO1_51_Y, 
        AND2_22_Y, AND2_52_Y, AO1_24_Y, XOR2_57_Y, AND2_9_Y, AO1_32_Y, 
        AO1_10_Y, XOR2_48_Y, AND2_76_Y, AND2_34_Y, XOR2_7_Y, AND2_57_Y, 
        \MEM_WADDR[0] , \WDIFF[9] , XOR2_89_Y, XOR2_39_Y, AND2_74_Y, 
        AO1_59_Y, AO1_35_Y, \WDIFF[8] , XOR2_25_Y, AO1_30_Y, XOR2_31_Y, 
        AND2_44_Y, XOR2_77_Y, AO1_12_Y, \WBINNXTSHIFT[9] , XOR2_88_Y, 
        XOR2_96_Y, AO1_36_Y, AND2_54_Y, AND2_90_Y, \WDIFF[10] , 
        XOR2_42_Y, INV_5_Y, AND2_81_Y, \WDIFF[13] , XOR2_69_Y, 
        AND2_35_Y, AO1_27_Y, AO1_15_Y, XOR2_78_Y, AND2_32_Y, XOR2_22_Y, 
        AND2_10_Y, \WDIFF[12] , XOR2_82_Y, XOR2_55_Y, WRITE_RESET_P, 
        DFN1C0_WRITE_RESET_P_net_1, XOR3_5_Y, \RGRYSYNC[11] , 
        \RGRYSYNC[10] , \RGRYSYNC[9] , \RGRYSYNC[8] , DFN1C0_9_Q, 
        \WBINSYNC[11] , \WGRYSYNC[13] , \WGRYSYNC[12] , \WGRYSYNC[11] , 
        MX2_82_Y, RAM4K9_5_DOUTB0, RAM4K9_11_DOUTB0, DFN1E1C0_1_Q, 
        XOR3_0_Y, AND3_6_Y, XNOR2_14_Y, XNOR2_17_Y, XNOR2_6_Y, 
        XOR2_93_Y, AND2_25_Y, \MEM_WADDR[6] , \WDIFF[5] , XOR2_6_Y, 
        \RGRYSYNC[4] , DFN1C0_18_Q, OR2_5_Y, \MEM_RADDR[10] , 
        \MEM_RADDR[9] , DFN1C0_23_Q, \RGRY[3] , \RGRY[9] , 
        READ_RESET_P, XOR2_66_Y, \WBINNXTSHIFT[13] , INV_13_Y, INV_0_Y, 
        NOR2A_1_Y, XNOR3_41_Y, \RGRYSYNC[5] , \RGRYSYNC[3] , AND2_84_Y, 
        XOR2_14_Y, XOR2_63_Y, \MEM_RADDR[8] , \RBINSYNC[2] , 
        \MEM_WADDR[9] , OR2A_10_Y, XNOR3_40_Y, \WGRYSYNC[10] , 
        \WGRYSYNC[9] , \WGRYSYNC[8] , XOR2_91_Y, \MEM_RADDR[7] , 
        \MEM_WADDR[5] , EMPTYINT, AND3_3_Y, XNOR2_25_Y, AND3_7_Y, 
        XNOR2_5_Y, XNOR2_26_Y, AND2_61_Y, AND2_67_Y, \WBINSYNC[8] , 
        XOR3_8_Y, XNOR3_50_Y, \QXI[0] , DVLDI, AO1C_7_Y, 
        \MEM_WADDR[2] , \WBINNXTSHIFT[2] , XOR2_44_Y, XOR2_79_Y, 
        INV_10_Y, \WBINNXTSHIFT[0] , \WBINSYNC[9] , XNOR3_29_Y, 
        \WDIFF[7] , \WGRY[4] , XOR2_84_Y, XNOR3_0_Y, \RGRYSYNC[7] , 
        \RGRYSYNC[6] , XNOR2_11_Y, \RBINSYNC[5] , DFN1C0_0_Q, 
        AND2_98_Y, \MEM_RADDR[2] , AND2_8_Y, \MEM_RADDR[4] , AND3_5_Y, 
        AND3_9_Y, AND3_0_Y, AND3_1_Y, XOR2_11_Y, \MEM_WADDR[7] , 
        OR2A_15_Y, \WDIFF[2] , XNOR2_10_Y, \RBINNXTSHIFT[3] , 
        \WBINSYNC[5] , \WBINNXTSHIFT[3] , INV_7_Y, \MEM_RADDR[6] , 
        \RBINNXTSHIFT[6] , \WGRY[7] , XOR2_12_Y, AO1C_3_Y, OR2A_1_Y, 
        \WGRY[6] , XOR2_9_Y, AO1_50_Y, XOR2_37_Y, AND2_29_Y, 
        AND2_100_Y, DFN1E1C0_0_Q, OR2A_16_Y, DFN1C0_20_Q, XOR3_7_Y, 
        XNOR3_14_Y, XOR2_1_Y, \RBINNXTSHIFT[5] , OR2_10_Y, OR2_4_Y, 
        MEMWENEG, \MEM_RADDR[1] , \RBINNXTSHIFT[1] , OR2A_14_Y, 
        \WGRYSYNC[3] , DFN1C0_10_Q, DFN1C0_17_Q, XOR2_38_Y, 
        \WBINNXTSHIFT[12] , XOR2_17_Y, AO1_48_Y, XOR2_70_Y, XNOR3_19_Y, 
        XOR2_65_Y, DFN1C0_19_Q, \RGRY[10] , RAM4K9_12_DOUTA0, 
        RAM4K9_12_DOUTA1, RAM4K9_12_DOUTA2_0, RAM4K9_12_DOUTA3_0, 
        RAM4K9_12_DOUTA4_0, RAM4K9_12_DOUTA5_0, RAM4K9_12_DOUTA6_0, 
        RAM4K9_12_DOUTA7_0, RAM4K9_12_DOUTA8_0, RAM4K9_12_DOUTB0, 
        RAM4K9_12_DOUTB1, RAM4K9_12_DOUTB2, RAM4K9_12_DOUTB3, 
        RAM4K9_12_DOUTB4, RAM4K9_12_DOUTB5, RAM4K9_12_DOUTB6, 
        RAM4K9_12_DOUTB7, RAM4K9_12_DOUTB8_0, \MEM_WADDR[1] , 
        \MEM_WADDR[3] , \MEM_WADDR[4] , \MEM_WADDR[8] , 
        \MEM_WADDR[10] , \MEM_RADDR[0] , \MEM_RADDR[3] , 
        \MEM_RADDR[5] , OR2_7_Y, OR2_9_Y, \RGRY[2] , XOR2_101_Y, 
        XNOR3_4_Y, DFN1C0_6_Q, XNOR2_22_Y, \RBINSYNC[10] , XOR2_86_Y, 
        \RBINSYNC[7] , XNOR3_9_Y, XOR2_99_Y, \RBINNXTSHIFT[10] , 
        \RBINNXTSHIFT[11] , MEMORYRE, NAND2_1_Y, XNOR3_33_Y, 
        \WBINSYNC[4] , XNOR3_48_Y, XNOR3_7_Y, XOR2_16_Y, DFN1C0_26_Q, 
        \RBINSYNC[6] , AO1_31_Y, \WGRY[10] , XOR2_2_Y, INV_1_Y, 
        \WGRYSYNC[4] , OR2_3_Y, MEMRENEG, \WDIFF[3] , XOR2_59_Y, 
        \WGRYSYNC[7] , \WGRYSYNC[6] , \WGRYSYNC[5] , OR2_6_Y, OR2A_0_Y, 
        OR2_0_Y, OR2A_17_Y, AND3_2_Y, XNOR2_7_Y, XNOR2_3_Y, XNOR2_15_Y, 
        \RGRYSYNC[1] , DFN1C0_13_Q, XNOR2_1_Y, \RBINSYNC[1] , 
        XOR2_29_Y, AO1_25_Y, \MEM_WADDR[12] , \MEM_WADDR[11] , 
        MX2_85_Y, READDOMAIN_WMSB, AND2_42_Y, DFN1C0_3_Q, NOR2A_0_Y, 
        XNOR3_11_Y, AO1_26_Y, XOR2_5_Y, AND2_37_Y, AND2_86_Y, 
        AND2_89_Y, \RGRY[4] , XOR2_92_Y, XNOR2_18_Y, \RBINSYNC[4] , 
        XNOR3_10_Y, \RBINNXTSHIFT[7] , AO1_23_Y, DFN1C0_11_Q, 
        \WGRY[5] , XNOR2_23_Y, \WDIFF[6] , AO1_45_Y, XOR2_49_Y, 
        AND2_14_Y, AND2_21_Y, XOR3_1_Y, \RGRY[7] , XOR2_23_Y, 
        XNOR3_23_Y, XNOR3_35_Y, \RGRY[6] , XOR2_98_Y, OR3_0_Y, 
        DFN1C0_4_Q, \WGRY[3] , XOR2_21_Y, XOR2_81_Y, XOR2_47_Y, 
        XNOR3_51_Y, XNOR2_30_Y, \RBINNXTSHIFT[4] , \WBINSYNC[6] , 
        XNOR3_36_Y, XOR2_95_Y, \RBINSYNC[9] , AND2_13_Y, INV_12_Y, 
        AO1_37_Y, \RBINSYNC[0] , XNOR3_39_Y, AO1C_11_Y, \RGRY[0] , 
        XOR2_4_Y, NAND3A_3_Y, \WDIFF[1] , \RBINNXTSHIFT[9] , XOR2_56_Y, 
        AO1C_10_Y, \WDIFF[4] , XOR2_15_Y, \RBINNXTSHIFT[2] , XOR2_94_Y, 
        XOR3_4_Y, XOR2_54_Y, NAND2_2_Y, \RBINNXTSHIFT[8] , 
        \WBINSYNC[10] , XOR2_80_Y, XOR2_52_Y, AND2_87_Y, 
        \RBINNXTSHIFT[0] , NAND2_3_Y, XNOR3_1_Y, \WBINSYNC[12] , 
        NOR3A_0_Y, OR2A_6_Y, AO1C_2_Y, DFN1C0_7_Q, \WGRY[12] , 
        DFN1C0_8_Q, \WGRY[2] , XNOR3_26_Y, \RGRY[11] , NOR2A_2_Y, 
        XOR2_87_Y, XNOR3_43_Y, XNOR3_34_Y, DFN1C0_14_Q, XOR2_68_Y, 
        \WBINSYNC[3] , XOR2_83_Y, \MEM_RADDR[11] , AND2_95_Y, AO1_2_Y, 
        AO1_17_Y, NAND3A_1_Y, NOR3A_1_Y, OR2A_9_Y, XOR2_19_Y, XOR2_3_Y, 
        \MEM_WADDR[13] , XNOR3_15_Y, AO1C_0_Y, XOR2_13_Y, XNOR3_5_Y, 
        OR2A_5_Y, DFN1C0_15_Q, XNOR3_42_Y, \RGRY[5] , \RBINSYNC[3] , 
        AND2_88_Y, \WBINNXTSHIFT[1] , AND2A_0_Y, OR2A_8_Y, AND3_12_Y, 
        XNOR2_16_Y, XOR2_0_Y, RAM4K9_11_DOUTA0, RAM4K9_11_DOUTA1, 
        RAM4K9_11_DOUTA2_0, RAM4K9_11_DOUTA3_0, RAM4K9_11_DOUTA4_0, 
        RAM4K9_11_DOUTA5_0, RAM4K9_11_DOUTA6_0, RAM4K9_11_DOUTA7_0, 
        RAM4K9_11_DOUTA8_0, RAM4K9_11_DOUTB1, RAM4K9_11_DOUTB2, 
        RAM4K9_11_DOUTB3, RAM4K9_11_DOUTB4, RAM4K9_11_DOUTB5, 
        RAM4K9_11_DOUTB6, RAM4K9_11_DOUTB7, RAM4K9_11_DOUTB8_0, 
        AND2_78_Y, XOR2_27_Y, AND2_12_Y, XNOR3_8_Y, XNOR3_25_Y, 
        DFN1C0_21_Q, XOR2_102_Y, XOR2_53_Y, AO1_11_Y, XNOR3_46_Y, 
        XNOR3_20_Y, XOR2_36_Y, \WDIFF[0] , XOR2_18_Y, AO1_20_Y, 
        AO1_41_Y, \RBINSYNC[8] , XNOR3_37_Y, XNOR2_9_Y, XOR2_10_Y, 
        AND2_58_Y, XOR2_41_Y, XOR2_32_Y, NAND3A_0_Y, XOR2_58_Y, 
        OR2_1_Y, XNOR2_8_Y, \WBINSYNC[7] , \RBINSYNC[11] , AND2_63_Y, 
        OR2A_2_Y, \RGRY[8] , XOR2_24_Y, AO1_34_Y, AO1_52_Y, 
        DFN1C0_27_Q, \WGRY[9] , AND2_49_Y, AO1_53_Y, AND2_85_Y, 
        AO1_7_Y, \RGRYSYNC[2] , \RGRYSYNC[0] , XNOR2_13_Y, AND2_28_Y, 
        NAND3A_2_Y, OR2A_12_Y, DFN1C0_25_Q, DFN1C0_24_Q, XOR2_35_Y, 
        DFN1C0_5_Q, XNOR3_49_Y, XNOR3_45_Y, XNOR3_13_Y, AND3_10_Y, 
        DFN1C0_1_Q, XOR2_46_Y, AND2_96_Y, AO1_54_Y, XNOR3_12_Y, 
        FULLINT, \WBINSYNC[2] , AO1_3_Y, \WGRY[13] , XOR2_71_Y, 
        AO1_47_Y, XOR3_2_Y, XNOR3_27_Y, XNOR2_32_Y, AND2_36_Y, 
        XOR2_72_Y, AND3_11_Y, XOR2_33_Y, RAM4K9_5_DOUTA0, 
        RAM4K9_5_DOUTA1, RAM4K9_5_DOUTA2_0, RAM4K9_5_DOUTA3_0, 
        RAM4K9_5_DOUTA4_0, RAM4K9_5_DOUTA5_0, RAM4K9_5_DOUTA6_0, 
        RAM4K9_5_DOUTA7_0, RAM4K9_5_DOUTA8_0, RAM4K9_5_DOUTB1, 
        RAM4K9_5_DOUTB2, RAM4K9_5_DOUTB3, RAM4K9_5_DOUTB4, 
        RAM4K9_5_DOUTB5, RAM4K9_5_DOUTB6, RAM4K9_5_DOUTB7, 
        RAM4K9_5_DOUTB8_0, AND2_64_Y, XNOR2_21_Y, XNOR2_27_Y, 
        XNOR2_33_Y, \WGRY[8] , DFN1C0_12_Q, XNOR3_21_Y, XNOR2_20_Y, 
        AND3_8_Y, XOR3_3_Y, XNOR2_0_Y, AND2_4_Y, AO1_43_Y, DFN1C0_22_Q, 
        XNOR3_3_Y, \RGRY[1] , RAM4K9_4_DOUTB0, XOR2_76_Y, 
        \WGRYSYNC[2] , OR2A_13_Y, AND2_53_Y, XOR2_61_Y, AO1_22_Y, 
        \WGRY[11] , XNOR3_6_Y, XNOR2_2_Y, XNOR2_19_Y, XNOR3_16_Y, 
        AO1_13_Y, XOR2_40_Y, XNOR3_2_Y, OR2_8_Y, XNOR2_4_Y, AND2_18_Y, 
        XNOR2_28_Y, XNOR3_28_Y, RAM4K9_4_DOUTA0, RAM4K9_4_DOUTA1, 
        RAM4K9_4_DOUTA2_0, RAM4K9_4_DOUTA3_0, RAM4K9_4_DOUTA4_0, 
        RAM4K9_4_DOUTA5_0, RAM4K9_4_DOUTA6_0, RAM4K9_4_DOUTA7_0, 
        RAM4K9_4_DOUTA8_0, RAM4K9_4_DOUTB1, RAM4K9_4_DOUTB2, 
        RAM4K9_4_DOUTB3, RAM4K9_4_DOUTB4, RAM4K9_4_DOUTB5, 
        RAM4K9_4_DOUTB6, RAM4K9_4_DOUTB7, RAM4K9_4_DOUTB8_0, GND, VCC, 
        GND_0, VCC_0;
    
    XNOR3 XNOR3_14 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_14_Y));
    INV INV_0 (.A(NOR2A_1_Y), .Y(INV_0_Y));
    AO1 AO1_52 (.A(XOR2_102_Y), .B(AO1_48_Y), .C(AND2_85_Y), .Y(
        AO1_52_Y));
    XNOR3 \XNOR3_RBINSYNC[1]  (.A(XNOR3_0_Y), .B(XNOR3_42_Y), .C(
        XNOR3_6_Y), .Y(\RBINSYNC[1] ));
    XNOR3 XNOR3_5 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_5_Y));
    CLKINT DFN1C0_WRITE_RESET_P_RNIB542 (.A(DFN1C0_WRITE_RESET_P_net_1)
        , .Y(WRITE_RESET_P));
    XOR2 XOR2_102 (.A(\MEM_WADDR[12] ), .B(fifo_px_1_GND), .Y(
        XOR2_102_Y));
    XNOR3 XNOR3_45 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_45_Y));
    AND2 INV_6_RNIDFM42 (.A(XOR2_100_Y), .B(XOR2_57_Y), .Y(AND2_44_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[4]  (.D(DFN1C0_18_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[4] ));
    AND3 AND3_6 (.A(XNOR2_14_Y), .B(XNOR2_17_Y), .C(XNOR2_6_Y), .Y(
        AND3_6_Y));
    XOR2 XOR2_82 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(XOR2_82_Y));
    XNOR2 XNOR2_13 (.A(\WDIFF[8] ), .B(fifo_px_1_GND), .Y(XNOR2_13_Y));
    AO1 AO1_11 (.A(AND2_96_Y), .B(AO1_41_Y), .C(AO1_54_Y), .Y(AO1_11_Y)
        );
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_47_Y), .B(AO1_59_Y), .Y(
        \WBINNXTSHIFT[2] ));
    XNOR3 XNOR3_34 (.A(\RGRYSYNC[2] ), .B(XOR3_1_Y), .C(XNOR3_21_Y), 
        .Y(XNOR3_34_Y));
    XNOR3 XNOR3_25 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_25_Y));
    XNOR2 XNOR2_9 (.A(\RBINSYNC[3] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_9_Y));
    DFN1C0 \DFN1C0_RGRY[9]  (.D(XOR2_66_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[9] ));
    DFN1C0 DFN1C0_FULL (.D(FULLINT), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(fifo_px_1_FULL));
    AO1C AO1C_3 (.A(\WDIFF[6] ), .B(fifo_px_1_GND), .C(OR2A_14_Y), .Y(
        AO1C_3_Y));
    DFN1C0 DFN1C0_17 (.D(fifo_px_1_VCC), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(DFN1C0_17_Q));
    AO1C AO1C_8 (.A(\WDIFF[9] ), .B(fifo_px_1_GND), .C(AO1C_11_Y), .Y(
        AO1C_8_Y));
    XOR2 XOR2_19 (.A(\WBINNXTSHIFT[8] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XOR2_19_Y));
    XOR2 XOR2_23 (.A(\RBINNXTSHIFT[7] ), .B(\RBINNXTSHIFT[8] ), .Y(
        XOR2_23_Y));
    XOR2 XOR2_1 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_1_Y));
    AO1 AO1_31 (.A(XOR2_7_Y), .B(AO1_15_Y), .C(AND2_54_Y), .Y(AO1_31_Y)
        );
    XNOR3 XNOR3_13 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(XNOR3_1_Y)
        , .Y(XNOR3_13_Y));
    XOR2 INV_6_RNI3QRO1 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(
        XOR2_57_Y));
    XNOR2 XNOR2_33 (.A(\RBINSYNC[8] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XNOR2_33_Y));
    AO1 AND2_47_RNIDDVU21 (.A(AND2_60_Y), .B(AO1_14_Y), .C(AO1_1_Y), 
        .Y(AO1_5_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[3]  (.D(DFN1C0_23_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[3] ));
    NAND2 NAND2_2 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(
        NAND2_2_Y));
    NOR3C DFN1C0_AFULL_RNO_3 (.A(XNOR2_12_Y), .B(XNOR2_31_Y), .C(
        XNOR2_24_Y), .Y(m15_i_a4_1));
    INV INV_1 (.A(\RBINSYNC[10] ), .Y(INV_1_Y));
    XOR2 XOR2_47 (.A(\MEM_WADDR[2] ), .B(fifo_px_1_GND), .Y(XOR2_47_Y));
    XOR2 XOR2_38 (.A(\MEM_RADDR[9] ), .B(fifo_px_1_GND), .Y(XOR2_38_Y));
    RAM4K9 RAM4K9_11 (.ADDRA11(fifo_px_1_GND), .ADDRA10(
        \MEM_WADDR[10] ), .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(
        \MEM_WADDR[8] ), .ADDRA7(\MEM_WADDR[7] ), .ADDRA6(
        \MEM_WADDR[6] ), .ADDRA5(\MEM_WADDR[5] ), .ADDRA4(
        \MEM_WADDR[4] ), .ADDRA3(\MEM_WADDR[3] ), .ADDRA2(
        \MEM_WADDR[2] ), .ADDRA1(\MEM_WADDR[1] ), .ADDRA0(
        \MEM_WADDR[0] ), .ADDRB11(fifo_px_1_GND), .ADDRB10(
        fifo_px_1_GND), .ADDRB9(fifo_px_1_GND), .ADDRB8(\MEM_RADDR[8] )
        , .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(\MEM_RADDR[6] ), .ADDRB5(
        \MEM_RADDR[5] ), .ADDRB4(\MEM_RADDR[4] ), .ADDRB3(
        \MEM_RADDR[3] ), .ADDRB2(\MEM_RADDR[2] ), .ADDRB1(
        \MEM_RADDR[1] ), .ADDRB0(\MEM_RADDR[0] ), .DINA8(fifo_px_1_GND)
        , .DINA7(fifo_px_1_GND), .DINA6(fifo_px_1_GND), .DINA5(
        fifo_px_1_GND), .DINA4(fifo_px_1_GND), .DINA3(fifo_px_1_GND), 
        .DINA2(fifo_px_1_GND), .DINA1(stonyman_0_px1_out[1]), .DINA0(
        stonyman_0_px1_out[0]), .DINB8(fifo_px_1_GND), .DINB7(
        fifo_px_1_GND), .DINB6(fifo_px_1_GND), .DINB5(fifo_px_1_GND), 
        .DINB4(fifo_px_1_GND), .DINB3(fifo_px_1_GND), .DINB2(
        fifo_px_1_GND), .DINB1(fifo_px_1_GND), .DINB0(fifo_px_1_GND), 
        .WIDTHA0(fifo_px_1_VCC), .WIDTHA1(fifo_px_1_GND), .WIDTHB0(
        fifo_px_1_VCC), .WIDTHB1(fifo_px_1_VCC), .PIPEA(fifo_px_1_GND), 
        .PIPEB(fifo_px_1_GND), .WMODEA(fifo_px_1_GND), .WMODEB(
        fifo_px_1_GND), .BLKA(OR2_0_Y), .BLKB(OR2_6_Y), .WENA(
        fifo_px_1_GND), .WENB(fifo_px_1_VCC), .CLKA(SCLK_c), .CLKB(
        SCLK_c), .RESET(WRITE_RESET_P), .DOUTA8(RAM4K9_11_DOUTA8_0), 
        .DOUTA7(RAM4K9_11_DOUTA7_0), .DOUTA6(RAM4K9_11_DOUTA6_0), 
        .DOUTA5(RAM4K9_11_DOUTA5_0), .DOUTA4(RAM4K9_11_DOUTA4_0), 
        .DOUTA3(RAM4K9_11_DOUTA3_0), .DOUTA2(RAM4K9_11_DOUTA2_0), 
        .DOUTA1(RAM4K9_11_DOUTA1), .DOUTA0(RAM4K9_11_DOUTA0), .DOUTB8(
        RAM4K9_11_DOUTB8_0), .DOUTB7(RAM4K9_11_DOUTB7), .DOUTB6(
        RAM4K9_11_DOUTB6), .DOUTB5(RAM4K9_11_DOUTB5), .DOUTB4(
        RAM4K9_11_DOUTB4), .DOUTB3(RAM4K9_11_DOUTB3), .DOUTB2(
        RAM4K9_11_DOUTB2), .DOUTB1(RAM4K9_11_DOUTB1), .DOUTB0(
        RAM4K9_11_DOUTB0));
    NAND2 NAND2_3 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(
        NAND2_3_Y));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    BUFF BUFF_READDOMAIN_WMSB (.A(\WGRYSYNC[13] ), .Y(READDOMAIN_WMSB));
    AO1 AO1_7 (.A(XOR2_11_Y), .B(AND2_82_Y), .C(AND2_58_Y), .Y(AO1_7_Y)
        );
    AO1C AO1C_1 (.A(\WDIFF[13] ), .B(fifo_px_1_GND), .C(AO1C_10_Y), .Y(
        AO1C_1_Y));
    DFN1C0 DFN1C0_9 (.D(\RGRY[8] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_9_Q));
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_9_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[6] ));
    AND2 AND2_18 (.A(XOR2_65_Y), .B(XOR2_37_Y), .Y(AND2_18_Y));
    XNOR3 XNOR3_33 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_33_Y));
    OR2A OR2A_12 (.A(fifo_px_1_GND), .B(\WDIFF[5] ), .Y(OR2A_12_Y));
    INV INV_7 (.A(\RBINSYNC[1] ), .Y(INV_7_Y));
    DFN1C0 DFN1C0_WRITE_RESET_P (.D(DFN1C0_17_Q), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(DFN1C0_WRITE_RESET_P_net_1));
    AO1 AO1_25 (.A(XOR2_95_Y), .B(AO1_59_Y), .C(AND2_78_Y), .Y(
        AO1_25_Y));
    AND2 AND2_84 (.A(XOR2_45_Y), .B(XOR2_14_Y), .Y(AND2_84_Y));
    DFN1C0 \DFN1C0_WGRY[13]  (.D(XOR2_71_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[13] ));
    DFN1C0 DFN1C0_26 (.D(\WGRY[8] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_26_Q));
    AND2 AND2_78 (.A(\MEM_WADDR[2] ), .B(fifo_px_1_GND), .Y(AND2_78_Y));
    AO1C AO1C_7 (.A(\WDIFF[10] ), .B(fifo_px_1_GND), .C(OR2A_1_Y), .Y(
        AO1C_7_Y));
    XOR2 \XOR2_WBINSYNC[12]  (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), 
        .Y(\WBINSYNC[12] ));
    XOR2 XOR2_45 (.A(\MEM_WADDR[6] ), .B(fifo_px_1_GND), .Y(XOR2_45_Y));
    XOR2 \XOR2_RBINNXTSHIFT[9]  (.A(XOR2_38_Y), .B(AO1_2_Y), .Y(
        \RBINNXTSHIFT[9] ));
    DFN1C0 \DFN1C0_RGRYSYNC[7]  (.D(DFN1C0_24_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[7] ));
    DFN1C0 DFN1C0_11 (.D(\WGRY[5] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_11_Q));
    DFN1C0 DFN1C0_0 (.D(\RGRY[11] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_0_Q));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[0] ));
    XNOR3 \XNOR3_RBINSYNC[3]  (.A(XNOR3_33_Y), .B(XNOR3_12_Y), .C(
        XNOR3_28_Y), .Y(\RBINSYNC[3] ));
    XNOR2 XNOR2_21 (.A(\RBINSYNC[9] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XNOR2_21_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[1] ));
    AO1 AO1_8 (.A(XOR2_93_Y), .B(AND2_76_Y), .C(AND2_25_Y), .Y(AO1_8_Y)
        );
    AO1 AND2_81_RNI0VJF2 (.A(XOR2_34_Y), .B(AND2_75_Y), .C(AND2_81_Y), 
        .Y(AO1_39_Y));
    AND2 AND2_49 (.A(XOR2_81_Y), .B(XOR2_10_Y), .Y(AND2_49_Y));
    DFN1C0 DFN1C0_20 (.D(\WGRY[4] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_20_Q));
    AND2 AND2_10 (.A(\MEM_WADDR[1] ), .B(fifo_px_1_GND), .Y(AND2_10_Y));
    XOR2 XOR2_92 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_92_Y));
    XOR2 XOR2_20 (.A(\MEM_WADDR[4] ), .B(fifo_px_1_GND), .Y(XOR2_20_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[6]  (.D(DFN1C0_14_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[6] ));
    XOR2 XOR2_63 (.A(\MEM_RADDR[8] ), .B(fifo_px_1_GND), .Y(XOR2_63_Y));
    AO1C AO1C_10 (.A(fifo_px_1_GND), .B(\WDIFF[13] ), .C(NOR2A_2_Y), 
        .Y(AO1C_10_Y));
    XOR2 XOR2_87 (.A(\RBINNXTSHIFT[8] ), .B(\RBINNXTSHIFT[9] ), .Y(
        XOR2_87_Y));
    AO1 INV_6_RNIG9IT3 (.A(XOR2_57_Y), .B(AND2_9_Y), .C(AND2_97_Y), .Y(
        AO1_24_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_72_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[5] ));
    AND2 AND2_12 (.A(\MEM_WADDR[5] ), .B(fifo_px_1_GND), .Y(AND2_12_Y));
    XOR2 XOR2_52 (.A(\MEM_RADDR[1] ), .B(fifo_px_1_GND), .Y(XOR2_52_Y));
    AO1 INV_9_RNI7HLTD (.A(XOR2_100_Y), .B(AO1_32_Y), .C(AND2_9_Y), .Y(
        AO1_30_Y));
    AO1 XOR2_85_RNI3ILCN (.A(XOR2_85_Y), .B(AO1_14_Y), .C(AND2_101_Y), 
        .Y(AO1_40_Y));
    XNOR3 XNOR3_40 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_40_Y));
    AO1C AO1C_4 (.A(fifo_px_1_GND), .B(\WDIFF[9] ), .C(AO1C_3_Y), .Y(
        AO1C_4_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    XOR2 INV_9_RNIALQB (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(
        XOR2_100_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[4] ));
    AO1 AO1_50 (.A(XOR2_37_Y), .B(AND2_29_Y), .C(AND2_100_Y), .Y(
        AO1_50_Y));
    AO1 AO1_15 (.A(XOR2_80_Y), .B(OR3_0_Y), .C(AND2_42_Y), .Y(AO1_15_Y)
        );
    AND2 AND2_61 (.A(AND2_79_Y), .B(AND2_67_Y), .Y(AND2_61_Y));
    XOR2 XOR2_39_RNIN91F1 (.A(XOR2_39_Y), .B(AO1_42_Y), .Y(
        \WBINNXTSHIFT[8] ));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_12_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[7] ));
    DFN1C0 DFN1C0_READ_RESET_P (.D(DFN1C0_6_Q), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(READ_RESET_P));
    DFN1C0 \DFN1C0_MEM_WADDR[12]  (.D(\WBINNXTSHIFT[12] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[12] ));
    AND2 AND2_EMPTYINT (.A(AND3_3_Y), .B(XNOR2_25_Y), .Y(EMPTYINT));
    XOR2 XOR2_85 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(XOR2_85_Y));
    XOR2 XOR2_24 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(XOR2_24_Y));
    AND2 AND2_89 (.A(\MEM_WADDR[3] ), .B(fifo_px_1_GND), .Y(AND2_89_Y));
    XNOR3 XNOR3_20 (.A(\WGRYSYNC[4] ), .B(\WGRYSYNC[3] ), .C(XOR3_3_Y), 
        .Y(XNOR3_20_Y));
    AND2 NAND2_0_RNINPF5 (.A(NAND2_0_Y), .B(WEP), .Y(MEMORYWE));
    XOR2 XOR2_21 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_21_Y));
    MX2 \MX2_QXI[0]  (.A(MX2_82_Y), .B(MX2_85_Y), .S(DFN1E1C0_0_Q), .Y(
        \QXI[0] ));
    AND2 INV_2_RNI6R1F1_0 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(
        AND2_22_Y));
    XOR2 XOR2_77_RNIUA751 (.A(XOR2_77_Y), .B(AO1_12_Y), .Y(
        \WBINNXTSHIFT[5] ));
    AO1 AO1_35 (.A(XOR2_41_Y), .B(AND2_78_Y), .C(AND2_89_Y), .Y(
        AO1_35_Y));
    XOR2 XOR2_89_RNIG8NFL (.A(XOR2_89_Y), .B(AO1_14_Y), .Y(\WDIFF[9] ));
    DFN1C0 \DFN1C0_WGRYSYNC[11]  (.D(DFN1C0_22_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[11] ));
    XOR2 \XOR2_WDIFF[5]  (.A(XOR2_6_Y), .B(AO1_56_Y), .Y(\WDIFF[5] ));
    DFN1C0 \DFN1C0_WGRYSYNC[12]  (.D(DFN1C0_7_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[12] ));
    AND3 AND3_11 (.A(AND3_5_Y), .B(XNOR2_21_Y), .C(XNOR2_22_Y), .Y(
        AND3_11_Y));
    XOR2 XOR2_42_RNIBBDFN (.A(XOR2_42_Y), .B(AO1_40_Y), .Y(\WDIFF[10] )
        );
    OR2 OR2_8 (.A(NAND2_3_Y), .B(MEMWENEG), .Y(OR2_8_Y));
    INV INV_11 (.A(\RBINSYNC[9] ), .Y(INV_11_Y));
    XOR2 \XOR2_RBINNXTSHIFT[8]  (.A(XOR2_63_Y), .B(AO1_17_Y), .Y(
        \RBINNXTSHIFT[8] ));
    XNOR3 XNOR3_9 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_9_Y));
    XNOR3 XNOR3_8 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_8_Y));
    XNOR2 XNOR2_28 (.A(\WDIFF[7] ), .B(fifo_px_1_GND), .Y(XNOR2_28_Y));
    AO1 AO1_53 (.A(XOR2_10_Y), .B(AND2_98_Y), .C(AND2_63_Y), .Y(
        AO1_53_Y));
    XOR2 XOR2_16 (.A(\MEM_RADDR[6] ), .B(fifo_px_1_GND), .Y(XOR2_16_Y));
    XNOR3 XNOR3_50 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_50_Y));
    DFN1C0 DFN1C0_4 (.D(\RGRY[5] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_4_Q));
    OR2 OR2_4 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(OR2_4_Y));
    OR2A OR2A_17 (.A(\MEM_WADDR[11] ), .B(\MEM_WADDR[12] ), .Y(
        OR2A_17_Y));
    MX2 MX2_82 (.A(RAM4K9_5_DOUTB0), .B(RAM4K9_11_DOUTB0), .S(
        DFN1E1C0_1_Q), .Y(MX2_82_Y));
    DFN1C0 DFN1C0_14 (.D(\RGRY[6] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_14_Q));
    XNOR2 \XNOR2_RBINSYNC[4]  (.A(XNOR3_45_Y), .B(XNOR3_13_Y), .Y(
        \RBINSYNC[4] ));
    OR2 OR2_9 (.A(OR2A_5_Y), .B(MEMRENEG), .Y(OR2_9_Y));
    AND3 AND3_3 (.A(AND3_7_Y), .B(XNOR2_5_Y), .C(XNOR2_26_Y), .Y(
        AND3_3_Y));
    INV INV_5 (.A(\RBINSYNC[7] ), .Y(INV_5_Y));
    OR2 OR2_0 (.A(OR2A_17_Y), .B(MEMWENEG), .Y(OR2_0_Y));
    OR2A OR2A_15 (.A(\WDIFF[2] ), .B(fifo_px_1_GND), .Y(OR2A_15_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_86 (.A(\MEM_RADDR[7] ), .B(fifo_px_1_GND), .Y(AND2_86_Y));
    AO1 AND2_76_RNIQVBG1 (.A(XOR2_48_Y), .B(AO1_42_Y), .C(AND2_76_Y), 
        .Y(AO1_10_Y));
    XOR2 XOR2_64 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(XOR2_64_Y));
    AND3 AND3_0 (.A(XNOR2_2_Y), .B(XNOR2_1_Y), .C(XNOR2_19_Y), .Y(
        AND3_0_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[11]  (.D(DFN1C0_0_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[11] ));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[2] ));
    XOR2 XOR2_61 (.A(\WBINNXTSHIFT[9] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XOR2_61_Y));
    AND2 XOR2_7_RNIATCP1 (.A(XOR2_7_Y), .B(XOR2_73_Y), .Y(AND2_34_Y));
    AND2 INV_3_RNIFBVA1_0 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(
        AND2_90_Y));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_101_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[2] ));
    AO1 AND2_32_RNIEHF21 (.A(XOR2_78_Y), .B(AO1_57_Y), .C(AND2_32_Y), 
        .Y(AO1_12_Y));
    XOR2 XOR2_33 (.A(\RBINSYNC[11] ), .B(\WBINNXTSHIFT[13] ), .Y(
        XOR2_33_Y));
    INV INV_3 (.A(\RBINSYNC[2] ), .Y(INV_3_Y));
    XNOR2 XNOR2_2 (.A(\RBINSYNC[0] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_2_Y));
    XOR2 XOR2_49 (.A(\MEM_RADDR[1] ), .B(fifo_px_1_GND), .Y(XOR2_49_Y));
    XNOR2 XNOR2_19 (.A(\RBINSYNC[2] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_19_Y));
    AO1 AND2_82_RNIFC8R1 (.A(XOR2_51_Y), .B(AO1_38_Y), .C(AND2_82_Y), 
        .Y(AO1_46_Y));
    XOR2 XOR2_95 (.A(\MEM_WADDR[2] ), .B(fifo_px_1_GND), .Y(XOR2_95_Y));
    XOR2 XOR2_4 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_4_Y));
    XOR2 \XOR2_WDIFF[0]  (.A(\WBINNXTSHIFT[0] ), .B(fifo_px_1_GND), .Y(
        \WDIFF[0] ));
    AND3 AND3_1 (.A(XNOR2_9_Y), .B(XNOR2_18_Y), .C(XNOR2_11_Y), .Y(
        AND3_1_Y));
    XOR2 XOR2_55 (.A(\MEM_WADDR[7] ), .B(fifo_px_1_GND), .Y(XOR2_55_Y));
    AND3 AND3_10 (.A(XNOR2_10_Y), .B(XNOR2_30_Y), .C(XNOR2_8_Y), .Y(
        AND3_10_Y));
    XOR2 XOR2_72 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_72_Y));
    XNOR2 XNOR2_0 (.A(\WDIFF[5] ), .B(fifo_px_1_GND), .Y(XNOR2_0_Y));
    AO1C AO1C_5 (.A(fifo_px_1_GND), .B(\WDIFF[8] ), .C(OR2A_13_Y), .Y(
        AO1C_5_Y));
    AND2 INV_2_RNIHGKC5 (.A(AND2_20_Y), .B(AND2_44_Y), .Y(AND2_43_Y));
    GND GND_i (.Y(GND));
    DFN1C0 \DFN1C0_MEM_WADDR[10]  (.D(\WBINNXTSHIFT[10] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[10] ));
    AO1 AND2_79_RNI7T5N1 (.A(AND2_79_Y), .B(AO1_42_Y), .C(AO1_8_Y), .Y(
        AO1_38_Y));
    DFN1C0 DFN1C0_15 (.D(\RGRY[0] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_15_Q));
    AO1 AO1_34 (.A(XOR2_74_Y), .B(AO1_56_Y), .C(AND2_22_Y), .Y(
        AO1_34_Y));
    AND3 AND3_12 (.A(XNOR2_23_Y), .B(XNOR2_28_Y), .C(XNOR2_13_Y), .Y(
        AND3_12_Y));
    XNOR3 XNOR3_42 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_42_Y));
    DFN1C0 DFN1C0_12 (.D(\WGRY[13] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_12_Q));
    XOR2 XOR2_18 (.A(\MEM_WADDR[1] ), .B(fifo_px_1_GND), .Y(XOR2_18_Y));
    XNOR3 XNOR3_19 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_19_Y));
    OR2 OR2_7 (.A(OR2A_2_Y), .B(MEMWENEG), .Y(OR2_7_Y));
    XOR3 \XOR3_WBINSYNC[11]  (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), 
        .C(\WGRYSYNC[11] ), .Y(\WBINSYNC[11] ));
    VCC VCC_i_0 (.Y(VCC_0));
    DFN1C0 \DFN1C0_RGRY[11]  (.D(XOR2_94_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[11] ));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_35_Y), .B(AO1_41_Y), .Y(
        \RBINNXTSHIFT[4] ));
    XNOR2 XNOR2_25 (.A(\RBINNXTSHIFT[11] ), .B(READDOMAIN_WMSB), .Y(
        XNOR2_25_Y));
    OR2A OR2A_6 (.A(\WDIFF[5] ), .B(fifo_px_1_GND), .Y(OR2A_6_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[9]  (.D(DFN1C0_27_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[9] ));
    AO1 AND2_47_RNIBSOIR (.A(AND2_47_Y), .B(AO1_14_Y), .C(AO1_4_Y), .Y(
        AO1_49_Y));
    XOR2 XOR2_89 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(XOR2_89_Y));
    XOR2 XOR2_20_RNI6R411 (.A(XOR2_20_Y), .B(AO1_57_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XNOR2 \XNOR2_RBINSYNC[2]  (.A(XNOR3_43_Y), .B(XNOR3_34_Y), .Y(
        \RBINSYNC[2] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_32_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[1] ));
    DFN1C0 \DFN1C0_MEM_WADDR[8]  (.D(\WBINNXTSHIFT[8] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[8] ));
    DFN1C0 \DFN1C0_RGRYSYNC[5]  (.D(DFN1C0_4_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[5] ));
    NAND3A NAND3A_0 (.A(\WDIFF[4] ), .B(fifo_px_1_GND), .C(OR2A_6_Y), 
        .Y(NAND3A_0_Y));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_21_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[3] ));
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_53_Y), .B(AO1_11_Y), .Y(
        \RBINNXTSHIFT[6] ));
    XOR2 XOR2_30 (.A(\MEM_WADDR[6] ), .B(fifo_px_1_GND), .Y(XOR2_30_Y));
    XNOR3 XNOR3_39 (.A(\RGRYSYNC[2] ), .B(\RGRYSYNC[1] ), .C(
        \RGRYSYNC[0] ), .Y(XNOR3_39_Y));
    AO1 AO1_43 (.A(AND2_64_Y), .B(AO1_54_Y), .C(AO1_26_Y), .Y(AO1_43_Y)
        );
    NOR2A NOR2A_2 (.A(fifo_px_1_GND), .B(\WDIFF[12] ), .Y(NOR2A_2_Y));
    OR2A OR2A_2 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(OR2A_2_Y)
        );
    AO1C AO1C_11 (.A(fifo_px_1_GND), .B(\WDIFF[9] ), .C(NOR2A_0_Y), .Y(
        AO1C_11_Y));
    XOR2 XOR2_88_RNICP3J1 (.A(XOR2_88_Y), .B(AO1_10_Y), .Y(
        \WBINNXTSHIFT[9] ));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    AND2 AND2_35 (.A(AND2_55_Y), .B(AND2_84_Y), .Y(AND2_35_Y));
    DFN1C0 \DFN1C0_WGRY[11]  (.D(XOR2_68_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[11] ));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[7] ));
    RAM4K9 RAM4K9_4 (.ADDRA11(fifo_px_1_GND), .ADDRA10(\MEM_WADDR[10] )
        , .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(
        fifo_px_1_GND), .ADDRB10(fifo_px_1_GND), .ADDRB9(fifo_px_1_GND)
        , .ADDRB8(\MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_1_GND), .DINA7(fifo_px_1_GND), 
        .DINA6(fifo_px_1_GND), .DINA5(fifo_px_1_GND), .DINA4(
        fifo_px_1_GND), .DINA3(fifo_px_1_GND), .DINA2(fifo_px_1_GND), 
        .DINA1(stonyman_0_px1_out[1]), .DINA0(stonyman_0_px1_out[0]), 
        .DINB8(fifo_px_1_GND), .DINB7(fifo_px_1_GND), .DINB6(
        fifo_px_1_GND), .DINB5(fifo_px_1_GND), .DINB4(fifo_px_1_GND), 
        .DINB3(fifo_px_1_GND), .DINB2(fifo_px_1_GND), .DINB1(
        fifo_px_1_GND), .DINB0(fifo_px_1_GND), .WIDTHA0(fifo_px_1_VCC), 
        .WIDTHA1(fifo_px_1_GND), .WIDTHB0(fifo_px_1_VCC), .WIDTHB1(
        fifo_px_1_VCC), .PIPEA(fifo_px_1_GND), .PIPEB(fifo_px_1_GND), 
        .WMODEA(fifo_px_1_GND), .WMODEB(fifo_px_1_GND), .BLKA(OR2_8_Y), 
        .BLKB(OR2_1_Y), .WENA(fifo_px_1_GND), .WENB(fifo_px_1_VCC), 
        .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(WRITE_RESET_P), .DOUTA8(
        RAM4K9_4_DOUTA8_0), .DOUTA7(RAM4K9_4_DOUTA7_0), .DOUTA6(
        RAM4K9_4_DOUTA6_0), .DOUTA5(RAM4K9_4_DOUTA5_0), .DOUTA4(
        RAM4K9_4_DOUTA4_0), .DOUTA3(RAM4K9_4_DOUTA3_0), .DOUTA2(
        RAM4K9_4_DOUTA2_0), .DOUTA1(RAM4K9_4_DOUTA1), .DOUTA0(
        RAM4K9_4_DOUTA0), .DOUTB8(RAM4K9_4_DOUTB8_0), .DOUTB7(
        RAM4K9_4_DOUTB7), .DOUTB6(RAM4K9_4_DOUTB6), .DOUTB5(
        RAM4K9_4_DOUTB5), .DOUTB4(RAM4K9_4_DOUTB4), .DOUTB3(
        RAM4K9_4_DOUTB3), .DOUTB2(RAM4K9_4_DOUTB2), .DOUTB1(
        RAM4K9_4_DOUTB1), .DOUTB0(RAM4K9_4_DOUTB0));
    AND2 AND2_29 (.A(\MEM_RADDR[8] ), .B(fifo_px_1_GND), .Y(AND2_29_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[4] ));
    XNOR3 XNOR3_7 (.A(\WGRYSYNC[4] ), .B(XOR3_4_Y), .C(XNOR3_26_Y), .Y(
        XNOR3_7_Y));
    AO1 DFN1C0_AFULL_RNO_2 (.A(AND2_93_Y), .B(AO1_18_Y), .C(m15_i_o4_0)
        , .Y(DFN1C0_AFULL_RNO_2_0));
    XNOR3 XNOR3_46 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_46_Y));
    XOR2 \XOR2_WBINNXTSHIFT[12]  (.A(XOR2_17_Y), .B(AO1_48_Y), .Y(
        \WBINNXTSHIFT[12] ));
    XOR2 XOR2_34 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(XOR2_34_Y));
    AO1D DFN1C0_AFULL_RNO_4 (.A(AO1C_4_Y), .B(AO1C_5_Y), .C(AO1C_8_Y), 
        .Y(m15_i_o4_0));
    XOR2 XOR2_31 (.A(\MEM_WADDR[10] ), .B(fifo_px_1_GND), .Y(XOR2_31_Y)
        );
    XNOR3 \XNOR3_RBINSYNC[5]  (.A(\RGRYSYNC[5] ), .B(XOR3_7_Y), .C(
        XNOR3_14_Y), .Y(\RBINSYNC[5] ));
    INV WEBUBBLE (.A(stonyman_0_writeEnable), .Y(WEP));
    DFN1C0 \DFN1C0_MEM_WADDR[11]  (.D(\WBINNXTSHIFT[11] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[11] ));
    XNOR3 XNOR3_26 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_26_Y));
    XNOR2 XNOR2_6 (.A(\RBINNXTSHIFT[8] ), .B(\WBINSYNC[10] ), .Y(
        XNOR2_6_Y));
    AND2 AND2_14 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_14_Y));
    INV INV_4 (.A(\RBINSYNC[4] ), .Y(INV_4_Y));
    XOR2 XOR2_77 (.A(\MEM_WADDR[5] ), .B(fifo_px_1_GND), .Y(XOR2_77_Y));
    OR2A OR2A_1 (.A(fifo_px_1_VCC), .B(\WDIFF[11] ), .Y(OR2A_1_Y));
    AND2 AND2_74 (.A(XOR2_95_Y), .B(XOR2_41_Y), .Y(AND2_74_Y));
    AND2 AND2_32 (.A(\MEM_WADDR[4] ), .B(fifo_px_1_GND), .Y(AND2_32_Y));
    XOR2 INV_4_RNIU5SO1 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(
        XOR2_28_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[5]  (.D(\RBINNXTSHIFT[5] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[5] ));
    AND3 AND3_8 (.A(XNOR2_20_Y), .B(XNOR2_4_Y), .C(XNOR2_0_Y), .Y(
        AND3_8_Y));
    OR2A OR2A_8 (.A(MEMRENEG), .B(OR2_5_Y), .Y(OR2A_8_Y));
    NAND3A NAND3A_2 (.A(NOR3A_0_Y), .B(OR2A_12_Y), .C(NAND3A_0_Y), .Y(
        NAND3A_2_Y));
    XOR3 XOR3_4 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_4_Y));
    AO1 INV_6_RNIVV23B (.A(AND2_44_Y), .B(AO1_51_Y), .C(AO1_24_Y), .Y(
        AO1_21_Y));
    XOR2 \XOR2_RBINSYNC[10]  (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), 
        .Y(\RBINSYNC[10] ));
    XOR2 XOR2_46 (.A(\MEM_RADDR[5] ), .B(fifo_px_1_GND), .Y(XOR2_46_Y));
    OR2 OR2_6 (.A(OR2A_0_Y), .B(MEMRENEG), .Y(OR2_6_Y));
    DFN1E1C0 DFN1E1C0_0 (.D(\MEM_RADDR[10] ), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .E(OR2A_16_Y), .Q(DFN1E1C0_0_Q));
    XNOR2 XNOR2_11 (.A(\RBINSYNC[5] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XNOR2_11_Y));
    AO1 AO1_2 (.A(XOR2_65_Y), .B(AO1_17_Y), .C(AND2_29_Y), .Y(AO1_2_Y));
    XNOR2 \XNOR2_WBINSYNC[4]  (.A(XNOR3_48_Y), .B(XNOR3_7_Y), .Y(
        \WBINSYNC[4] ));
    DFN1C0 \DFN1C0_MEM_RADDR[8]  (.D(\RBINNXTSHIFT[8] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[8] ));
    AND2 AND2_100 (.A(\MEM_RADDR[9] ), .B(fifo_px_1_GND), .Y(
        AND2_100_Y));
    XOR2 XOR2_99 (.A(\RBINNXTSHIFT[10] ), .B(\RBINNXTSHIFT[11] ), .Y(
        XOR2_99_Y));
    AO1 AND2_54_RNITC9N2 (.A(XOR2_73_Y), .B(AND2_54_Y), .C(AND2_90_Y), 
        .Y(AO1_36_Y));
    XOR2 XOR2_9 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_9_Y));
    XOR2 \XOR2_WDIFF[2]  (.A(XOR2_79_Y), .B(OR3_0_Y), .Y(\WDIFF[2] ));
    VCC VCC_i (.Y(VCC));
    AND3 AND3_5 (.A(AND3_9_Y), .B(AND3_0_Y), .C(AND3_1_Y), .Y(AND3_5_Y)
        );
    XOR2 XOR2_59 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(XOR2_59_Y));
    INV INV_12 (.A(fifo_px_1_GND), .Y(INV_12_Y));
    XNOR2 XNOR2_4 (.A(\WDIFF[4] ), .B(fifo_px_1_GND), .Y(XNOR2_4_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[9]  (.D(\WBINNXTSHIFT[9] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[9] ));
    XOR2 XOR2_5 (.A(\MEM_RADDR[7] ), .B(fifo_px_1_GND), .Y(XOR2_5_Y));
    DFN1C0 \DFN1C0_RGRY[8]  (.D(XOR2_87_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[8] ));
    AO1C AO1C_9 (.A(fifo_px_1_GND), .B(\WDIFF[13] ), .C(AO1C_7_Y), .Y(
        AO1C_9_Y));
    AO1 AND2_10_RNIPFGG (.A(XOR2_22_Y), .B(AND2_57_Y), .C(AND2_10_Y), 
        .Y(AO1_59_Y));
    XNOR2 XNOR2_20 (.A(\WDIFF[3] ), .B(fifo_px_1_GND), .Y(XNOR2_20_Y));
    XNOR3 XNOR3_11 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_11_Y));
    XNOR2 XNOR2_31 (.A(fifo_px_1_GND), .B(\WDIFF[10] ), .Y(XNOR2_31_Y));
    DFN1C0 DFN1C0_6 (.D(fifo_px_1_VCC), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(DFN1C0_6_Q));
    DFN1E1C0 \DFN1E1C0_Q[0]  (.D(\QXI[0] ), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .E(DVLDI), .Q(fifo_px_1_Q[0]));
    DFN1C0 \DFN1C0_MEM_RADDR[6]  (.D(\RBINNXTSHIFT[6] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[6] ));
    AND2 AND2_79 (.A(XOR2_48_Y), .B(XOR2_93_Y), .Y(AND2_79_Y));
    XOR2 XOR2_86 (.A(\MEM_RADDR[2] ), .B(fifo_px_1_GND), .Y(XOR2_86_Y));
    XOR2 XOR2_22 (.A(\MEM_WADDR[1] ), .B(fifo_px_1_GND), .Y(XOR2_22_Y));
    XNOR3 XNOR3_27 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_27_Y));
    XOR2 INV_8_RNIR6O32 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(
        XOR2_75_Y));
    AO1 AND2_35_RNI9G9C1 (.A(AND2_35_Y), .B(AO1_57_Y), .C(AO1_27_Y), 
        .Y(AO1_42_Y));
    DFN1C0 DFN1C0_10 (.D(\WGRY[3] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_10_Q));
    XOR2 XOR2_13 (.A(\WBINNXTSHIFT[12] ), .B(\WBINNXTSHIFT[13] ), .Y(
        XOR2_13_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[2]  (.D(DFN1C0_8_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[2] ));
    AO1 AND2_74_RNI22DU (.A(AND2_74_Y), .B(AO1_59_Y), .C(AO1_35_Y), .Y(
        AO1_57_Y));
    INV INV_6 (.A(\RBINSYNC[6] ), .Y(INV_6_Y));
    XNOR2 XNOR2_18 (.A(\RBINSYNC[4] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_18_Y));
    DFN1C0 DFN1C0_OVERFLOW (.D(AND2_95_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(fifo_px_1_OVERFLOW));
    AO1 AO1_3 (.A(AND2_67_Y), .B(AO1_8_Y), .C(AO1_7_Y), .Y(AO1_3_Y));
    AND2 AND2_64 (.A(XOR2_16_Y), .B(XOR2_5_Y), .Y(AND2_64_Y));
    AND2 AND2_47 (.A(XOR2_85_Y), .B(XOR2_75_Y), .Y(AND2_47_Y));
    AO1 AO1_18 (.A(AND3_8_Y), .B(NAND3A_1_Y), .C(NAND3A_2_Y), .Y(
        AO1_18_Y));
    XOR2 XOR2_48 (.A(\MEM_WADDR[8] ), .B(fifo_px_1_GND), .Y(XOR2_48_Y));
    XOR2 INV_11_RNIOFHB2 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(
        XOR2_8_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_58_Y), .B(AO1_37_Y), .Y(
        \RBINNXTSHIFT[3] ));
    AO1 AO1_47 (.A(XOR2_14_Y), .B(AND2_40_Y), .C(AND2_28_Y), .Y(
        AO1_47_Y));
    DFN1C0 DFN1C0_3 (.D(\RGRY[9] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_3_Q));
    AND2 INV_8_RNIR6O32_0 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(
        AND2_99_Y));
    AO1C AO1C_0 (.A(fifo_px_1_GND), .B(\WDIFF[1] ), .C(fifo_px_1_GND), 
        .Y(AO1C_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[7]  (.D(\RBINNXTSHIFT[7] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[7] ));
    XNOR2 \XNOR2_WBINSYNC[2]  (.A(XNOR3_16_Y), .B(XNOR3_2_Y), .Y(
        \WBINSYNC[2] ));
    AO1 AO1_15_RNIJ606D (.A(AND2_20_Y), .B(AO1_56_Y), .C(AO1_51_Y), .Y(
        AO1_32_Y));
    XOR2 \XOR2_WDIFF[3]  (.A(XOR2_59_Y), .B(AO1_15_Y), .Y(\WDIFF[3] ));
    AND2 AND2_76 (.A(\MEM_WADDR[8] ), .B(fifo_px_1_GND), .Y(AND2_76_Y));
    OR2A OR2A_16 (.A(MEMRENEG), .B(OR2A_0_Y), .Y(OR2A_16_Y));
    OR2A OR2A_5 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(OR2A_5_Y));
    DFN1C0 \DFN1C0_WGRY[9]  (.D(XOR2_61_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[9] ));
    AND2 \DFN1C0_MEM_WADDR[0]_RNIS0EC  (.A(\MEM_WADDR[0] ), .B(
        MEMORYWE), .Y(AND2_57_Y));
    AND2 AND2_13 (.A(INV_12_Y), .B(INV_0_Y), .Y(AND2_13_Y));
    DFN1C0 DFN1C0_18 (.D(\RGRY[4] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_18_Q));
    AND2 AND2_87 (.A(\MEM_RADDR[5] ), .B(fifo_px_1_GND), .Y(AND2_87_Y));
    XOR2 XOR2_10 (.A(\MEM_RADDR[3] ), .B(fifo_px_1_GND), .Y(XOR2_10_Y));
    XNOR3 \XNOR3_WBINSYNC[7]  (.A(\WGRYSYNC[7] ), .B(XOR3_2_Y), .C(
        XNOR3_27_Y), .Y(\WBINSYNC[7] ));
    XNOR2 XNOR2_1 (.A(\RBINSYNC[1] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_1_Y));
    AND2 AND2_58 (.A(\MEM_WADDR[11] ), .B(fifo_px_1_GND), .Y(AND2_58_Y)
        );
    AND2 AND2_55 (.A(XOR2_78_Y), .B(XOR2_27_Y), .Y(AND2_55_Y));
    INV INV_8 (.A(\RBINSYNC[8] ), .Y(INV_8_Y));
    XNOR3 XNOR3_6 (.A(\RGRYSYNC[2] ), .B(\RGRYSYNC[1] ), .C(XOR3_5_Y), 
        .Y(XNOR3_6_Y));
    XOR3 \XOR3_RBINSYNC[9]  (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), 
        .C(\RGRYSYNC[9] ), .Y(\RBINSYNC[9] ));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_92_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[4] ));
    XOR2 XOR2_88 (.A(\MEM_WADDR[9] ), .B(fifo_px_1_GND), .Y(XOR2_88_Y));
    XNOR3 XNOR3_43 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_43_Y));
    XOR2 XOR2_96 (.A(\MEM_WADDR[11] ), .B(fifo_px_1_GND), .Y(XOR2_96_Y)
        );
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[2] ));
    XOR3 XOR3_3 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_3_Y));
    XOR2 XOR2_79 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_79_Y));
    XOR2 XOR2_27 (.A(\MEM_WADDR[5] ), .B(fifo_px_1_GND), .Y(XOR2_27_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(REP), .Y(MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_29_Y), .B(AO1_25_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(XOR2_7_Y));
    XOR2 XOR2_56 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_56_Y));
    XOR2 XOR2_14 (.A(\MEM_WADDR[7] ), .B(fifo_px_1_GND), .Y(XOR2_14_Y));
    XNOR3 XNOR3_23 (.A(XNOR3_19_Y), .B(XNOR3_35_Y), .C(XNOR3_41_Y), .Y(
        XNOR3_23_Y));
    XNOR3 XNOR3_1 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_1_Y));
    XOR2 INV_2_RNI6R1F1 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(
        XOR2_74_Y));
    XOR2 XOR2_11 (.A(\MEM_WADDR[11] ), .B(fifo_px_1_GND), .Y(XOR2_11_Y)
        );
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\WBINSYNC[3] ), .Y(
        XNOR2_3_Y));
    AO1 INV_4_RNI27Q05 (.A(XOR2_28_Y), .B(AND2_22_Y), .C(AND2_52_Y), 
        .Y(AO1_51_Y));
    DFN1C0 DFN1C0_7 (.D(\WGRY[12] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_7_Q));
    AO1 AO1_15_RNITEVCL (.A(AND2_43_Y), .B(AO1_56_Y), .C(AO1_21_Y), .Y(
        AO1_14_Y));
    XNOR2 XNOR2_22 (.A(\RBINSYNC[10] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XNOR2_22_Y));
    NAND3A NAND3A_3 (.A(\WDIFF[1] ), .B(fifo_px_1_GND), .C(OR2A_15_Y), 
        .Y(NAND3A_3_Y));
    XOR2 XOR2_25 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(XOR2_25_Y));
    XNOR2 \XNOR2_RBINSYNC[0]  (.A(XNOR3_39_Y), .B(XNOR3_23_Y), .Y(
        \RBINSYNC[0] ));
    XNOR2 XNOR2_15 (.A(\RBINNXTSHIFT[2] ), .B(\WBINSYNC[4] ), .Y(
        XNOR2_15_Y));
    AO1 AO1_22 (.A(AND2_18_Y), .B(AO1_17_Y), .C(AO1_50_Y), .Y(AO1_22_Y)
        );
    DFN1C0 \DFN1C0_WGRYSYNC[13]  (.D(DFN1C0_12_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[13] ));
    AND2 AND2_47_RNI2VJF2 (.A(AND2_47_Y), .B(AND2_62_Y), .Y(AND2_60_Y));
    XOR2 \XOR2_WBINNXTSHIFT[13]  (.A(XOR2_3_Y), .B(AO1_52_Y), .Y(
        \WBINNXTSHIFT[13] ));
    XNOR3 XNOR3_3 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_3_Y));
    OR2 OR2_10 (.A(OR2_4_Y), .B(MEMWENEG), .Y(OR2_10_Y));
    AND2 INV_6_RNI3QRO1_0 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(
        AND2_97_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[10]  (.D(DFN1C0_19_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[10] ));
    AO1 INV_8_RNIDNE46 (.A(XOR2_75_Y), .B(AND2_101_Y), .C(AND2_99_Y), 
        .Y(AO1_4_Y));
    XNOR2 \XNOR2_RBINSYNC[8]  (.A(\RGRYSYNC[8] ), .B(XNOR3_37_Y), .Y(
        \RBINSYNC[8] ));
    XOR2 INV_3_RNIFBVA1 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(
        XOR2_73_Y));
    OR2 OR2_5 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(OR2_5_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[9]  (.D(DFN1C0_3_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[9] ));
    AO1 AO1_41 (.A(AND2_49_Y), .B(AO1_45_Y), .C(AO1_53_Y), .Y(AO1_41_Y)
        );
    AND2 XOR2_34_RNI199E2 (.A(XOR2_8_Y), .B(XOR2_34_Y), .Y(AND2_62_Y));
    XNOR3 XNOR3_15 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        XNOR3_36_Y), .Y(XNOR3_15_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[3] ));
    AND2 AND2_98 (.A(\MEM_RADDR[2] ), .B(fifo_px_1_GND), .Y(AND2_98_Y));
    AND2 AND2_95 (.A(WEP), .B(fifo_px_1_FULL), .Y(AND2_95_Y));
    DFN1C0 DFN1C0_23 (.D(\RGRY[3] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_23_Q));
    AND3 AND3_2 (.A(XNOR2_7_Y), .B(XNOR2_3_Y), .C(XNOR2_15_Y), .Y(
        AND3_2_Y));
    AND2 AND2_63 (.A(\MEM_RADDR[3] ), .B(fifo_px_1_GND), .Y(AND2_63_Y));
    XNOR2 XNOR2_26 (.A(\RBINNXTSHIFT[10] ), .B(\WBINSYNC[12] ), .Y(
        XNOR2_26_Y));
    XOR2 XOR2_64_RNINLGLR (.A(XOR2_64_Y), .B(AO1_49_Y), .Y(\WDIFF[11] )
        );
    XOR2 XOR2_32 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_32_Y));
    NOR3A NOR3A_1 (.A(OR2A_15_Y), .B(AO1C_0_Y), .C(\WDIFF[0] ), .Y(
        NOR3A_1_Y));
    OR3 OR3_0 (.A(AND2_53_Y), .B(AND2_88_Y), .C(AND2_13_Y), .Y(OR3_0_Y)
        );
    XOR2 XOR2_98 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_98_Y));
    XNOR3 XNOR3_35 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_35_Y));
    XNOR3 \XNOR3_WBINSYNC[3]  (.A(XNOR3_46_Y), .B(XNOR3_11_Y), .C(
        XNOR3_20_Y), .Y(\WBINSYNC[3] ));
    XOR2 XOR2_65 (.A(\MEM_RADDR[8] ), .B(fifo_px_1_GND), .Y(XOR2_65_Y));
    NOR3A NOR3A_0 (.A(OR2A_6_Y), .B(AO1C_2_Y), .C(\WDIFF[3] ), .Y(
        NOR3A_0_Y));
    AO1D DFN1C0_AFULL_RNO (.A(m15_i_0), .B(DFN1C0_AFULL_RNO_1_0), .C(
        fifo_px_1_FULL), .Y(OR2_2_Y));
    XOR2 XOR2_58 (.A(\MEM_RADDR[3] ), .B(fifo_px_1_GND), .Y(XOR2_58_Y));
    AND2 INV_5_RNIN9US1 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(
        AND2_101_Y));
    DFN1C0 DFN1C0_AFULL (.D(OR2_2_Y), .CLK(SCLK_c), .CLR(WRITE_RESET_P)
        , .Q(fifo_px_1_AFULL));
    INV INV_2 (.A(\RBINSYNC[3] ), .Y(INV_2_Y));
    NAND3A NAND3A_1 (.A(NOR3A_1_Y), .B(OR2A_9_Y), .C(NAND3A_3_Y), .Y(
        NAND3A_1_Y));
    NAND2 NAND2_0 (.A(fifo_px_1_FULL), .B(fifo_px_1_VCC), .Y(NAND2_0_Y)
        );
    XNOR3 XNOR3_0 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_0_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[10]  (.D(DFN1C0_5_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[10] ));
    XOR2 XOR2_69_RNIU6N131 (.A(XOR2_69_Y), .B(AO1_5_Y), .Y(\WDIFF[13] )
        );
    XOR2 XOR2_82_RNI7LJC01 (.A(XOR2_82_Y), .B(AO1_16_Y), .Y(
        \WDIFF[12] ));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_98_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[6] ));
    XOR2 XOR2_76 (.A(\MEM_RADDR[10] ), .B(fifo_px_1_GND), .Y(XOR2_76_Y)
        );
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(DVLDI));
    XNOR2 \XNOR2_RBINSYNC[6]  (.A(XOR3_0_Y), .B(XNOR3_4_Y), .Y(
        \RBINSYNC[6] ));
    XNOR2 XNOR2_10 (.A(\RBINNXTSHIFT[3] ), .B(\WBINSYNC[5] ), .Y(
        XNOR2_10_Y));
    OR2 OR2_1 (.A(NAND2_2_Y), .B(MEMRENEG), .Y(OR2_1_Y));
    XOR2 XOR2_83 (.A(\MEM_RADDR[11] ), .B(fifo_px_1_GND), .Y(XOR2_83_Y)
        );
    XNOR2 XNOR2_27 (.A(\RBINSYNC[7] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XNOR2_27_Y));
    AO1 AO1_54 (.A(XOR2_36_Y), .B(AND2_8_Y), .C(AND2_87_Y), .Y(
        AO1_54_Y));
    AO1 AO1_20 (.A(XOR2_70_Y), .B(AO1_41_Y), .C(AND2_8_Y), .Y(AO1_20_Y)
        );
    INV INV_13 (.A(\RBINSYNC[11] ), .Y(INV_13_Y));
    AND2 INV_11_RNIOFHB2_0 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(
        AND2_75_Y));
    GND GND_i_0 (.Y(GND_0));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_56_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[2] ));
    XOR2 XOR2_29 (.A(\MEM_WADDR[3] ), .B(fifo_px_1_GND), .Y(XOR2_29_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[8]  (.D(DFN1C0_26_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[8] ));
    XOR3 XOR3_0 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_0_Y));
    XOR2 XOR2_40 (.A(\MEM_RADDR[10] ), .B(fifo_px_1_GND), .Y(XOR2_40_Y)
        );
    DFN1C0 \DFN1C0_RGRYSYNC[1]  (.D(DFN1C0_13_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[1] ));
    AO1 AO1_45 (.A(XOR2_49_Y), .B(AND2_14_Y), .C(AND2_21_Y), .Y(
        AO1_45_Y));
    XOR2 XOR2_2 (.A(\WBINNXTSHIFT[10] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XOR2_2_Y));
    RAM4K9 RAM4K9_12 (.ADDRA11(fifo_px_1_GND), .ADDRA10(
        \MEM_WADDR[10] ), .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(
        \MEM_WADDR[8] ), .ADDRA7(\MEM_WADDR[7] ), .ADDRA6(
        \MEM_WADDR[6] ), .ADDRA5(\MEM_WADDR[5] ), .ADDRA4(
        \MEM_WADDR[4] ), .ADDRA3(\MEM_WADDR[3] ), .ADDRA2(
        \MEM_WADDR[2] ), .ADDRA1(\MEM_WADDR[1] ), .ADDRA0(
        \MEM_WADDR[0] ), .ADDRB11(fifo_px_1_GND), .ADDRB10(
        fifo_px_1_GND), .ADDRB9(fifo_px_1_GND), .ADDRB8(\MEM_RADDR[8] )
        , .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(\MEM_RADDR[6] ), .ADDRB5(
        \MEM_RADDR[5] ), .ADDRB4(\MEM_RADDR[4] ), .ADDRB3(
        \MEM_RADDR[3] ), .ADDRB2(\MEM_RADDR[2] ), .ADDRB1(
        \MEM_RADDR[1] ), .ADDRB0(\MEM_RADDR[0] ), .DINA8(fifo_px_1_GND)
        , .DINA7(fifo_px_1_GND), .DINA6(fifo_px_1_GND), .DINA5(
        fifo_px_1_GND), .DINA4(fifo_px_1_GND), .DINA3(fifo_px_1_GND), 
        .DINA2(fifo_px_1_GND), .DINA1(stonyman_0_px1_out[1]), .DINA0(
        stonyman_0_px1_out[0]), .DINB8(fifo_px_1_GND), .DINB7(
        fifo_px_1_GND), .DINB6(fifo_px_1_GND), .DINB5(fifo_px_1_GND), 
        .DINB4(fifo_px_1_GND), .DINB3(fifo_px_1_GND), .DINB2(
        fifo_px_1_GND), .DINB1(fifo_px_1_GND), .DINB0(fifo_px_1_GND), 
        .WIDTHA0(fifo_px_1_VCC), .WIDTHA1(fifo_px_1_GND), .WIDTHB0(
        fifo_px_1_VCC), .WIDTHB1(fifo_px_1_VCC), .PIPEA(fifo_px_1_GND), 
        .PIPEB(fifo_px_1_GND), .WMODEA(fifo_px_1_GND), .WMODEB(
        fifo_px_1_GND), .BLKA(OR2_7_Y), .BLKB(OR2_9_Y), .WENA(
        fifo_px_1_GND), .WENB(fifo_px_1_VCC), .CLKA(SCLK_c), .CLKB(
        SCLK_c), .RESET(WRITE_RESET_P), .DOUTA8(RAM4K9_12_DOUTA8_0), 
        .DOUTA7(RAM4K9_12_DOUTA7_0), .DOUTA6(RAM4K9_12_DOUTA6_0), 
        .DOUTA5(RAM4K9_12_DOUTA5_0), .DOUTA4(RAM4K9_12_DOUTA4_0), 
        .DOUTA3(RAM4K9_12_DOUTA3_0), .DOUTA2(RAM4K9_12_DOUTA2_0), 
        .DOUTA1(RAM4K9_12_DOUTA1), .DOUTA0(RAM4K9_12_DOUTA0), .DOUTB8(
        RAM4K9_12_DOUTB8_0), .DOUTB7(RAM4K9_12_DOUTB7), .DOUTB6(
        RAM4K9_12_DOUTB6), .DOUTB5(RAM4K9_12_DOUTB5), .DOUTB4(
        RAM4K9_12_DOUTB4), .DOUTB3(RAM4K9_12_DOUTB3), .DOUTB2(
        RAM4K9_12_DOUTB2), .DOUTB1(RAM4K9_12_DOUTB1), .DOUTB0(
        RAM4K9_12_DOUTB0));
    AND2 INV_4_RNIU5SO1_0 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(
        AND2_52_Y));
    DFN1C0 DFN1C0_8 (.D(\WGRY[2] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_8_Q));
    DFN1E1C0 DFN1E1C0_1 (.D(\MEM_RADDR[9] ), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .E(OR2A_8_Y), .Q(DFN1E1C0_1_Q));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_1_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[5] ));
    XNOR3 XNOR3_10 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_10_Y));
    XOR2 XOR2_37 (.A(\MEM_RADDR[9] ), .B(fifo_px_1_GND), .Y(XOR2_37_Y));
    XNOR2 \XNOR2_WDIFF[1]  (.A(XOR2_54_Y), .B(NOR2A_1_Y), .Y(
        \WDIFF[1] ));
    XNOR2 XNOR2_30 (.A(\RBINNXTSHIFT[4] ), .B(\WBINSYNC[6] ), .Y(
        XNOR2_30_Y));
    AND2 AND2_36 (.A(\MEM_RADDR[10] ), .B(fifo_px_1_GND), .Y(AND2_36_Y)
        );
    AND2A AND2A_0 (.A(fifo_px_1_EMPTY), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_WGRY[10]  (.D(XOR2_2_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[10] ));
    AO1 AO1_26 (.A(XOR2_5_Y), .B(AND2_37_Y), .C(AND2_86_Y), .Y(
        AO1_26_Y));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_23_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[7] ));
    XOR3 XOR3_5 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_5_Y));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_46_Y), .B(AO1_20_Y), .Y(
        \RBINNXTSHIFT[5] ));
    AND3 AND3_9 (.A(XNOR2_32_Y), .B(XNOR2_27_Y), .C(XNOR2_33_Y), .Y(
        AND3_9_Y));
    AO1 AO1_23 (.A(XOR2_16_Y), .B(AO1_11_Y), .C(AND2_37_Y), .Y(
        AO1_23_Y));
    OR2 OR2_3 (.A(OR2_5_Y), .B(MEMRENEG), .Y(OR2_3_Y));
    XOR2 XOR2_44 (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(XOR2_44_Y));
    AO1 AND2_81_RNIEVB2B (.A(AND2_62_Y), .B(AO1_4_Y), .C(AO1_39_Y), .Y(
        AO1_1_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[2]  (.D(DFN1C0_1_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[2] ));
    XOR2 XOR2_41 (.A(\MEM_WADDR[3] ), .B(fifo_px_1_GND), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\MEM_RADDR[4] ), .B(fifo_px_1_GND), .Y(XOR2_35_Y));
    XNOR3 XNOR3_49 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_49_Y));
    XNOR2 \XNOR2_WBINSYNC[10]  (.A(\WGRYSYNC[10] ), .B(XNOR3_51_Y), .Y(
        \WBINSYNC[10] ));
    XOR2 \XOR2_RBINNXTSHIFT[10]  (.A(XOR2_76_Y), .B(AO1_22_Y), .Y(
        \RBINNXTSHIFT[10] ));
    XNOR2 XNOR2_24 (.A(fifo_px_1_GND), .B(\WDIFF[13] ), .Y(XNOR2_24_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[0]  (.D(DFN1C0_15_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[0] ));
    XOR2 XOR2_101 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_101_Y));
    AO1 AO1_15_RNIDU7T4 (.A(AND2_34_Y), .B(AO1_15_Y), .C(AO1_36_Y), .Y(
        AO1_56_Y));
    OR2A OR2A_13 (.A(\WDIFF[7] ), .B(fifo_px_1_GND), .Y(OR2A_13_Y));
    XOR2 XOR2_80 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_80_Y));
    DFN1P0 DFN1P0_EMPTY (.D(EMPTYINT), .CLK(SCLK_c), .PRE(READ_RESET_P)
        , .Q(fifo_px_1_EMPTY));
    XNOR3 XNOR3_29 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_29_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[4]  (.D(DFN1C0_20_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[4] ));
    XOR2 XOR2_78 (.A(\MEM_WADDR[4] ), .B(fifo_px_1_GND), .Y(XOR2_78_Y));
    RAM4K9 RAM4K9_5 (.ADDRA11(fifo_px_1_GND), .ADDRA10(\MEM_WADDR[10] )
        , .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(
        fifo_px_1_GND), .ADDRB10(fifo_px_1_GND), .ADDRB9(fifo_px_1_GND)
        , .ADDRB8(\MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_1_GND), .DINA7(fifo_px_1_GND), 
        .DINA6(fifo_px_1_GND), .DINA5(fifo_px_1_GND), .DINA4(
        fifo_px_1_GND), .DINA3(fifo_px_1_GND), .DINA2(fifo_px_1_GND), 
        .DINA1(stonyman_0_px1_out[1]), .DINA0(stonyman_0_px1_out[0]), 
        .DINB8(fifo_px_1_GND), .DINB7(fifo_px_1_GND), .DINB6(
        fifo_px_1_GND), .DINB5(fifo_px_1_GND), .DINB4(fifo_px_1_GND), 
        .DINB3(fifo_px_1_GND), .DINB2(fifo_px_1_GND), .DINB1(
        fifo_px_1_GND), .DINB0(fifo_px_1_GND), .WIDTHA0(fifo_px_1_VCC), 
        .WIDTHA1(fifo_px_1_GND), .WIDTHB0(fifo_px_1_VCC), .WIDTHB1(
        fifo_px_1_VCC), .PIPEA(fifo_px_1_GND), .PIPEB(fifo_px_1_GND), 
        .WMODEA(fifo_px_1_GND), .WMODEB(fifo_px_1_GND), .BLKA(OR2_10_Y)
        , .BLKB(OR2_3_Y), .WENA(fifo_px_1_GND), .WENB(fifo_px_1_VCC), 
        .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(WRITE_RESET_P), .DOUTA8(
        RAM4K9_5_DOUTA8_0), .DOUTA7(RAM4K9_5_DOUTA7_0), .DOUTA6(
        RAM4K9_5_DOUTA6_0), .DOUTA5(RAM4K9_5_DOUTA5_0), .DOUTA4(
        RAM4K9_5_DOUTA4_0), .DOUTA3(RAM4K9_5_DOUTA3_0), .DOUTA2(
        RAM4K9_5_DOUTA2_0), .DOUTA1(RAM4K9_5_DOUTA1), .DOUTA0(
        RAM4K9_5_DOUTA0), .DOUTB8(RAM4K9_5_DOUTB8_0), .DOUTB7(
        RAM4K9_5_DOUTB7), .DOUTB6(RAM4K9_5_DOUTB6), .DOUTB5(
        RAM4K9_5_DOUTB5), .DOUTB4(RAM4K9_5_DOUTB4), .DOUTB3(
        RAM4K9_5_DOUTB3), .DOUTB2(RAM4K9_5_DOUTB2), .DOUTB1(
        RAM4K9_5_DOUTB1), .DOUTB0(RAM4K9_5_DOUTB0));
    NOR2A NOR2A_1 (.A(fifo_px_1_GND), .B(\WBINNXTSHIFT[0] ), .Y(
        NOR2A_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[13]  (.D(\WBINNXTSHIFT[13] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[13] ));
    DFN1C0 DFN1C0_27 (.D(\WGRY[9] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_27_Q));
    XOR3 XOR3_8 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_8_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_91_Y), .B(AO1_23_Y), .Y(
        \RBINNXTSHIFT[7] ));
    XOR2 XOR2_69 (.A(\WBINNXTSHIFT[13] ), .B(INV_13_Y), .Y(XOR2_69_Y));
    XNOR2 \XNOR2_WBINSYNC[8]  (.A(XOR3_8_Y), .B(XNOR3_50_Y), .Y(
        \WBINSYNC[8] ));
    XOR2 XOR2_6 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(XOR2_6_Y));
    NOR2A NOR2A_0 (.A(fifo_px_1_GND), .B(\WDIFF[8] ), .Y(NOR2A_0_Y));
    DFN1C0 \DFN1C0_WGRY[12]  (.D(XOR2_13_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[12] ));
    AO1 AO1_13 (.A(XOR2_40_Y), .B(AO1_22_Y), .C(AND2_36_Y), .Y(
        AO1_13_Y));
    AND2 AND2_54 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(AND2_54_Y));
    XOR2 XOR2_93 (.A(\MEM_WADDR[9] ), .B(fifo_px_1_GND), .Y(XOR2_93_Y));
    XOR2 XOR2_84 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_84_Y));
    AO1 \XOR2_WBINNXTSHIFT[7]_RNO  (.A(XOR2_45_Y), .B(AO1_55_Y), .C(
        AND2_40_Y), .Y(AO1_44_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[6] ));
    XOR2 XOR2_81 (.A(\MEM_RADDR[2] ), .B(fifo_px_1_GND), .Y(XOR2_81_Y));
    XOR2 \XOR2_WDIFF[7]  (.A(XOR2_44_Y), .B(AO1_32_Y), .Y(\WDIFF[7] ));
    XOR2 XOR2_53 (.A(\MEM_RADDR[6] ), .B(fifo_px_1_GND), .Y(XOR2_53_Y));
    XNOR2 XNOR2_23 (.A(\WDIFF[6] ), .B(fifo_px_1_GND), .Y(XNOR2_23_Y));
    AND2 AND2_81 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(AND2_81_Y));
    DFN1C0 DFN1C0_19 (.D(\RGRY[10] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P)
        , .Q(DFN1C0_19_Q));
    DFN1C0 \DFN1C0_WGRYSYNC[3]  (.D(DFN1C0_10_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[3] ));
    OR2A OR2A_0 (.A(\MEM_RADDR[9] ), .B(\MEM_RADDR[10] ), .Y(OR2A_0_Y));
    XOR2 XOR2_12 (.A(\WBINNXTSHIFT[7] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[0] ), .B(\WBINSYNC[2] ), .Y(
        XNOR2_7_Y));
    XNOR2 XNOR2_12 (.A(fifo_px_1_VCC), .B(\WDIFF[11] ), .Y(XNOR2_12_Y));
    OR2A OR2A_10 (.A(\WDIFF[11] ), .B(fifo_px_1_VCC), .Y(OR2A_10_Y));
    DFN1C0 DFN1C0_5 (.D(\WGRY[10] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_5_Q));
    DFN1C0 DFN1C0_21 (.D(\WGRY[7] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_21_Q));
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_55_Y), .B(AO1_44_Y), .Y(
        \WBINNXTSHIFT[7] ));
    DFN1C0 DFN1C0_1 (.D(\RGRY[2] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_1_Q));
    DFN1C0 \DFN1C0_RGRY[10]  (.D(XOR2_99_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[10] ));
    AO1 AND2_47_RNIRRR901 (.A(XOR2_8_Y), .B(AO1_49_Y), .C(AND2_75_Y), 
        .Y(AO1_16_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[7]  (.D(DFN1C0_21_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[7] ));
    AND2 AND2_4 (.A(AND2_96_Y), .B(AND2_64_Y), .Y(AND2_4_Y));
    OR2A OR2A_14 (.A(fifo_px_1_GND), .B(\WDIFF[7] ), .Y(OR2A_14_Y));
    AND2 AND2_FULLINT (.A(AND3_11_Y), .B(XOR2_33_Y), .Y(FULLINT));
    XOR2 \XOR2_WDIFF[6]  (.A(XOR2_24_Y), .B(AO1_34_Y), .Y(\WDIFF[6] ));
    XNOR3 \XNOR3_WBINSYNC[5]  (.A(XNOR3_10_Y), .B(XNOR3_49_Y), .C(
        XNOR3_8_Y), .Y(\WBINSYNC[5] ));
    XNOR3 XNOR3_12 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_12_Y));
    AND2 AND2_40 (.A(\MEM_WADDR[6] ), .B(fifo_px_1_GND), .Y(AND2_40_Y));
    XNOR2 XNOR2_32 (.A(\RBINSYNC[6] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XNOR2_32_Y));
    AND2 AND2_88 (.A(\WBINNXTSHIFT[1] ), .B(INV_0_Y), .Y(AND2_88_Y));
    AND2 AND2_85 (.A(\MEM_WADDR[12] ), .B(fifo_px_1_GND), .Y(AND2_85_Y)
        );
    DFN1C0 \DFN1C0_WGRYSYNC[6]  (.D(DFN1C0_25_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[6] ));
    AND2 AND2_42 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(AND2_42_Y));
    DFN1C0 \DFN1C0_WGRY[8]  (.D(XOR2_19_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[8] ));
    NOR3C DFN1C0_AFULL_RNO_1 (.A(DFN1C0_AFULL_RNO_2_0), .B(XNOR2_29_Y), 
        .C(m15_i_a4_1), .Y(DFN1C0_AFULL_RNO_1_0));
    XNOR2 \XNOR2_WBINSYNC[6]  (.A(XNOR3_40_Y), .B(XNOR3_15_Y), .Y(
        \WBINSYNC[6] ));
    XNOR2 XNOR2_5 (.A(\RBINNXTSHIFT[9] ), .B(\WBINSYNC[11] ), .Y(
        XNOR2_5_Y));
    XOR2 \XOR2_WDIFF[4]  (.A(XOR2_15_Y), .B(AO1_31_Y), .Y(\WDIFF[4] ));
    XNOR2 XNOR2_16 (.A(\WDIFF[9] ), .B(fifo_px_1_GND), .Y(XNOR2_16_Y));
    AND2 AND2_67 (.A(XOR2_51_Y), .B(XOR2_11_Y), .Y(AND2_67_Y));
    XOR2 XOR2_31_RNIDMTP1 (.A(XOR2_31_Y), .B(AO1_38_Y), .Y(
        \WBINNXTSHIFT[10] ));
    XNOR3 XNOR3_41 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_41_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_0_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[3] ));
    XOR3 XOR3_2 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_2_Y));
    XOR2 XOR2_94 (.A(\RBINNXTSHIFT[11] ), .B(fifo_px_1_GND), .Y(
        XOR2_94_Y));
    XOR2 XOR2_25_RNIGAD0E (.A(XOR2_25_Y), .B(AO1_30_Y), .Y(\WDIFF[8] ));
    XOR2 XOR2_39 (.A(\MEM_WADDR[8] ), .B(fifo_px_1_GND), .Y(XOR2_39_Y));
    XNOR3 \XNOR3_WBINSYNC[9]  (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), 
        .C(XNOR3_29_Y), .Y(\WBINSYNC[9] ));
    AND2 AND2_8 (.A(\MEM_RADDR[4] ), .B(fifo_px_1_GND), .Y(AND2_8_Y));
    XOR2 XOR2_91 (.A(\MEM_RADDR[7] ), .B(fifo_px_1_GND), .Y(XOR2_91_Y));
    XOR2 XOR2_3 (.A(\MEM_WADDR[13] ), .B(fifo_px_1_GND), .Y(XOR2_3_Y));
    XOR2 XOR2_54 (.A(\WBINNXTSHIFT[1] ), .B(INV_12_Y), .Y(XOR2_54_Y));
    XOR3 XOR3_1 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_1_Y));
    XOR2 \XOR2_RBINNXTSHIFT[11]  (.A(XOR2_83_Y), .B(AO1_13_Y), .Y(
        \RBINNXTSHIFT[11] ));
    XNOR3 XNOR3_21 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_21_Y));
    XOR2 XOR2_51 (.A(\MEM_WADDR[10] ), .B(fifo_px_1_GND), .Y(XOR2_51_Y)
        );
    AO1 AO1_27 (.A(AND2_84_Y), .B(AO1_58_Y), .C(AO1_47_Y), .Y(AO1_27_Y)
        );
    AO1D DFN1C0_AFULL_RNO_0 (.A(AO1C_9_Y), .B(AO1C_6_Y), .C(AO1C_1_Y), 
        .Y(m15_i_0));
    AND2 AND2_82 (.A(\MEM_WADDR[10] ), .B(fifo_px_1_GND), .Y(AND2_82_Y)
        );
    XOR2 XOR2_66 (.A(\RBINNXTSHIFT[9] ), .B(\RBINNXTSHIFT[10] ), .Y(
        XOR2_66_Y));
    DFN1C0 DFN1C0_24 (.D(\RGRY[7] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_24_Q));
    XNOR3 XNOR3_16 (.A(\WGRYSYNC[4] ), .B(\WGRYSYNC[3] ), .C(
        \WGRYSYNC[2] ), .Y(XNOR3_16_Y));
    INV INV_10 (.A(\RBINSYNC[0] ), .Y(INV_10_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[1] ));
    AO1 AO1_58 (.A(XOR2_27_Y), .B(AND2_32_Y), .C(AND2_12_Y), .Y(
        AO1_58_Y));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_52_Y), .B(AND2_14_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\MEM_WADDR[12] ), .B(fifo_px_1_GND), .Y(XOR2_17_Y)
        );
    DFN1C0 DFN1C0_13 (.D(\RGRY[1] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_13_Q));
    AND2 AND2_53 (.A(\WBINNXTSHIFT[1] ), .B(INV_12_Y), .Y(AND2_53_Y));
    XNOR3 XNOR3_51 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_51_Y));
    AND3 AND3_7 (.A(AND3_6_Y), .B(AND3_2_Y), .C(AND3_10_Y), .Y(
        AND3_7_Y));
    INV INV_9 (.A(\RBINSYNC[5] ), .Y(INV_9_Y));
    XNOR3 XNOR3_36 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_36_Y));
    AO1 AND2_55_RNIFS9C1 (.A(AND2_55_Y), .B(AO1_57_Y), .C(AO1_58_Y), 
        .Y(AO1_55_Y));
    XOR2 XOR2_15 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(XOR2_15_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[5] ));
    XNOR3 XNOR3_48 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_48_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[0] ));
    AO1 AO1_17 (.A(AND2_4_Y), .B(AO1_41_Y), .C(AO1_43_Y), .Y(AO1_17_Y));
    XOR2 XOR2_96_RNI060U1 (.A(XOR2_96_Y), .B(AO1_46_Y), .Y(
        \WBINNXTSHIFT[11] ));
    XNOR2 XNOR2_17 (.A(\RBINNXTSHIFT[7] ), .B(\WBINSYNC[9] ), .Y(
        XNOR2_17_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[10]  (.D(\RBINNXTSHIFT[10] ), .CLK(SCLK_c)
        , .CLR(READ_RESET_P), .Q(\MEM_RADDR[10] ));
    XOR2 XOR2_30_RNIKL1F1 (.A(XOR2_30_Y), .B(AO1_55_Y), .Y(
        \WBINNXTSHIFT[6] ));
    XNOR3 XNOR3_28 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_28_Y));
    AND2 INV_2_RNI41U73 (.A(XOR2_74_Y), .B(XOR2_28_Y), .Y(AND2_20_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_4_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_18_Y), .B(AND2_57_Y), .Y(
        \WBINNXTSHIFT[1] ));
    BUFF \BUFF_RBINSYNC[11]  (.A(\RGRYSYNC[11] ), .Y(\RBINSYNC[11] ));
    AND2 AND2_21 (.A(\MEM_RADDR[1] ), .B(fifo_px_1_GND), .Y(AND2_21_Y));
    XOR3 XOR3_7 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_7_Y));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_84_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[4] ));
    AO1 AO1_37 (.A(XOR2_81_Y), .B(AO1_45_Y), .C(AND2_98_Y), .Y(
        AO1_37_Y));
    OR2A OR2A_9 (.A(fifo_px_1_GND), .B(\WDIFF[2] ), .Y(OR2A_9_Y));
    XOR2 XOR2_0 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_0_Y));
    DFN1C0 DFN1C0_25 (.D(\WGRY[6] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_25_Q));
    XOR2 XOR2_70 (.A(\MEM_RADDR[4] ), .B(fifo_px_1_GND), .Y(XOR2_70_Y));
    NAND2 NAND2_1 (.A(fifo_px_1_EMPTY), .B(fifo_px_1_VCC), .Y(
        NAND2_1_Y));
    MX2 MX2_85 (.A(RAM4K9_12_DOUTB0), .B(RAM4K9_4_DOUTB0), .S(
        DFN1E1C0_1_Q), .Y(MX2_85_Y));
    DFN1C0 DFN1C0_22 (.D(\WGRY[11] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_22_Q));
    AND2 AND2_96 (.A(XOR2_70_Y), .B(XOR2_36_Y), .Y(AND2_96_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[8]  (.D(DFN1C0_9_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[8] ));
    XOR2 XOR2_68 (.A(\WBINNXTSHIFT[11] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XOR2_68_Y));
    AND2 AND2_37 (.A(\MEM_RADDR[6] ), .B(fifo_px_1_GND), .Y(AND2_37_Y));
    XNOR3 XNOR3_4 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_4_Y));
    AND2 AND2_93 (.A(AND3_12_Y), .B(XNOR2_16_Y), .Y(AND2_93_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_86_Y), .B(AO1_45_Y), .Y(
        \RBINNXTSHIFT[2] ));
    XOR2 XOR2_42 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(XOR2_42_Y));
    XNOR2 XNOR2_14 (.A(\RBINNXTSHIFT[6] ), .B(\WBINSYNC[8] ), .Y(
        XNOR2_14_Y));
    XNOR3 XNOR3_37 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_37_Y));
    XNOR2 XNOR2_29 (.A(fifo_px_1_GND), .B(\WDIFF[12] ), .Y(XNOR2_29_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[9]  (.D(\RBINNXTSHIFT[9] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[9] ));
    XOR2 XOR2_36 (.A(\MEM_RADDR[5] ), .B(fifo_px_1_GND), .Y(XOR2_36_Y));
    XNOR3 XNOR3_2 (.A(XNOR3_3_Y), .B(XNOR3_5_Y), .C(XNOR3_25_Y), .Y(
        XNOR3_2_Y));
    XNOR2 XNOR2_8 (.A(\RBINNXTSHIFT[5] ), .B(\WBINSYNC[7] ), .Y(
        XNOR2_8_Y));
    XOR2 XOR2_71 (.A(\WBINNXTSHIFT[13] ), .B(fifo_px_1_GND), .Y(
        XOR2_71_Y));
    AO1C AO1C_6 (.A(fifo_px_1_GND), .B(\WDIFF[12] ), .C(OR2A_10_Y), .Y(
        AO1C_6_Y));
    AND2 AND2_28 (.A(\MEM_WADDR[7] ), .B(fifo_px_1_GND), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(\MEM_WADDR[9] ), .B(fifo_px_1_GND), .Y(AND2_25_Y));
    AND2 INV_9_RNIALQB_0 (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(
        AND2_9_Y));
    AO1 AO1_48 (.A(AND2_61_Y), .B(AO1_42_Y), .C(AO1_3_Y), .Y(AO1_48_Y));
    XNOR3 \XNOR3_RBINSYNC[7]  (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), 
        .C(XNOR3_9_Y), .Y(\RBINSYNC[7] ));
    DFN1C0 \DFN1C0_WGRYSYNC[5]  (.D(DFN1C0_11_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[5] ));
    DFN1C0 \DFN1C0_MEM_RADDR[11]  (.D(\RBINNXTSHIFT[11] ), .CLK(SCLK_c)
        , .CLR(READ_RESET_P), .Q(\MEM_RADDR[11] ));
    AO1C AO1C_2 (.A(fifo_px_1_GND), .B(\WDIFF[4] ), .C(fifo_px_1_GND), 
        .Y(AO1C_2_Y));
    
endmodule


module fifo_px(
       stonyman_0_px0_out,
       fifo_px_0_Q,
       fifo_px_0_AFULL,
       fifo_px_0_OVERFLOW,
       fifo_px_0_EMPTY,
       REP,
       MSS_CORE2_0_M2F_RESET_N,
       fifo_px_VCC,
       fifo_px_GND,
       SCLK_c,
       stonyman_0_writeEnable,
       fifo_px_0_FULL
    );
input  [1:0] stonyman_0_px0_out;
output [0:0] fifo_px_0_Q;
output fifo_px_0_AFULL;
output fifo_px_0_OVERFLOW;
output fifo_px_0_EMPTY;
input  REP;
input  MSS_CORE2_0_M2F_RESET_N;
input  fifo_px_VCC;
input  fifo_px_GND;
input  SCLK_c;
input  stonyman_0_writeEnable;
output fifo_px_0_FULL;

    wire OR2_2_Y, m15_i_0_0, DFN1C0_AFULL_RNO_1_net_1, AO1C_9_Y, 
        AO1C_6_Y, AO1C_1_Y, m15_i_a4_1_0, XNOR2_12_Y, XNOR2_31_Y, 
        XNOR2_24_Y, m15_i_o4_0_0, AO1C_4_Y, AO1C_5_Y, AO1C_8_Y, 
        DFN1C0_AFULL_RNO_2_net_1, XNOR2_29_Y, AND2_93_Y, AO1_18_Y, 
        AND2_97_Y, \WBINNXTSHIFT[8] , INV_6_Y, AO1_5_Y, AND2_60_Y, 
        AO1_14_Y, AO1_1_Y, AO1_46_Y, XOR2_51_Y, AO1_38_Y, AND2_82_Y, 
        AO1_55_Y, AND2_55_Y, AO1_57_Y, AO1_58_Y, XOR2_73_Y, 
        \WBINNXTSHIFT[4] , INV_3_Y, XOR2_8_Y, \WBINNXTSHIFT[11] , 
        INV_11_Y, \WDIFF[11] , XOR2_64_Y, AO1_49_Y, XOR2_28_Y, 
        \WBINNXTSHIFT[6] , INV_4_Y, AO1_16_Y, AND2_75_Y, AND2_47_Y, 
        AO1_4_Y, XOR2_30_Y, AO1_44_Y, XOR2_45_Y, AND2_40_Y, XOR2_75_Y, 
        \WBINNXTSHIFT[10] , INV_8_Y, AND2_62_Y, XOR2_34_Y, AND2_101_Y, 
        AND2_99_Y, XOR2_74_Y, \WBINNXTSHIFT[5] , INV_2_Y, MEMORYWE, 
        NAND2_0_Y, WEP, AND2_43_Y, AO1_56_Y, AO1_21_Y, AND2_79_Y, 
        AO1_42_Y, AO1_8_Y, XOR2_20_Y, AO1_40_Y, XOR2_85_Y, XOR2_100_Y, 
        \WBINNXTSHIFT[7] , INV_9_Y, AO1_39_Y, AND2_20_Y, AO1_51_Y, 
        AND2_22_Y, AND2_52_Y, AO1_24_Y, XOR2_57_Y, AND2_9_Y, AO1_32_Y, 
        AO1_10_Y, XOR2_48_Y, AND2_76_Y, AND2_34_Y, XOR2_7_Y, AND2_57_Y, 
        \MEM_WADDR[0] , \WDIFF[9] , XOR2_89_Y, XOR2_39_Y, AND2_74_Y, 
        AO1_59_Y, AO1_35_Y, \WDIFF[8] , XOR2_25_Y, AO1_30_Y, XOR2_31_Y, 
        AND2_44_Y, XOR2_77_Y, AO1_12_Y, \WBINNXTSHIFT[9] , XOR2_88_Y, 
        XOR2_96_Y, AO1_36_Y, AND2_54_Y, AND2_90_Y, \WDIFF[10] , 
        XOR2_42_Y, INV_5_Y, AND2_81_Y, \WDIFF[13] , XOR2_69_Y, 
        AND2_35_Y, AO1_27_Y, AO1_15_Y, XOR2_78_Y, AND2_32_Y, XOR2_22_Y, 
        AND2_10_Y, \WDIFF[12] , XOR2_82_Y, XOR2_55_Y, XOR3_5_Y, 
        \RGRYSYNC[11] , \RGRYSYNC[10] , \RGRYSYNC[9] , \RGRYSYNC[8] , 
        WRITE_RESET_P, DFN1C0_9_Q, \WBINSYNC[11] , \WGRYSYNC[13] , 
        \WGRYSYNC[12] , \WGRYSYNC[11] , MX2_82_Y, RAM4K9_5_DOUTB0, 
        RAM4K9_11_DOUTB0, DFN1E1C0_1_Q, XOR3_0_Y, AND3_6_Y, XNOR2_14_Y, 
        XNOR2_17_Y, XNOR2_6_Y, XOR2_93_Y, AND2_25_Y, \MEM_WADDR[6] , 
        \WDIFF[5] , XOR2_6_Y, \RGRYSYNC[4] , DFN1C0_18_Q, OR2_5_Y, 
        \MEM_RADDR[10] , \MEM_RADDR[9] , DFN1C0_23_Q, \RGRY[3] , 
        \RGRY[9] , READ_RESET_P, XOR2_66_Y, \WBINNXTSHIFT[13] , 
        INV_13_Y, INV_0_Y, NOR2A_1_Y, XNOR3_41_Y, \RGRYSYNC[5] , 
        \RGRYSYNC[3] , AND2_84_Y, XOR2_14_Y, XOR2_63_Y, \MEM_RADDR[8] , 
        \RBINSYNC[2] , \MEM_WADDR[9] , OR2A_10_Y, XNOR3_40_Y, 
        \WGRYSYNC[10] , \WGRYSYNC[9] , \WGRYSYNC[8] , XOR2_91_Y, 
        \MEM_RADDR[7] , \MEM_WADDR[5] , EMPTYINT, AND3_3_Y, XNOR2_25_Y, 
        AND3_7_Y, XNOR2_5_Y, XNOR2_26_Y, AND2_61_Y, AND2_67_Y, 
        \WBINSYNC[8] , XOR3_8_Y, XNOR3_50_Y, \QXI[0] , DVLDI, AO1C_7_Y, 
        \MEM_WADDR[2] , \WBINNXTSHIFT[2] , XOR2_44_Y, XOR2_79_Y, 
        INV_10_Y, \WBINNXTSHIFT[0] , \WBINSYNC[9] , XNOR3_29_Y, 
        \WDIFF[7] , \WGRY[4] , XOR2_84_Y, XNOR3_0_Y, \RGRYSYNC[7] , 
        \RGRYSYNC[6] , XNOR2_11_Y, \RBINSYNC[5] , DFN1C0_0_Q, 
        AND2_98_Y, \MEM_RADDR[2] , AND2_8_Y, \MEM_RADDR[4] , AND3_5_Y, 
        AND3_9_Y, AND3_0_Y, AND3_1_Y, XOR2_11_Y, \MEM_WADDR[7] , 
        OR2A_15_Y, \WDIFF[2] , XNOR2_10_Y, \RBINNXTSHIFT[3] , 
        \WBINSYNC[5] , \WBINNXTSHIFT[3] , INV_7_Y, \MEM_RADDR[6] , 
        \RBINNXTSHIFT[6] , \WGRY[7] , XOR2_12_Y, AO1C_3_Y, OR2A_1_Y, 
        \WGRY[6] , XOR2_9_Y, AO1_50_Y, XOR2_37_Y, AND2_29_Y, 
        AND2_100_Y, DFN1E1C0_0_Q, OR2A_16_Y, DFN1C0_20_Q, XOR3_7_Y, 
        XNOR3_14_Y, XOR2_1_Y, \RBINNXTSHIFT[5] , OR2_10_Y, OR2_4_Y, 
        MEMWENEG, \MEM_RADDR[1] , \RBINNXTSHIFT[1] , OR2A_14_Y, 
        \WGRYSYNC[3] , DFN1C0_10_Q, DFN1C0_17_Q, XOR2_38_Y, 
        \WBINNXTSHIFT[12] , XOR2_17_Y, AO1_48_Y, XOR2_70_Y, XNOR3_19_Y, 
        XOR2_65_Y, DFN1C0_19_Q, \RGRY[10] , RAM4K9_12_DOUTA0, 
        RAM4K9_12_DOUTA1, RAM4K9_12_DOUTA2, RAM4K9_12_DOUTA3, 
        RAM4K9_12_DOUTA4, RAM4K9_12_DOUTA5, RAM4K9_12_DOUTA6, 
        RAM4K9_12_DOUTA7, RAM4K9_12_DOUTA8, RAM4K9_12_DOUTB0, 
        RAM4K9_12_DOUTB1, RAM4K9_12_DOUTB2, RAM4K9_12_DOUTB3, 
        RAM4K9_12_DOUTB4, RAM4K9_12_DOUTB5, RAM4K9_12_DOUTB6, 
        RAM4K9_12_DOUTB7, RAM4K9_12_DOUTB8, \MEM_WADDR[1] , 
        \MEM_WADDR[3] , \MEM_WADDR[4] , \MEM_WADDR[8] , 
        \MEM_WADDR[10] , \MEM_RADDR[0] , \MEM_RADDR[3] , 
        \MEM_RADDR[5] , OR2_7_Y, OR2_9_Y, \RGRY[2] , XOR2_101_Y, 
        XNOR3_4_Y, DFN1C0_6_Q, XNOR2_22_Y, \RBINSYNC[10] , XOR2_86_Y, 
        \RBINSYNC[7] , XNOR3_9_Y, XOR2_99_Y, \RBINNXTSHIFT[10] , 
        \RBINNXTSHIFT[11] , MEMORYRE, NAND2_1_Y, XNOR3_33_Y, 
        \WBINSYNC[4] , XNOR3_48_Y, XNOR3_7_Y, XOR2_16_Y, DFN1C0_26_Q, 
        \RBINSYNC[6] , AO1_31_Y, \WGRY[10] , XOR2_2_Y, INV_1_Y, 
        \WGRYSYNC[4] , OR2_3_Y, MEMRENEG, \WDIFF[3] , XOR2_59_Y, 
        \WGRYSYNC[7] , \WGRYSYNC[6] , \WGRYSYNC[5] , OR2_6_Y, OR2A_0_Y, 
        OR2_0_Y, OR2A_17_Y, AND3_2_Y, XNOR2_7_Y, XNOR2_3_Y, XNOR2_15_Y, 
        \RGRYSYNC[1] , DFN1C0_13_Q, XNOR2_1_Y, \RBINSYNC[1] , 
        XOR2_29_Y, AO1_25_Y, \MEM_WADDR[12] , \MEM_WADDR[11] , 
        MX2_85_Y, READDOMAIN_WMSB, AND2_42_Y, DFN1C0_3_Q, NOR2A_0_Y, 
        XNOR3_11_Y, AO1_26_Y, XOR2_5_Y, AND2_37_Y, AND2_86_Y, 
        AND2_89_Y, \RGRY[4] , XOR2_92_Y, XNOR2_18_Y, \RBINSYNC[4] , 
        XNOR3_10_Y, \RBINNXTSHIFT[7] , AO1_23_Y, DFN1C0_11_Q, 
        \WGRY[5] , XNOR2_23_Y, \WDIFF[6] , AO1_45_Y, XOR2_49_Y, 
        AND2_14_Y, AND2_21_Y, XOR3_1_Y, \RGRY[7] , XOR2_23_Y, 
        XNOR3_23_Y, XNOR3_35_Y, \RGRY[6] , XOR2_98_Y, OR3_0_Y, 
        DFN1C0_4_Q, \WGRY[3] , XOR2_21_Y, XOR2_81_Y, XOR2_47_Y, 
        XNOR3_51_Y, XNOR2_30_Y, \RBINNXTSHIFT[4] , \WBINSYNC[6] , 
        XNOR3_36_Y, XOR2_95_Y, \RBINSYNC[9] , AND2_13_Y, INV_12_Y, 
        AO1_37_Y, \RBINSYNC[0] , XNOR3_39_Y, AO1C_11_Y, \RGRY[0] , 
        XOR2_4_Y, NAND3A_3_Y, \WDIFF[1] , \RBINNXTSHIFT[9] , XOR2_56_Y, 
        AO1C_10_Y, \WDIFF[4] , XOR2_15_Y, \RBINNXTSHIFT[2] , XOR2_94_Y, 
        XOR3_4_Y, XOR2_54_Y, NAND2_2_Y, \RBINNXTSHIFT[8] , 
        \WBINSYNC[10] , XOR2_80_Y, XOR2_52_Y, AND2_87_Y, 
        \RBINNXTSHIFT[0] , NAND2_3_Y, XNOR3_1_Y, \WBINSYNC[12] , 
        NOR3A_0_Y, OR2A_6_Y, AO1C_2_Y, DFN1C0_7_Q, \WGRY[12] , 
        DFN1C0_8_Q, \WGRY[2] , XNOR3_26_Y, \RGRY[11] , NOR2A_2_Y, 
        XOR2_87_Y, XNOR3_43_Y, XNOR3_34_Y, DFN1C0_14_Q, XOR2_68_Y, 
        \WBINSYNC[3] , XOR2_83_Y, \MEM_RADDR[11] , AND2_95_Y, AO1_2_Y, 
        AO1_17_Y, NAND3A_1_Y, NOR3A_1_Y, OR2A_9_Y, XOR2_19_Y, XOR2_3_Y, 
        \MEM_WADDR[13] , XNOR3_15_Y, AO1C_0_Y, XOR2_13_Y, XNOR3_5_Y, 
        OR2A_5_Y, DFN1C0_15_Q, XNOR3_42_Y, \RGRY[5] , \RBINSYNC[3] , 
        AND2_88_Y, \WBINNXTSHIFT[1] , AND2A_0_Y, OR2A_8_Y, AND3_12_Y, 
        XNOR2_16_Y, XOR2_0_Y, RAM4K9_11_DOUTA0, RAM4K9_11_DOUTA1, 
        RAM4K9_11_DOUTA2, RAM4K9_11_DOUTA3, RAM4K9_11_DOUTA4, 
        RAM4K9_11_DOUTA5, RAM4K9_11_DOUTA6, RAM4K9_11_DOUTA7, 
        RAM4K9_11_DOUTA8, RAM4K9_11_DOUTB1, RAM4K9_11_DOUTB2, 
        RAM4K9_11_DOUTB3, RAM4K9_11_DOUTB4, RAM4K9_11_DOUTB5, 
        RAM4K9_11_DOUTB6, RAM4K9_11_DOUTB7, RAM4K9_11_DOUTB8, 
        AND2_78_Y, XOR2_27_Y, AND2_12_Y, XNOR3_8_Y, XNOR3_25_Y, 
        DFN1C0_21_Q, XOR2_102_Y, XOR2_53_Y, AO1_11_Y, XNOR3_46_Y, 
        XNOR3_20_Y, XOR2_36_Y, \WDIFF[0] , XOR2_18_Y, AO1_20_Y, 
        AO1_41_Y, \RBINSYNC[8] , XNOR3_37_Y, XNOR2_9_Y, XOR2_10_Y, 
        AND2_58_Y, XOR2_41_Y, XOR2_32_Y, NAND3A_0_Y, XOR2_58_Y, 
        OR2_1_Y, XNOR2_8_Y, \WBINSYNC[7] , \RBINSYNC[11] , AND2_63_Y, 
        OR2A_2_Y, \RGRY[8] , XOR2_24_Y, AO1_34_Y, AO1_52_Y, 
        DFN1C0_27_Q, \WGRY[9] , AND2_49_Y, AO1_53_Y, AND2_85_Y, 
        AO1_7_Y, \RGRYSYNC[2] , \RGRYSYNC[0] , XNOR2_13_Y, AND2_28_Y, 
        NAND3A_2_Y, OR2A_12_Y, DFN1C0_25_Q, DFN1C0_24_Q, XOR2_35_Y, 
        DFN1C0_5_Q, XNOR3_49_Y, XNOR3_45_Y, XNOR3_13_Y, AND3_10_Y, 
        DFN1C0_1_Q, XOR2_46_Y, AND2_96_Y, AO1_54_Y, XNOR3_12_Y, 
        FULLINT, \WBINSYNC[2] , AO1_3_Y, \WGRY[13] , XOR2_71_Y, 
        AO1_47_Y, XOR3_2_Y, XNOR3_27_Y, XNOR2_32_Y, AND2_36_Y, 
        XOR2_72_Y, AND3_11_Y, XOR2_33_Y, RAM4K9_5_DOUTA0, 
        RAM4K9_5_DOUTA1, RAM4K9_5_DOUTA2, RAM4K9_5_DOUTA3, 
        RAM4K9_5_DOUTA4, RAM4K9_5_DOUTA5, RAM4K9_5_DOUTA6, 
        RAM4K9_5_DOUTA7, RAM4K9_5_DOUTA8, RAM4K9_5_DOUTB1, 
        RAM4K9_5_DOUTB2, RAM4K9_5_DOUTB3, RAM4K9_5_DOUTB4, 
        RAM4K9_5_DOUTB5, RAM4K9_5_DOUTB6, RAM4K9_5_DOUTB7, 
        RAM4K9_5_DOUTB8, AND2_64_Y, XNOR2_21_Y, XNOR2_27_Y, XNOR2_33_Y, 
        \WGRY[8] , DFN1C0_12_Q, XNOR3_21_Y, XNOR2_20_Y, AND3_8_Y, 
        XOR3_3_Y, XNOR2_0_Y, AND2_4_Y, AO1_43_Y, DFN1C0_22_Q, 
        XNOR3_3_Y, \RGRY[1] , RAM4K9_4_DOUTB0, XOR2_76_Y, 
        \WGRYSYNC[2] , OR2A_13_Y, AND2_53_Y, XOR2_61_Y, AO1_22_Y, 
        \WGRY[11] , XNOR3_6_Y, XNOR2_2_Y, XNOR2_19_Y, XNOR3_16_Y, 
        AO1_13_Y, XOR2_40_Y, XNOR3_2_Y, OR2_8_Y, XNOR2_4_Y, AND2_18_Y, 
        XNOR2_28_Y, XNOR3_28_Y, RAM4K9_4_DOUTA0, RAM4K9_4_DOUTA1, 
        RAM4K9_4_DOUTA2, RAM4K9_4_DOUTA3, RAM4K9_4_DOUTA4, 
        RAM4K9_4_DOUTA5, RAM4K9_4_DOUTA6, RAM4K9_4_DOUTA7, 
        RAM4K9_4_DOUTA8, RAM4K9_4_DOUTB1, RAM4K9_4_DOUTB2, 
        RAM4K9_4_DOUTB3, RAM4K9_4_DOUTB4, RAM4K9_4_DOUTB5, 
        RAM4K9_4_DOUTB6, RAM4K9_4_DOUTB7, RAM4K9_4_DOUTB8, GND, VCC, 
        GND_0, VCC_0;
    
    XNOR3 XNOR3_14 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_14_Y));
    INV INV_0 (.A(NOR2A_1_Y), .Y(INV_0_Y));
    AO1 AO1_52 (.A(XOR2_102_Y), .B(AO1_48_Y), .C(AND2_85_Y), .Y(
        AO1_52_Y));
    XNOR3 \XNOR3_RBINSYNC[1]  (.A(XNOR3_0_Y), .B(XNOR3_42_Y), .C(
        XNOR3_6_Y), .Y(\RBINSYNC[1] ));
    XNOR3 XNOR3_5 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_5_Y));
    XOR2 XOR2_102 (.A(\MEM_WADDR[12] ), .B(fifo_px_GND), .Y(XOR2_102_Y)
        );
    XNOR3 XNOR3_45 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_45_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[4]  (.D(DFN1C0_18_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[4] ));
    AND3 AND3_6 (.A(XNOR2_14_Y), .B(XNOR2_17_Y), .C(XNOR2_6_Y), .Y(
        AND3_6_Y));
    XOR2 XOR2_30_RNIFVK81 (.A(XOR2_30_Y), .B(AO1_55_Y), .Y(
        \WBINNXTSHIFT[6] ));
    AO1 AND2_76_RNI47Q91 (.A(XOR2_48_Y), .B(AO1_42_Y), .C(AND2_76_Y), 
        .Y(AO1_10_Y));
    AO1 AND2_47_RNIP117T (.A(XOR2_8_Y), .B(AO1_49_Y), .C(AND2_75_Y), 
        .Y(AO1_16_Y));
    XOR2 XOR2_82 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(XOR2_82_Y));
    XNOR2 XNOR2_13 (.A(\WDIFF[8] ), .B(fifo_px_GND), .Y(XNOR2_13_Y));
    AO1 AO1_11 (.A(AND2_96_Y), .B(AO1_41_Y), .C(AO1_54_Y), .Y(AO1_11_Y)
        );
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_47_Y), .B(AO1_59_Y), .Y(
        \WBINNXTSHIFT[2] ));
    XNOR3 XNOR3_34 (.A(\RGRYSYNC[2] ), .B(XOR3_1_Y), .C(XNOR3_21_Y), 
        .Y(XNOR3_34_Y));
    XNOR3 XNOR3_25 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_25_Y));
    XNOR2 XNOR2_9 (.A(\RBINSYNC[3] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_9_Y));
    DFN1C0 \DFN1C0_RGRY[9]  (.D(XOR2_66_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[9] ));
    DFN1C0 DFN1C0_FULL (.D(FULLINT), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(fifo_px_0_FULL));
    AO1C AO1C_3 (.A(\WDIFF[6] ), .B(fifo_px_GND), .C(OR2A_14_Y), .Y(
        AO1C_3_Y));
    DFN1C0 DFN1C0_17 (.D(fifo_px_VCC), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(DFN1C0_17_Q));
    AO1C AO1C_8 (.A(\WDIFF[9] ), .B(fifo_px_GND), .C(AO1C_11_Y), .Y(
        AO1C_8_Y));
    XOR2 XOR2_19 (.A(\WBINNXTSHIFT[8] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XOR2_19_Y));
    XOR2 XOR2_23 (.A(\RBINNXTSHIFT[7] ), .B(\RBINNXTSHIFT[8] ), .Y(
        XOR2_23_Y));
    XOR2 XOR2_1 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_1_Y));
    AO1 AO1_31 (.A(XOR2_7_Y), .B(AO1_15_Y), .C(AND2_54_Y), .Y(AO1_31_Y)
        );
    XNOR3 XNOR3_13 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(XNOR3_1_Y)
        , .Y(XNOR3_13_Y));
    XNOR2 XNOR2_33 (.A(\RBINSYNC[8] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XNOR2_33_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[3]  (.D(DFN1C0_23_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[3] ));
    NAND2 NAND2_2 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(
        NAND2_2_Y));
    NOR3C DFN1C0_AFULL_RNO_3 (.A(XNOR2_12_Y), .B(XNOR2_31_Y), .C(
        XNOR2_24_Y), .Y(m15_i_a4_1_0));
    INV INV_1 (.A(\RBINSYNC[10] ), .Y(INV_1_Y));
    XOR2 XOR2_47 (.A(\MEM_WADDR[2] ), .B(fifo_px_GND), .Y(XOR2_47_Y));
    XOR2 XOR2_38 (.A(\MEM_RADDR[9] ), .B(fifo_px_GND), .Y(XOR2_38_Y));
    RAM4K9 RAM4K9_11 (.ADDRA11(fifo_px_GND), .ADDRA10(\MEM_WADDR[10] ), 
        .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(fifo_px_GND)
        , .ADDRB10(fifo_px_GND), .ADDRB9(fifo_px_GND), .ADDRB8(
        \MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_GND), .DINA7(fifo_px_GND), 
        .DINA6(fifo_px_GND), .DINA5(fifo_px_GND), .DINA4(fifo_px_GND), 
        .DINA3(fifo_px_GND), .DINA2(fifo_px_GND), .DINA1(
        stonyman_0_px0_out[1]), .DINA0(stonyman_0_px0_out[0]), .DINB8(
        fifo_px_GND), .DINB7(fifo_px_GND), .DINB6(fifo_px_GND), .DINB5(
        fifo_px_GND), .DINB4(fifo_px_GND), .DINB3(fifo_px_GND), .DINB2(
        fifo_px_GND), .DINB1(fifo_px_GND), .DINB0(fifo_px_GND), 
        .WIDTHA0(fifo_px_VCC), .WIDTHA1(fifo_px_GND), .WIDTHB0(
        fifo_px_VCC), .WIDTHB1(fifo_px_VCC), .PIPEA(fifo_px_GND), 
        .PIPEB(fifo_px_GND), .WMODEA(fifo_px_GND), .WMODEB(fifo_px_GND)
        , .BLKA(OR2_0_Y), .BLKB(OR2_6_Y), .WENA(fifo_px_GND), .WENB(
        fifo_px_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        WRITE_RESET_P), .DOUTA8(RAM4K9_11_DOUTA8), .DOUTA7(
        RAM4K9_11_DOUTA7), .DOUTA6(RAM4K9_11_DOUTA6), .DOUTA5(
        RAM4K9_11_DOUTA5), .DOUTA4(RAM4K9_11_DOUTA4), .DOUTA3(
        RAM4K9_11_DOUTA3), .DOUTA2(RAM4K9_11_DOUTA2), .DOUTA1(
        RAM4K9_11_DOUTA1), .DOUTA0(RAM4K9_11_DOUTA0), .DOUTB8(
        RAM4K9_11_DOUTB8), .DOUTB7(RAM4K9_11_DOUTB7), .DOUTB6(
        RAM4K9_11_DOUTB6), .DOUTB5(RAM4K9_11_DOUTB5), .DOUTB4(
        RAM4K9_11_DOUTB4), .DOUTB3(RAM4K9_11_DOUTB3), .DOUTB2(
        RAM4K9_11_DOUTB2), .DOUTB1(RAM4K9_11_DOUTB1), .DOUTB0(
        RAM4K9_11_DOUTB0));
    NAND2 NAND2_3 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(
        NAND2_3_Y));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    BUFF BUFF_READDOMAIN_WMSB (.A(\WGRYSYNC[13] ), .Y(READDOMAIN_WMSB));
    AO1 AO1_7 (.A(XOR2_11_Y), .B(AND2_82_Y), .C(AND2_58_Y), .Y(AO1_7_Y)
        );
    AO1C AO1C_1 (.A(\WDIFF[13] ), .B(fifo_px_GND), .C(AO1C_10_Y), .Y(
        AO1C_1_Y));
    DFN1C0 DFN1C0_9 (.D(\RGRY[8] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_9_Q));
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_9_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[6] ));
    AND2 AND2_18 (.A(XOR2_65_Y), .B(XOR2_37_Y), .Y(AND2_18_Y));
    XNOR3 XNOR3_33 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_33_Y));
    OR2A OR2A_12 (.A(fifo_px_GND), .B(\WDIFF[5] ), .Y(OR2A_12_Y));
    INV INV_7 (.A(\RBINSYNC[1] ), .Y(INV_7_Y));
    DFN1C0 DFN1C0_WRITE_RESET_P (.D(DFN1C0_17_Q), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(WRITE_RESET_P));
    AO1 AO1_25 (.A(XOR2_95_Y), .B(AO1_59_Y), .C(AND2_78_Y), .Y(
        AO1_25_Y));
    AND2 AND2_84 (.A(XOR2_45_Y), .B(XOR2_14_Y), .Y(AND2_84_Y));
    DFN1C0 \DFN1C0_WGRY[13]  (.D(XOR2_71_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[13] ));
    DFN1C0 DFN1C0_26 (.D(\WGRY[8] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_26_Q));
    AND2 AND2_78 (.A(\MEM_WADDR[2] ), .B(fifo_px_GND), .Y(AND2_78_Y));
    AO1C AO1C_7 (.A(\WDIFF[10] ), .B(fifo_px_GND), .C(OR2A_1_Y), .Y(
        AO1C_7_Y));
    XOR2 \XOR2_WBINSYNC[12]  (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), 
        .Y(\WBINSYNC[12] ));
    XOR2 XOR2_45 (.A(\MEM_WADDR[6] ), .B(fifo_px_GND), .Y(XOR2_45_Y));
    AND2 INV_5_RNILP5M1 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(
        AND2_101_Y));
    XOR2 \XOR2_RBINNXTSHIFT[9]  (.A(XOR2_38_Y), .B(AO1_2_Y), .Y(
        \RBINNXTSHIFT[9] ));
    DFN1C0 \DFN1C0_RGRYSYNC[7]  (.D(DFN1C0_24_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[7] ));
    DFN1C0 DFN1C0_11 (.D(\WGRY[5] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_11_Q));
    DFN1C0 DFN1C0_0 (.D(\RGRY[11] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_0_Q));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[0] ));
    XNOR3 \XNOR3_RBINSYNC[3]  (.A(XNOR3_33_Y), .B(XNOR3_12_Y), .C(
        XNOR3_28_Y), .Y(\RBINSYNC[3] ));
    XNOR2 XNOR2_21 (.A(\RBINSYNC[9] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XNOR2_21_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[1] ));
    AO1 AO1_8 (.A(XOR2_93_Y), .B(AND2_76_Y), .C(AND2_25_Y), .Y(AO1_8_Y)
        );
    AND2 AND2_49 (.A(XOR2_81_Y), .B(XOR2_10_Y), .Y(AND2_49_Y));
    DFN1C0 DFN1C0_20 (.D(\WGRY[4] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_20_Q));
    AND2 AND2_10 (.A(\MEM_WADDR[1] ), .B(fifo_px_GND), .Y(AND2_10_Y));
    XOR2 XOR2_92 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_92_Y));
    XOR2 XOR2_20 (.A(\MEM_WADDR[4] ), .B(fifo_px_GND), .Y(XOR2_20_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[6]  (.D(DFN1C0_14_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[6] ));
    XOR2 XOR2_63 (.A(\MEM_RADDR[8] ), .B(fifo_px_GND), .Y(XOR2_63_Y));
    AO1C AO1C_10 (.A(fifo_px_GND), .B(\WDIFF[13] ), .C(NOR2A_2_Y), .Y(
        AO1C_10_Y));
    XOR2 XOR2_87 (.A(\RBINNXTSHIFT[8] ), .B(\RBINNXTSHIFT[9] ), .Y(
        XOR2_87_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_72_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[5] ));
    AND2 AND2_12 (.A(\MEM_WADDR[5] ), .B(fifo_px_GND), .Y(AND2_12_Y));
    XOR2 XOR2_52 (.A(\MEM_RADDR[1] ), .B(fifo_px_GND), .Y(XOR2_52_Y));
    XNOR3 XNOR3_40 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_40_Y));
    AO1C AO1C_4 (.A(fifo_px_GND), .B(\WDIFF[9] ), .C(AO1C_3_Y), .Y(
        AO1C_4_Y));
    AO1 AND2_54_RNI4RRA2 (.A(XOR2_73_Y), .B(AND2_54_Y), .C(AND2_90_Y), 
        .Y(AO1_36_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[4] ));
    AO1 AO1_50 (.A(XOR2_37_Y), .B(AND2_29_Y), .C(AND2_100_Y), .Y(
        AO1_50_Y));
    AO1 AO1_15 (.A(XOR2_80_Y), .B(OR3_0_Y), .C(AND2_42_Y), .Y(AO1_15_Y)
        );
    AND2 AND2_61 (.A(AND2_79_Y), .B(AND2_67_Y), .Y(AND2_61_Y));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_12_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[7] ));
    DFN1C0 DFN1C0_READ_RESET_P (.D(DFN1C0_6_Q), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(READ_RESET_P));
    DFN1C0 \DFN1C0_MEM_WADDR[12]  (.D(\WBINNXTSHIFT[12] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[12] ));
    AND2 AND2_EMPTYINT (.A(AND3_3_Y), .B(XNOR2_25_Y), .Y(EMPTYINT));
    XOR2 XOR2_85 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(XOR2_85_Y));
    XOR2 XOR2_31_RNIS8AJ1 (.A(XOR2_31_Y), .B(AO1_38_Y), .Y(
        \WBINNXTSHIFT[10] ));
    XOR2 XOR2_24 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(XOR2_24_Y));
    AND2 AND2_89 (.A(\MEM_WADDR[3] ), .B(fifo_px_GND), .Y(AND2_89_Y));
    XNOR3 XNOR3_20 (.A(\WGRYSYNC[4] ), .B(\WGRYSYNC[3] ), .C(XOR3_3_Y), 
        .Y(XNOR3_20_Y));
    XOR2 XOR2_21 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_21_Y));
    MX2 \MX2_QXI[0]  (.A(MX2_82_Y), .B(MX2_85_Y), .S(DFN1E1C0_0_Q), .Y(
        \QXI[0] ));
    XOR2 XOR2_20_RNID82R (.A(XOR2_20_Y), .B(AO1_57_Y), .Y(
        \WBINNXTSHIFT[4] ));
    AO1 AO1_35 (.A(XOR2_41_Y), .B(AND2_78_Y), .C(AND2_89_Y), .Y(
        AO1_35_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[11]  (.D(DFN1C0_22_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[11] ));
    XOR2 \XOR2_WDIFF[5]  (.A(XOR2_6_Y), .B(AO1_56_Y), .Y(\WDIFF[5] ));
    DFN1C0 \DFN1C0_WGRYSYNC[12]  (.D(DFN1C0_7_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[12] ));
    AND3 AND3_11 (.A(AND3_5_Y), .B(XNOR2_21_Y), .C(XNOR2_22_Y), .Y(
        AND3_11_Y));
    OR2 OR2_8 (.A(NAND2_3_Y), .B(MEMWENEG), .Y(OR2_8_Y));
    AO1 INV_9_RNIGVRIC (.A(XOR2_100_Y), .B(AO1_32_Y), .C(AND2_9_Y), .Y(
        AO1_30_Y));
    INV INV_11 (.A(\RBINSYNC[9] ), .Y(INV_11_Y));
    XOR2 \XOR2_RBINNXTSHIFT[8]  (.A(XOR2_63_Y), .B(AO1_17_Y), .Y(
        \RBINNXTSHIFT[8] ));
    XNOR3 XNOR3_9 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_9_Y));
    XNOR3 XNOR3_8 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_8_Y));
    XNOR2 XNOR2_28 (.A(\WDIFF[7] ), .B(fifo_px_GND), .Y(XNOR2_28_Y));
    AO1 AO1_53 (.A(XOR2_10_Y), .B(AND2_98_Y), .C(AND2_63_Y), .Y(
        AO1_53_Y));
    XOR2 XOR2_16 (.A(\MEM_RADDR[6] ), .B(fifo_px_GND), .Y(XOR2_16_Y));
    XNOR3 XNOR3_50 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_50_Y));
    DFN1C0 DFN1C0_4 (.D(\RGRY[5] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_4_Q));
    AND2 XOR2_34_RNI2J172 (.A(XOR2_8_Y), .B(XOR2_34_Y), .Y(AND2_62_Y));
    OR2 OR2_4 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(OR2_4_Y));
    OR2A OR2A_17 (.A(\MEM_WADDR[11] ), .B(\MEM_WADDR[12] ), .Y(
        OR2A_17_Y));
    MX2 MX2_82 (.A(RAM4K9_5_DOUTB0), .B(RAM4K9_11_DOUTB0), .S(
        DFN1E1C0_1_Q), .Y(MX2_82_Y));
    DFN1C0 DFN1C0_14 (.D(\RGRY[6] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_14_Q));
    XNOR2 \XNOR2_RBINSYNC[4]  (.A(XNOR3_45_Y), .B(XNOR3_13_Y), .Y(
        \RBINSYNC[4] ));
    XOR2 INV_9_RNI6NVF (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(
        XOR2_100_Y));
    AO1 AND2_81_RNI5SKV9 (.A(AND2_62_Y), .B(AO1_4_Y), .C(AO1_39_Y), .Y(
        AO1_1_Y));
    AND2 NAND2_0_RNI6NA5 (.A(NAND2_0_Y), .B(WEP), .Y(MEMORYWE));
    XOR2 INV_2_RNIGEJ81 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(
        XOR2_74_Y));
    OR2 OR2_9 (.A(OR2A_5_Y), .B(MEMRENEG), .Y(OR2_9_Y));
    AND3 AND3_3 (.A(AND3_7_Y), .B(XNOR2_5_Y), .C(XNOR2_26_Y), .Y(
        AND3_3_Y));
    INV INV_5 (.A(\RBINSYNC[7] ), .Y(INV_5_Y));
    OR2 OR2_0 (.A(OR2A_17_Y), .B(MEMWENEG), .Y(OR2_0_Y));
    OR2A OR2A_15 (.A(\WDIFF[2] ), .B(fifo_px_GND), .Y(OR2A_15_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_86 (.A(\MEM_RADDR[7] ), .B(fifo_px_GND), .Y(AND2_86_Y));
    XOR2 XOR2_64 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(XOR2_64_Y));
    AND3 AND3_0 (.A(XNOR2_2_Y), .B(XNOR2_1_Y), .C(XNOR2_19_Y), .Y(
        AND3_0_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[11]  (.D(DFN1C0_0_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[11] ));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[2] ));
    XOR2 XOR2_61 (.A(\WBINNXTSHIFT[9] ), .B(\WBINNXTSHIFT[10] ), .Y(
        XOR2_61_Y));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_101_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[2] ));
    XOR2 XOR2_33 (.A(\RBINSYNC[11] ), .B(\WBINNXTSHIFT[13] ), .Y(
        XOR2_33_Y));
    INV INV_3 (.A(\RBINSYNC[2] ), .Y(INV_3_Y));
    XNOR2 XNOR2_2 (.A(\RBINSYNC[0] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_2_Y));
    XOR2 XOR2_49 (.A(\MEM_RADDR[1] ), .B(fifo_px_GND), .Y(XOR2_49_Y));
    XNOR2 XNOR2_19 (.A(\RBINSYNC[2] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_19_Y));
    XOR2 XOR2_95 (.A(\MEM_WADDR[2] ), .B(fifo_px_GND), .Y(XOR2_95_Y));
    XOR2 XOR2_4 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_4_Y));
    XOR2 \XOR2_WDIFF[0]  (.A(\WBINNXTSHIFT[0] ), .B(fifo_px_GND), .Y(
        \WDIFF[0] ));
    AND2 INV_8_RNIF43T1_0 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(
        AND2_99_Y));
    AND3 AND3_1 (.A(XNOR2_9_Y), .B(XNOR2_18_Y), .C(XNOR2_11_Y), .Y(
        AND3_1_Y));
    XOR2 XOR2_55 (.A(\MEM_WADDR[7] ), .B(fifo_px_GND), .Y(XOR2_55_Y));
    AND3 AND3_10 (.A(XNOR2_10_Y), .B(XNOR2_30_Y), .C(XNOR2_8_Y), .Y(
        AND3_10_Y));
    XOR2 XOR2_72 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_72_Y));
    XNOR2 XNOR2_0 (.A(\WDIFF[5] ), .B(fifo_px_GND), .Y(XNOR2_0_Y));
    AO1C AO1C_5 (.A(fifo_px_GND), .B(\WDIFF[8] ), .C(OR2A_13_Y), .Y(
        AO1C_5_Y));
    GND GND_i (.Y(GND));
    DFN1C0 \DFN1C0_MEM_WADDR[10]  (.D(\WBINNXTSHIFT[10] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[10] ));
    DFN1C0 DFN1C0_15 (.D(\RGRY[0] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_15_Q));
    AO1 AND2_35_RNILS161 (.A(AND2_35_Y), .B(AO1_57_Y), .C(AO1_27_Y), 
        .Y(AO1_42_Y));
    AO1 AO1_34 (.A(XOR2_74_Y), .B(AO1_56_Y), .C(AND2_22_Y), .Y(
        AO1_34_Y));
    AND3 AND3_12 (.A(XNOR2_23_Y), .B(XNOR2_28_Y), .C(XNOR2_13_Y), .Y(
        AND3_12_Y));
    XNOR3 XNOR3_42 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_42_Y));
    DFN1C0 DFN1C0_12 (.D(\WGRY[13] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_12_Q));
    XOR2 XOR2_18 (.A(\MEM_WADDR[1] ), .B(fifo_px_GND), .Y(XOR2_18_Y));
    XNOR3 XNOR3_19 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_19_Y));
    OR2 OR2_7 (.A(OR2A_2_Y), .B(MEMWENEG), .Y(OR2_7_Y));
    XOR3 \XOR3_WBINSYNC[11]  (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), 
        .C(\WGRYSYNC[11] ), .Y(\WBINSYNC[11] ));
    VCC VCC_i_0 (.Y(VCC_0));
    DFN1C0 \DFN1C0_RGRY[11]  (.D(XOR2_94_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[11] ));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_35_Y), .B(AO1_41_Y), .Y(
        \RBINNXTSHIFT[4] ));
    XNOR2 XNOR2_25 (.A(\RBINNXTSHIFT[11] ), .B(READDOMAIN_WMSB), .Y(
        XNOR2_25_Y));
    OR2A OR2A_6 (.A(\WDIFF[5] ), .B(fifo_px_GND), .Y(OR2A_6_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[9]  (.D(DFN1C0_27_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[9] ));
    XOR2 XOR2_89 (.A(\WBINNXTSHIFT[9] ), .B(INV_5_Y), .Y(XOR2_89_Y));
    XNOR2 \XNOR2_RBINSYNC[2]  (.A(XNOR3_43_Y), .B(XNOR3_34_Y), .Y(
        \RBINSYNC[2] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_32_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[1] ));
    DFN1C0 \DFN1C0_MEM_WADDR[8]  (.D(\WBINNXTSHIFT[8] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[8] ));
    DFN1C0 \DFN1C0_RGRYSYNC[5]  (.D(DFN1C0_4_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[5] ));
    NAND3A NAND3A_0 (.A(\WDIFF[4] ), .B(fifo_px_GND), .C(OR2A_6_Y), .Y(
        NAND3A_0_Y));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_21_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[3] ));
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_53_Y), .B(AO1_11_Y), .Y(
        \RBINNXTSHIFT[6] ));
    XOR2 XOR2_30 (.A(\MEM_WADDR[6] ), .B(fifo_px_GND), .Y(XOR2_30_Y));
    XNOR3 XNOR3_39 (.A(\RGRYSYNC[2] ), .B(\RGRYSYNC[1] ), .C(
        \RGRYSYNC[0] ), .Y(XNOR3_39_Y));
    AO1 AO1_43 (.A(AND2_64_Y), .B(AO1_54_Y), .C(AO1_26_Y), .Y(AO1_43_Y)
        );
    NOR2A NOR2A_2 (.A(fifo_px_GND), .B(\WDIFF[12] ), .Y(NOR2A_2_Y));
    XOR2 XOR2_88_RNI5UCC1 (.A(XOR2_88_Y), .B(AO1_10_Y), .Y(
        \WBINNXTSHIFT[9] ));
    OR2A OR2A_2 (.A(\MEM_WADDR[12] ), .B(\MEM_WADDR[11] ), .Y(OR2A_2_Y)
        );
    AO1C AO1C_11 (.A(fifo_px_GND), .B(\WDIFF[9] ), .C(NOR2A_0_Y), .Y(
        AO1C_11_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    AND2 AND2_35 (.A(AND2_55_Y), .B(AND2_84_Y), .Y(AND2_35_Y));
    DFN1C0 \DFN1C0_WGRY[11]  (.D(XOR2_68_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[11] ));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[7] ));
    AO1 AND2_74_RNIQHFO (.A(AND2_74_Y), .B(AO1_59_Y), .C(AO1_35_Y), .Y(
        AO1_57_Y));
    RAM4K9 RAM4K9_4 (.ADDRA11(fifo_px_GND), .ADDRA10(\MEM_WADDR[10] ), 
        .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(fifo_px_GND)
        , .ADDRB10(fifo_px_GND), .ADDRB9(fifo_px_GND), .ADDRB8(
        \MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_GND), .DINA7(fifo_px_GND), 
        .DINA6(fifo_px_GND), .DINA5(fifo_px_GND), .DINA4(fifo_px_GND), 
        .DINA3(fifo_px_GND), .DINA2(fifo_px_GND), .DINA1(
        stonyman_0_px0_out[1]), .DINA0(stonyman_0_px0_out[0]), .DINB8(
        fifo_px_GND), .DINB7(fifo_px_GND), .DINB6(fifo_px_GND), .DINB5(
        fifo_px_GND), .DINB4(fifo_px_GND), .DINB3(fifo_px_GND), .DINB2(
        fifo_px_GND), .DINB1(fifo_px_GND), .DINB0(fifo_px_GND), 
        .WIDTHA0(fifo_px_VCC), .WIDTHA1(fifo_px_GND), .WIDTHB0(
        fifo_px_VCC), .WIDTHB1(fifo_px_VCC), .PIPEA(fifo_px_GND), 
        .PIPEB(fifo_px_GND), .WMODEA(fifo_px_GND), .WMODEB(fifo_px_GND)
        , .BLKA(OR2_8_Y), .BLKB(OR2_1_Y), .WENA(fifo_px_GND), .WENB(
        fifo_px_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        WRITE_RESET_P), .DOUTA8(RAM4K9_4_DOUTA8), .DOUTA7(
        RAM4K9_4_DOUTA7), .DOUTA6(RAM4K9_4_DOUTA6), .DOUTA5(
        RAM4K9_4_DOUTA5), .DOUTA4(RAM4K9_4_DOUTA4), .DOUTA3(
        RAM4K9_4_DOUTA3), .DOUTA2(RAM4K9_4_DOUTA2), .DOUTA1(
        RAM4K9_4_DOUTA1), .DOUTA0(RAM4K9_4_DOUTA0), .DOUTB8(
        RAM4K9_4_DOUTB8), .DOUTB7(RAM4K9_4_DOUTB7), .DOUTB6(
        RAM4K9_4_DOUTB6), .DOUTB5(RAM4K9_4_DOUTB5), .DOUTB4(
        RAM4K9_4_DOUTB4), .DOUTB3(RAM4K9_4_DOUTB3), .DOUTB2(
        RAM4K9_4_DOUTB2), .DOUTB1(RAM4K9_4_DOUTB1), .DOUTB0(
        RAM4K9_4_DOUTB0));
    AND2 AND2_29 (.A(\MEM_RADDR[8] ), .B(fifo_px_GND), .Y(AND2_29_Y));
    AND2 INV_2_RNIGEJ81_0 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(
        AND2_22_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[4] ));
    XNOR3 XNOR3_7 (.A(\WGRYSYNC[4] ), .B(XOR3_4_Y), .C(XNOR3_26_Y), .Y(
        XNOR3_7_Y));
    AO1 DFN1C0_AFULL_RNO_2 (.A(AND2_93_Y), .B(AO1_18_Y), .C(
        m15_i_o4_0_0), .Y(DFN1C0_AFULL_RNO_2_net_1));
    XOR2 XOR2_96_RNIDJ2N1 (.A(XOR2_96_Y), .B(AO1_46_Y), .Y(
        \WBINNXTSHIFT[11] ));
    XNOR3 XNOR3_46 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_46_Y));
    XOR2 \XOR2_WBINNXTSHIFT[12]  (.A(XOR2_17_Y), .B(AO1_48_Y), .Y(
        \WBINNXTSHIFT[12] ));
    XOR2 XOR2_34 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(XOR2_34_Y));
    AO1D DFN1C0_AFULL_RNO_4 (.A(AO1C_4_Y), .B(AO1C_5_Y), .C(AO1C_8_Y), 
        .Y(m15_i_o4_0_0));
    XOR2 XOR2_31 (.A(\MEM_WADDR[10] ), .B(fifo_px_GND), .Y(XOR2_31_Y));
    XNOR3 \XNOR3_RBINSYNC[5]  (.A(\RGRYSYNC[5] ), .B(XOR3_7_Y), .C(
        XNOR3_14_Y), .Y(\RBINSYNC[5] ));
    INV WEBUBBLE (.A(stonyman_0_writeEnable), .Y(WEP));
    DFN1C0 \DFN1C0_MEM_WADDR[11]  (.D(\WBINNXTSHIFT[11] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[11] ));
    XNOR3 XNOR3_26 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_26_Y));
    AND2 INV_3_RNIR3R41_0 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(
        AND2_90_Y));
    XNOR2 XNOR2_6 (.A(\RBINNXTSHIFT[8] ), .B(\WBINSYNC[10] ), .Y(
        XNOR2_6_Y));
    AO1 AO1_15_RNI4HSIB (.A(AND2_20_Y), .B(AO1_56_Y), .C(AO1_51_Y), .Y(
        AO1_32_Y));
    AND2 AND2_14 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_14_Y));
    INV INV_4 (.A(\RBINSYNC[4] ), .Y(INV_4_Y));
    XOR2 XOR2_77 (.A(\MEM_WADDR[5] ), .B(fifo_px_GND), .Y(XOR2_77_Y));
    OR2A OR2A_1 (.A(fifo_px_VCC), .B(\WDIFF[11] ), .Y(OR2A_1_Y));
    AND2 AND2_74 (.A(XOR2_95_Y), .B(XOR2_41_Y), .Y(AND2_74_Y));
    AND2 AND2_32 (.A(\MEM_WADDR[4] ), .B(fifo_px_GND), .Y(AND2_32_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[5]  (.D(\RBINNXTSHIFT[5] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[5] ));
    AND3 AND3_8 (.A(XNOR2_20_Y), .B(XNOR2_4_Y), .C(XNOR2_0_Y), .Y(
        AND3_8_Y));
    OR2A OR2A_8 (.A(MEMRENEG), .B(OR2_5_Y), .Y(OR2A_8_Y));
    NAND3A NAND3A_2 (.A(NOR3A_0_Y), .B(OR2A_12_Y), .C(NAND3A_0_Y), .Y(
        NAND3A_2_Y));
    XOR3 XOR3_4 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_4_Y));
    XOR2 \XOR2_RBINSYNC[10]  (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), 
        .Y(\RBINSYNC[10] ));
    XOR2 XOR2_46 (.A(\MEM_RADDR[5] ), .B(fifo_px_GND), .Y(XOR2_46_Y));
    OR2 OR2_6 (.A(OR2A_0_Y), .B(MEMRENEG), .Y(OR2_6_Y));
    DFN1E1C0 DFN1E1C0_0 (.D(\MEM_RADDR[10] ), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .E(OR2A_16_Y), .Q(DFN1E1C0_0_Q));
    XNOR2 XNOR2_11 (.A(\RBINSYNC[5] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XNOR2_11_Y));
    AO1 AO1_2 (.A(XOR2_65_Y), .B(AO1_17_Y), .C(AND2_29_Y), .Y(AO1_2_Y));
    XNOR2 \XNOR2_WBINSYNC[4]  (.A(XNOR3_48_Y), .B(XNOR3_7_Y), .Y(
        \WBINSYNC[4] ));
    DFN1C0 \DFN1C0_MEM_RADDR[8]  (.D(\RBINNXTSHIFT[8] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[8] ));
    AND2 AND2_100 (.A(\MEM_RADDR[9] ), .B(fifo_px_GND), .Y(AND2_100_Y));
    XOR2 XOR2_99 (.A(\RBINNXTSHIFT[10] ), .B(\RBINNXTSHIFT[11] ), .Y(
        XOR2_99_Y));
    XOR2 XOR2_82_RNIKOJ9T (.A(XOR2_82_Y), .B(AO1_16_Y), .Y(\WDIFF[12] )
        );
    XOR2 XOR2_9 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_9_Y));
    XOR2 \XOR2_WDIFF[2]  (.A(XOR2_79_Y), .B(OR3_0_Y), .Y(\WDIFF[2] ));
    VCC VCC_i (.Y(VCC));
    AND3 AND3_5 (.A(AND3_9_Y), .B(AND3_0_Y), .C(AND3_1_Y), .Y(AND3_5_Y)
        );
    AND2 INV_11_RNIASE42_0 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(
        AND2_75_Y));
    XOR2 XOR2_59 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(XOR2_59_Y));
    INV INV_12 (.A(fifo_px_GND), .Y(INV_12_Y));
    XNOR2 XNOR2_4 (.A(\WDIFF[4] ), .B(fifo_px_GND), .Y(XNOR2_4_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[9]  (.D(\WBINNXTSHIFT[9] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[9] ));
    AO1 XOR2_85_RNIL3A5L (.A(XOR2_85_Y), .B(AO1_14_Y), .C(AND2_101_Y), 
        .Y(AO1_40_Y));
    XOR2 XOR2_5 (.A(\MEM_RADDR[7] ), .B(fifo_px_GND), .Y(XOR2_5_Y));
    DFN1C0 \DFN1C0_RGRY[8]  (.D(XOR2_87_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[8] ));
    AO1C AO1C_9 (.A(fifo_px_GND), .B(\WDIFF[13] ), .C(AO1C_7_Y), .Y(
        AO1C_9_Y));
    XNOR2 XNOR2_20 (.A(\WDIFF[3] ), .B(fifo_px_GND), .Y(XNOR2_20_Y));
    AND2 INV_4_RNIUQDI1_0 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(
        AND2_52_Y));
    XNOR3 XNOR3_11 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_11_Y));
    XNOR2 XNOR2_31 (.A(fifo_px_GND), .B(\WDIFF[10] ), .Y(XNOR2_31_Y));
    DFN1C0 DFN1C0_6 (.D(fifo_px_VCC), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(DFN1C0_6_Q));
    DFN1E1C0 \DFN1E1C0_Q[0]  (.D(\QXI[0] ), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .E(DVLDI), .Q(fifo_px_0_Q[0]));
    DFN1C0 \DFN1C0_MEM_RADDR[6]  (.D(\RBINNXTSHIFT[6] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[6] ));
    AND2 AND2_79 (.A(XOR2_48_Y), .B(XOR2_93_Y), .Y(AND2_79_Y));
    XOR2 XOR2_86 (.A(\MEM_RADDR[2] ), .B(fifo_px_GND), .Y(XOR2_86_Y));
    XOR2 XOR2_22 (.A(\MEM_WADDR[1] ), .B(fifo_px_GND), .Y(XOR2_22_Y));
    XNOR3 XNOR3_27 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_27_Y));
    DFN1C0 DFN1C0_10 (.D(\WGRY[3] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_10_Q));
    XOR2 XOR2_13 (.A(\WBINNXTSHIFT[12] ), .B(\WBINNXTSHIFT[13] ), .Y(
        XOR2_13_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[2]  (.D(DFN1C0_8_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[2] ));
    AO1 AND2_79_RNI7ING1 (.A(AND2_79_Y), .B(AO1_42_Y), .C(AO1_8_Y), .Y(
        AO1_38_Y));
    INV INV_6 (.A(\RBINSYNC[6] ), .Y(INV_6_Y));
    XNOR2 XNOR2_18 (.A(\RBINSYNC[4] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_18_Y));
    DFN1C0 DFN1C0_OVERFLOW (.D(AND2_95_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(fifo_px_0_OVERFLOW));
    AO1 AO1_3 (.A(AND2_67_Y), .B(AO1_8_Y), .C(AO1_7_Y), .Y(AO1_3_Y));
    AND2 AND2_64 (.A(XOR2_16_Y), .B(XOR2_5_Y), .Y(AND2_64_Y));
    AO1 AO1_15_RNIA3CA4 (.A(AND2_34_Y), .B(AO1_15_Y), .C(AO1_36_Y), .Y(
        AO1_56_Y));
    AND2 AND2_47 (.A(XOR2_85_Y), .B(XOR2_75_Y), .Y(AND2_47_Y));
    AO1 AO1_18 (.A(AND3_8_Y), .B(NAND3A_1_Y), .C(NAND3A_2_Y), .Y(
        AO1_18_Y));
    XOR2 XOR2_48 (.A(\MEM_WADDR[8] ), .B(fifo_px_GND), .Y(XOR2_48_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_58_Y), .B(AO1_37_Y), .Y(
        \RBINNXTSHIFT[3] ));
    AO1 AO1_47 (.A(XOR2_14_Y), .B(AND2_40_Y), .C(AND2_28_Y), .Y(
        AO1_47_Y));
    DFN1C0 DFN1C0_3 (.D(\RGRY[9] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_3_Q));
    AO1C AO1C_0 (.A(fifo_px_GND), .B(\WDIFF[1] ), .C(fifo_px_GND), .Y(
        AO1C_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[7]  (.D(\RBINNXTSHIFT[7] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[7] ));
    XNOR2 \XNOR2_WBINSYNC[2]  (.A(XNOR3_16_Y), .B(XNOR3_2_Y), .Y(
        \WBINSYNC[2] ));
    AO1 AO1_15_RNI2JHCJ (.A(AND2_43_Y), .B(AO1_56_Y), .C(AO1_21_Y), .Y(
        AO1_14_Y));
    XOR2 \XOR2_WDIFF[3]  (.A(XOR2_59_Y), .B(AO1_15_Y), .Y(\WDIFF[3] ));
    AO1 AND2_81_RNIG6782 (.A(XOR2_34_Y), .B(AND2_75_Y), .C(AND2_81_Y), 
        .Y(AO1_39_Y));
    AND2 AND2_76 (.A(\MEM_WADDR[8] ), .B(fifo_px_GND), .Y(AND2_76_Y));
    OR2A OR2A_16 (.A(MEMRENEG), .B(OR2A_0_Y), .Y(OR2A_16_Y));
    OR2A OR2A_5 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(OR2A_5_Y));
    DFN1C0 \DFN1C0_WGRY[9]  (.D(XOR2_61_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[9] ));
    AND2 AND2_13 (.A(INV_12_Y), .B(INV_0_Y), .Y(AND2_13_Y));
    DFN1C0 DFN1C0_18 (.D(\RGRY[4] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_18_Q));
    AND2 AND2_87 (.A(\MEM_RADDR[5] ), .B(fifo_px_GND), .Y(AND2_87_Y));
    XOR2 XOR2_10 (.A(\MEM_RADDR[3] ), .B(fifo_px_GND), .Y(XOR2_10_Y));
    XNOR3 \XNOR3_WBINSYNC[7]  (.A(\WGRYSYNC[7] ), .B(XOR3_2_Y), .C(
        XNOR3_27_Y), .Y(\WBINSYNC[7] ));
    XNOR2 XNOR2_1 (.A(\RBINSYNC[1] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_1_Y));
    AND2 AND2_58 (.A(\MEM_WADDR[11] ), .B(fifo_px_GND), .Y(AND2_58_Y));
    AND2 AND2_55 (.A(XOR2_78_Y), .B(XOR2_27_Y), .Y(AND2_55_Y));
    AND2 XOR2_7_RNIRK3J1 (.A(XOR2_7_Y), .B(XOR2_73_Y), .Y(AND2_34_Y));
    INV INV_8 (.A(\RBINSYNC[8] ), .Y(INV_8_Y));
    XNOR3 XNOR3_6 (.A(\RGRYSYNC[2] ), .B(\RGRYSYNC[1] ), .C(XOR3_5_Y), 
        .Y(XNOR3_6_Y));
    XOR3 \XOR3_RBINSYNC[9]  (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), 
        .C(\RGRYSYNC[9] ), .Y(\RBINSYNC[9] ));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_92_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[4] ));
    XOR2 XOR2_88 (.A(\MEM_WADDR[9] ), .B(fifo_px_GND), .Y(XOR2_88_Y));
    XNOR3 XNOR3_43 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_43_Y));
    XOR2 XOR2_96 (.A(\MEM_WADDR[11] ), .B(fifo_px_GND), .Y(XOR2_96_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[2] ));
    XOR3 XOR3_3 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_3_Y));
    XOR2 XOR2_79 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_79_Y));
    XOR2 XOR2_27 (.A(\MEM_WADDR[5] ), .B(fifo_px_GND), .Y(XOR2_27_Y));
    AND2 INV_9_RNI6NVF_0 (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(
        AND2_9_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(REP), .Y(MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_29_Y), .B(AO1_25_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(XOR2_7_Y));
    XOR2 XOR2_56 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_56_Y));
    XOR2 XOR2_14 (.A(\MEM_WADDR[7] ), .B(fifo_px_GND), .Y(XOR2_14_Y));
    XNOR3 XNOR3_23 (.A(XNOR3_19_Y), .B(XNOR3_35_Y), .C(XNOR3_41_Y), .Y(
        XNOR3_23_Y));
    XNOR3 XNOR3_1 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_1_Y));
    XOR2 XOR2_11 (.A(\MEM_WADDR[11] ), .B(fifo_px_GND), .Y(XOR2_11_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\WBINSYNC[3] ), .Y(
        XNOR2_3_Y));
    DFN1C0 DFN1C0_7 (.D(\WGRY[12] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_7_Q));
    XOR2 XOR2_69_RNIPC0NV (.A(XOR2_69_Y), .B(AO1_5_Y), .Y(\WDIFF[13] ));
    XNOR2 XNOR2_22 (.A(\RBINSYNC[10] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XNOR2_22_Y));
    NAND3A NAND3A_3 (.A(\WDIFF[1] ), .B(fifo_px_GND), .C(OR2A_15_Y), 
        .Y(NAND3A_3_Y));
    AO1 AND2_55_RNIR8261 (.A(AND2_55_Y), .B(AO1_57_Y), .C(AO1_58_Y), 
        .Y(AO1_55_Y));
    XOR2 XOR2_25 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(XOR2_25_Y));
    XNOR2 \XNOR2_RBINSYNC[0]  (.A(XNOR3_39_Y), .B(XNOR3_23_Y), .Y(
        \RBINSYNC[0] ));
    AO1 AND2_47_RNI593UO (.A(AND2_47_Y), .B(AO1_14_Y), .C(AO1_4_Y), .Y(
        AO1_49_Y));
    XNOR2 XNOR2_15 (.A(\RBINNXTSHIFT[2] ), .B(\WBINSYNC[4] ), .Y(
        XNOR2_15_Y));
    AO1 AO1_22 (.A(AND2_18_Y), .B(AO1_17_Y), .C(AO1_50_Y), .Y(AO1_22_Y)
        );
    AND2 INV_2_RNINFET4 (.A(AND2_20_Y), .B(AND2_44_Y), .Y(AND2_43_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[13]  (.D(DFN1C0_12_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[13] ));
    XOR2 \XOR2_WBINNXTSHIFT[13]  (.A(XOR2_3_Y), .B(AO1_52_Y), .Y(
        \WBINNXTSHIFT[13] ));
    XNOR3 XNOR3_3 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_3_Y));
    OR2 OR2_10 (.A(OR2_4_Y), .B(MEMWENEG), .Y(OR2_10_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[10]  (.D(DFN1C0_19_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[10] ));
    AND2 INV_6_RNI3FDI1_0 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(
        AND2_97_Y));
    AND2 INV_2_RNIE91R2 (.A(XOR2_74_Y), .B(XOR2_28_Y), .Y(AND2_20_Y));
    XNOR2 \XNOR2_RBINSYNC[8]  (.A(\RGRYSYNC[8] ), .B(XNOR3_37_Y), .Y(
        \RBINSYNC[8] ));
    OR2 OR2_5 (.A(\MEM_RADDR[10] ), .B(\MEM_RADDR[9] ), .Y(OR2_5_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[9]  (.D(DFN1C0_3_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[9] ));
    AO1 AO1_41 (.A(AND2_49_Y), .B(AO1_45_Y), .C(AO1_53_Y), .Y(AO1_41_Y)
        );
    XNOR3 XNOR3_15 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        XNOR3_36_Y), .Y(XNOR3_15_Y));
    AO1 INV_6_RNICLQK3 (.A(XOR2_57_Y), .B(AND2_9_Y), .C(AND2_97_Y), .Y(
        AO1_24_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[3] ));
    AND2 AND2_98 (.A(\MEM_RADDR[2] ), .B(fifo_px_GND), .Y(AND2_98_Y));
    AND2 AND2_95 (.A(WEP), .B(fifo_px_0_FULL), .Y(AND2_95_Y));
    XOR2 INV_4_RNIUQDI1 (.A(\WBINNXTSHIFT[6] ), .B(INV_4_Y), .Y(
        XOR2_28_Y));
    XOR2 INV_11_RNIASE42 (.A(\WBINNXTSHIFT[11] ), .B(INV_11_Y), .Y(
        XOR2_8_Y));
    DFN1C0 DFN1C0_23 (.D(\RGRY[3] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_23_Q));
    AND3 AND3_2 (.A(XNOR2_7_Y), .B(XNOR2_3_Y), .C(XNOR2_15_Y), .Y(
        AND3_2_Y));
    AND2 AND2_63 (.A(\MEM_RADDR[3] ), .B(fifo_px_GND), .Y(AND2_63_Y));
    XNOR2 XNOR2_26 (.A(\RBINNXTSHIFT[10] ), .B(\WBINSYNC[12] ), .Y(
        XNOR2_26_Y));
    XOR2 XOR2_32 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_32_Y));
    NOR3A NOR3A_1 (.A(OR2A_15_Y), .B(AO1C_0_Y), .C(\WDIFF[0] ), .Y(
        NOR3A_1_Y));
    OR3 OR3_0 (.A(AND2_53_Y), .B(AND2_88_Y), .C(AND2_13_Y), .Y(OR3_0_Y)
        );
    XOR2 XOR2_98 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_98_Y));
    XNOR3 XNOR3_35 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_35_Y));
    AO1 INV_4_RNIC4FD4 (.A(XOR2_28_Y), .B(AND2_22_Y), .C(AND2_52_Y), 
        .Y(AO1_51_Y));
    XNOR3 \XNOR3_WBINSYNC[3]  (.A(XNOR3_46_Y), .B(XNOR3_11_Y), .C(
        XNOR3_20_Y), .Y(\WBINSYNC[3] ));
    XOR2 XOR2_65 (.A(\MEM_RADDR[8] ), .B(fifo_px_GND), .Y(XOR2_65_Y));
    NOR3A NOR3A_0 (.A(OR2A_6_Y), .B(AO1C_2_Y), .C(\WDIFF[3] ), .Y(
        NOR3A_0_Y));
    AO1D DFN1C0_AFULL_RNO (.A(m15_i_0_0), .B(DFN1C0_AFULL_RNO_1_net_1), 
        .C(fifo_px_0_FULL), .Y(OR2_2_Y));
    XOR2 XOR2_58 (.A(\MEM_RADDR[3] ), .B(fifo_px_GND), .Y(XOR2_58_Y));
    DFN1C0 DFN1C0_AFULL (.D(OR2_2_Y), .CLK(SCLK_c), .CLR(WRITE_RESET_P)
        , .Q(fifo_px_0_AFULL));
    INV INV_2 (.A(\RBINSYNC[3] ), .Y(INV_2_Y));
    AO1 AND2_10_RNIT2TA (.A(XOR2_22_Y), .B(AND2_57_Y), .C(AND2_10_Y), 
        .Y(AO1_59_Y));
    NAND3A NAND3A_1 (.A(NOR3A_1_Y), .B(OR2A_9_Y), .C(NAND3A_3_Y), .Y(
        NAND3A_1_Y));
    NAND2 NAND2_0 (.A(fifo_px_0_FULL), .B(fifo_px_VCC), .Y(NAND2_0_Y));
    XNOR3 XNOR3_0 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_0_Y));
    XOR2 INV_8_RNIF43T1 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(
        XOR2_75_Y));
    AND2 INV_6_RNI96D22 (.A(XOR2_100_Y), .B(XOR2_57_Y), .Y(AND2_44_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[10]  (.D(DFN1C0_5_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[10] ));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_98_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[6] ));
    XOR2 XOR2_76 (.A(\MEM_RADDR[10] ), .B(fifo_px_GND), .Y(XOR2_76_Y));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(DVLDI));
    XNOR2 \XNOR2_RBINSYNC[6]  (.A(XOR3_0_Y), .B(XNOR3_4_Y), .Y(
        \RBINSYNC[6] ));
    XNOR2 XNOR2_10 (.A(\RBINNXTSHIFT[3] ), .B(\WBINSYNC[5] ), .Y(
        XNOR2_10_Y));
    OR2 OR2_1 (.A(NAND2_2_Y), .B(MEMRENEG), .Y(OR2_1_Y));
    XOR2 XOR2_83 (.A(\MEM_RADDR[11] ), .B(fifo_px_GND), .Y(XOR2_83_Y));
    XNOR2 XNOR2_27 (.A(\RBINSYNC[7] ), .B(\WBINNXTSHIFT[9] ), .Y(
        XNOR2_27_Y));
    AO1 AO1_54 (.A(XOR2_36_Y), .B(AND2_8_Y), .C(AND2_87_Y), .Y(
        AO1_54_Y));
    AO1 AO1_20 (.A(XOR2_70_Y), .B(AO1_41_Y), .C(AND2_8_Y), .Y(AO1_20_Y)
        );
    XOR2 INV_6_RNI3FDI1 (.A(\WBINNXTSHIFT[8] ), .B(INV_6_Y), .Y(
        XOR2_57_Y));
    INV INV_13 (.A(\RBINSYNC[11] ), .Y(INV_13_Y));
    GND GND_i_0 (.Y(GND_0));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_56_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[2] ));
    XOR2 XOR2_29 (.A(\MEM_WADDR[3] ), .B(fifo_px_GND), .Y(XOR2_29_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[8]  (.D(DFN1C0_26_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[8] ));
    XOR3 XOR3_0 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_0_Y));
    XOR2 XOR2_40 (.A(\MEM_RADDR[10] ), .B(fifo_px_GND), .Y(XOR2_40_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[1]  (.D(DFN1C0_13_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[1] ));
    AO1 AO1_45 (.A(XOR2_49_Y), .B(AND2_14_Y), .C(AND2_21_Y), .Y(
        AO1_45_Y));
    XOR2 XOR2_2 (.A(\WBINNXTSHIFT[10] ), .B(\WBINNXTSHIFT[11] ), .Y(
        XOR2_2_Y));
    RAM4K9 RAM4K9_12 (.ADDRA11(fifo_px_GND), .ADDRA10(\MEM_WADDR[10] ), 
        .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(fifo_px_GND)
        , .ADDRB10(fifo_px_GND), .ADDRB9(fifo_px_GND), .ADDRB8(
        \MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_GND), .DINA7(fifo_px_GND), 
        .DINA6(fifo_px_GND), .DINA5(fifo_px_GND), .DINA4(fifo_px_GND), 
        .DINA3(fifo_px_GND), .DINA2(fifo_px_GND), .DINA1(
        stonyman_0_px0_out[1]), .DINA0(stonyman_0_px0_out[0]), .DINB8(
        fifo_px_GND), .DINB7(fifo_px_GND), .DINB6(fifo_px_GND), .DINB5(
        fifo_px_GND), .DINB4(fifo_px_GND), .DINB3(fifo_px_GND), .DINB2(
        fifo_px_GND), .DINB1(fifo_px_GND), .DINB0(fifo_px_GND), 
        .WIDTHA0(fifo_px_VCC), .WIDTHA1(fifo_px_GND), .WIDTHB0(
        fifo_px_VCC), .WIDTHB1(fifo_px_VCC), .PIPEA(fifo_px_GND), 
        .PIPEB(fifo_px_GND), .WMODEA(fifo_px_GND), .WMODEB(fifo_px_GND)
        , .BLKA(OR2_7_Y), .BLKB(OR2_9_Y), .WENA(fifo_px_GND), .WENB(
        fifo_px_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        WRITE_RESET_P), .DOUTA8(RAM4K9_12_DOUTA8), .DOUTA7(
        RAM4K9_12_DOUTA7), .DOUTA6(RAM4K9_12_DOUTA6), .DOUTA5(
        RAM4K9_12_DOUTA5), .DOUTA4(RAM4K9_12_DOUTA4), .DOUTA3(
        RAM4K9_12_DOUTA3), .DOUTA2(RAM4K9_12_DOUTA2), .DOUTA1(
        RAM4K9_12_DOUTA1), .DOUTA0(RAM4K9_12_DOUTA0), .DOUTB8(
        RAM4K9_12_DOUTB8), .DOUTB7(RAM4K9_12_DOUTB7), .DOUTB6(
        RAM4K9_12_DOUTB6), .DOUTB5(RAM4K9_12_DOUTB5), .DOUTB4(
        RAM4K9_12_DOUTB4), .DOUTB3(RAM4K9_12_DOUTB3), .DOUTB2(
        RAM4K9_12_DOUTB2), .DOUTB1(RAM4K9_12_DOUTB1), .DOUTB0(
        RAM4K9_12_DOUTB0));
    DFN1C0 DFN1C0_8 (.D(\WGRY[2] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_8_Q));
    DFN1E1C0 DFN1E1C0_1 (.D(\MEM_RADDR[9] ), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .E(OR2A_8_Y), .Q(DFN1E1C0_1_Q));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_1_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[5] ));
    XNOR3 XNOR3_10 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_10_Y));
    XOR2 XOR2_37 (.A(\MEM_RADDR[9] ), .B(fifo_px_GND), .Y(XOR2_37_Y));
    XNOR2 \XNOR2_WDIFF[1]  (.A(XOR2_54_Y), .B(NOR2A_1_Y), .Y(
        \WDIFF[1] ));
    XNOR2 XNOR2_30 (.A(\RBINNXTSHIFT[4] ), .B(\WBINSYNC[6] ), .Y(
        XNOR2_30_Y));
    AND2 AND2_36 (.A(\MEM_RADDR[10] ), .B(fifo_px_GND), .Y(AND2_36_Y));
    AND2A AND2A_0 (.A(fifo_px_0_EMPTY), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_WGRY[10]  (.D(XOR2_2_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[10] ));
    AO1 AO1_26 (.A(XOR2_5_Y), .B(AND2_37_Y), .C(AND2_86_Y), .Y(
        AO1_26_Y));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_23_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[7] ));
    XOR3 XOR3_5 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_5_Y));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_46_Y), .B(AO1_20_Y), .Y(
        \RBINNXTSHIFT[5] ));
    AND3 AND3_9 (.A(XNOR2_32_Y), .B(XNOR2_27_Y), .C(XNOR2_33_Y), .Y(
        AND3_9_Y));
    AO1 AO1_23 (.A(XOR2_16_Y), .B(AO1_11_Y), .C(AND2_37_Y), .Y(
        AO1_23_Y));
    OR2 OR2_3 (.A(OR2_5_Y), .B(MEMRENEG), .Y(OR2_3_Y));
    XOR2 XOR2_44 (.A(\WBINNXTSHIFT[7] ), .B(INV_9_Y), .Y(XOR2_44_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[2]  (.D(DFN1C0_1_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[2] ));
    XOR2 XOR2_41 (.A(\MEM_WADDR[3] ), .B(fifo_px_GND), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\MEM_RADDR[4] ), .B(fifo_px_GND), .Y(XOR2_35_Y));
    XNOR3 XNOR3_49 (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), .C(
        \WGRYSYNC[8] ), .Y(XNOR3_49_Y));
    XNOR2 \XNOR2_WBINSYNC[10]  (.A(\WGRYSYNC[10] ), .B(XNOR3_51_Y), .Y(
        \WBINSYNC[10] ));
    XOR2 \XOR2_RBINNXTSHIFT[10]  (.A(XOR2_76_Y), .B(AO1_22_Y), .Y(
        \RBINNXTSHIFT[10] ));
    XNOR2 XNOR2_24 (.A(fifo_px_GND), .B(\WDIFF[13] ), .Y(XNOR2_24_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[0]  (.D(DFN1C0_15_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[0] ));
    XOR2 XOR2_101 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_101_Y));
    OR2A OR2A_13 (.A(\WDIFF[7] ), .B(fifo_px_GND), .Y(OR2A_13_Y));
    XOR2 XOR2_80 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(XOR2_80_Y));
    XOR2 XOR2_77_RNI3JQU (.A(XOR2_77_Y), .B(AO1_12_Y), .Y(
        \WBINNXTSHIFT[5] ));
    DFN1P0 DFN1P0_EMPTY (.D(EMPTYINT), .CLK(SCLK_c), .PRE(READ_RESET_P)
        , .Q(fifo_px_0_EMPTY));
    XNOR3 XNOR3_29 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_29_Y));
    AO1 INV_6_RNI10N4A (.A(AND2_44_Y), .B(AO1_51_Y), .C(AO1_24_Y), .Y(
        AO1_21_Y));
    DFN1C0 \DFN1C0_WGRYSYNC[4]  (.D(DFN1C0_20_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[4] ));
    XOR2 XOR2_78 (.A(\MEM_WADDR[4] ), .B(fifo_px_GND), .Y(XOR2_78_Y));
    RAM4K9 RAM4K9_5 (.ADDRA11(fifo_px_GND), .ADDRA10(\MEM_WADDR[10] ), 
        .ADDRA9(\MEM_WADDR[9] ), .ADDRA8(\MEM_WADDR[8] ), .ADDRA7(
        \MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), .ADDRA5(
        \MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(fifo_px_GND)
        , .ADDRB10(fifo_px_GND), .ADDRB9(fifo_px_GND), .ADDRB8(
        \MEM_RADDR[8] ), .ADDRB7(\MEM_RADDR[7] ), .ADDRB6(
        \MEM_RADDR[6] ), .ADDRB5(\MEM_RADDR[5] ), .ADDRB4(
        \MEM_RADDR[4] ), .ADDRB3(\MEM_RADDR[3] ), .ADDRB2(
        \MEM_RADDR[2] ), .ADDRB1(\MEM_RADDR[1] ), .ADDRB0(
        \MEM_RADDR[0] ), .DINA8(fifo_px_GND), .DINA7(fifo_px_GND), 
        .DINA6(fifo_px_GND), .DINA5(fifo_px_GND), .DINA4(fifo_px_GND), 
        .DINA3(fifo_px_GND), .DINA2(fifo_px_GND), .DINA1(
        stonyman_0_px0_out[1]), .DINA0(stonyman_0_px0_out[0]), .DINB8(
        fifo_px_GND), .DINB7(fifo_px_GND), .DINB6(fifo_px_GND), .DINB5(
        fifo_px_GND), .DINB4(fifo_px_GND), .DINB3(fifo_px_GND), .DINB2(
        fifo_px_GND), .DINB1(fifo_px_GND), .DINB0(fifo_px_GND), 
        .WIDTHA0(fifo_px_VCC), .WIDTHA1(fifo_px_GND), .WIDTHB0(
        fifo_px_VCC), .WIDTHB1(fifo_px_VCC), .PIPEA(fifo_px_GND), 
        .PIPEB(fifo_px_GND), .WMODEA(fifo_px_GND), .WMODEB(fifo_px_GND)
        , .BLKA(OR2_10_Y), .BLKB(OR2_3_Y), .WENA(fifo_px_GND), .WENB(
        fifo_px_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        WRITE_RESET_P), .DOUTA8(RAM4K9_5_DOUTA8), .DOUTA7(
        RAM4K9_5_DOUTA7), .DOUTA6(RAM4K9_5_DOUTA6), .DOUTA5(
        RAM4K9_5_DOUTA5), .DOUTA4(RAM4K9_5_DOUTA4), .DOUTA3(
        RAM4K9_5_DOUTA3), .DOUTA2(RAM4K9_5_DOUTA2), .DOUTA1(
        RAM4K9_5_DOUTA1), .DOUTA0(RAM4K9_5_DOUTA0), .DOUTB8(
        RAM4K9_5_DOUTB8), .DOUTB7(RAM4K9_5_DOUTB7), .DOUTB6(
        RAM4K9_5_DOUTB6), .DOUTB5(RAM4K9_5_DOUTB5), .DOUTB4(
        RAM4K9_5_DOUTB4), .DOUTB3(RAM4K9_5_DOUTB3), .DOUTB2(
        RAM4K9_5_DOUTB2), .DOUTB1(RAM4K9_5_DOUTB1), .DOUTB0(
        RAM4K9_5_DOUTB0));
    NOR2A NOR2A_1 (.A(fifo_px_GND), .B(\WBINNXTSHIFT[0] ), .Y(
        NOR2A_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[13]  (.D(\WBINNXTSHIFT[13] ), .CLK(SCLK_c)
        , .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[13] ));
    DFN1C0 DFN1C0_27 (.D(\WGRY[9] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_27_Q));
    XOR3 XOR3_8 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_8_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_91_Y), .B(AO1_23_Y), .Y(
        \RBINNXTSHIFT[7] ));
    XOR2 XOR2_69 (.A(\WBINNXTSHIFT[13] ), .B(INV_13_Y), .Y(XOR2_69_Y));
    XNOR2 \XNOR2_WBINSYNC[8]  (.A(XOR3_8_Y), .B(XNOR3_50_Y), .Y(
        \WBINSYNC[8] ));
    XOR2 XOR2_6 (.A(\WBINNXTSHIFT[5] ), .B(INV_2_Y), .Y(XOR2_6_Y));
    NOR2A NOR2A_0 (.A(fifo_px_GND), .B(\WDIFF[8] ), .Y(NOR2A_0_Y));
    DFN1C0 \DFN1C0_WGRY[12]  (.D(XOR2_13_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[12] ));
    AO1 AND2_47_RNIPLDKV (.A(AND2_60_Y), .B(AO1_14_Y), .C(AO1_1_Y), .Y(
        AO1_5_Y));
    AO1 AO1_13 (.A(XOR2_40_Y), .B(AO1_22_Y), .C(AND2_36_Y), .Y(
        AO1_13_Y));
    AND2 AND2_54 (.A(\WBINNXTSHIFT[3] ), .B(INV_7_Y), .Y(AND2_54_Y));
    XOR2 XOR2_93 (.A(\MEM_WADDR[9] ), .B(fifo_px_GND), .Y(XOR2_93_Y));
    XOR2 XOR2_84 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_84_Y));
    AO1 \XOR2_WBINNXTSHIFT[7]_RNO  (.A(XOR2_45_Y), .B(AO1_55_Y), .C(
        AND2_40_Y), .Y(AO1_44_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[6] ));
    AO1 AND2_82_RNIDSFK1 (.A(XOR2_51_Y), .B(AO1_38_Y), .C(AND2_82_Y), 
        .Y(AO1_46_Y));
    XOR2 XOR2_81 (.A(\MEM_RADDR[2] ), .B(fifo_px_GND), .Y(XOR2_81_Y));
    XOR2 \XOR2_WDIFF[7]  (.A(XOR2_44_Y), .B(AO1_32_Y), .Y(\WDIFF[7] ));
    XOR2 XOR2_53 (.A(\MEM_RADDR[6] ), .B(fifo_px_GND), .Y(XOR2_53_Y));
    XNOR2 XNOR2_23 (.A(\WDIFF[6] ), .B(fifo_px_GND), .Y(XNOR2_23_Y));
    AND2 AND2_81 (.A(\WBINNXTSHIFT[12] ), .B(INV_1_Y), .Y(AND2_81_Y));
    DFN1C0 DFN1C0_19 (.D(\RGRY[10] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P)
        , .Q(DFN1C0_19_Q));
    DFN1C0 \DFN1C0_WGRYSYNC[3]  (.D(DFN1C0_10_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[3] ));
    OR2A OR2A_0 (.A(\MEM_RADDR[9] ), .B(\MEM_RADDR[10] ), .Y(OR2A_0_Y));
    XOR2 XOR2_12 (.A(\WBINNXTSHIFT[7] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[0] ), .B(\WBINSYNC[2] ), .Y(
        XNOR2_7_Y));
    XNOR2 XNOR2_12 (.A(fifo_px_VCC), .B(\WDIFF[11] ), .Y(XNOR2_12_Y));
    OR2A OR2A_10 (.A(\WDIFF[11] ), .B(fifo_px_VCC), .Y(OR2A_10_Y));
    XOR2 XOR2_39_RNIIJK81 (.A(XOR2_39_Y), .B(AO1_42_Y), .Y(
        \WBINNXTSHIFT[8] ));
    DFN1C0 DFN1C0_5 (.D(\WGRY[10] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_5_Q));
    DFN1C0 DFN1C0_21 (.D(\WGRY[7] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_21_Q));
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_55_Y), .B(AO1_44_Y), .Y(
        \WBINNXTSHIFT[7] ));
    AO1 INV_8_RNIJ2CG5 (.A(XOR2_75_Y), .B(AND2_101_Y), .C(AND2_99_Y), 
        .Y(AO1_4_Y));
    AND2 \DFN1C0_MEM_WADDR[0]_RNI2P47  (.A(\MEM_WADDR[0] ), .B(
        MEMORYWE), .Y(AND2_57_Y));
    AND2 AND2_47_RNII6782 (.A(AND2_47_Y), .B(AND2_62_Y), .Y(AND2_60_Y));
    DFN1C0 DFN1C0_1 (.D(\RGRY[2] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_1_Q));
    DFN1C0 \DFN1C0_RGRY[10]  (.D(XOR2_99_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[10] ));
    DFN1C0 \DFN1C0_WGRYSYNC[7]  (.D(DFN1C0_21_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[7] ));
    AND2 AND2_4 (.A(AND2_96_Y), .B(AND2_64_Y), .Y(AND2_4_Y));
    OR2A OR2A_14 (.A(fifo_px_GND), .B(\WDIFF[7] ), .Y(OR2A_14_Y));
    AND2 AND2_FULLINT (.A(AND3_11_Y), .B(XOR2_33_Y), .Y(FULLINT));
    XOR2 \XOR2_WDIFF[6]  (.A(XOR2_24_Y), .B(AO1_34_Y), .Y(\WDIFF[6] ));
    XNOR3 \XNOR3_WBINSYNC[5]  (.A(XNOR3_10_Y), .B(XNOR3_49_Y), .C(
        XNOR3_8_Y), .Y(\WBINSYNC[5] ));
    XNOR3 XNOR3_12 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_12_Y));
    AND2 AND2_40 (.A(\MEM_WADDR[6] ), .B(fifo_px_GND), .Y(AND2_40_Y));
    XOR2 XOR2_64_RNI00M0P (.A(XOR2_64_Y), .B(AO1_49_Y), .Y(\WDIFF[11] )
        );
    XNOR2 XNOR2_32 (.A(\RBINSYNC[6] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XNOR2_32_Y));
    AND2 AND2_88 (.A(\WBINNXTSHIFT[1] ), .B(INV_0_Y), .Y(AND2_88_Y));
    AND2 AND2_85 (.A(\MEM_WADDR[12] ), .B(fifo_px_GND), .Y(AND2_85_Y));
    XOR2 XOR2_25_RNI8MELC (.A(XOR2_25_Y), .B(AO1_30_Y), .Y(\WDIFF[8] ));
    DFN1C0 \DFN1C0_WGRYSYNC[6]  (.D(DFN1C0_25_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[6] ));
    AND2 AND2_42 (.A(\WBINNXTSHIFT[2] ), .B(INV_10_Y), .Y(AND2_42_Y));
    DFN1C0 \DFN1C0_WGRY[8]  (.D(XOR2_19_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[8] ));
    NOR3C DFN1C0_AFULL_RNO_1 (.A(DFN1C0_AFULL_RNO_2_net_1), .B(
        XNOR2_29_Y), .C(m15_i_a4_1_0), .Y(DFN1C0_AFULL_RNO_1_net_1));
    XNOR2 \XNOR2_WBINSYNC[6]  (.A(XNOR3_40_Y), .B(XNOR3_15_Y), .Y(
        \WBINSYNC[6] ));
    XNOR2 XNOR2_5 (.A(\RBINNXTSHIFT[9] ), .B(\WBINSYNC[11] ), .Y(
        XNOR2_5_Y));
    XOR2 \XOR2_WDIFF[4]  (.A(XOR2_15_Y), .B(AO1_31_Y), .Y(\WDIFF[4] ));
    XNOR2 XNOR2_16 (.A(\WDIFF[9] ), .B(fifo_px_GND), .Y(XNOR2_16_Y));
    AND2 AND2_67 (.A(XOR2_51_Y), .B(XOR2_11_Y), .Y(AND2_67_Y));
    XNOR3 XNOR3_41 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_41_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_0_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[3] ));
    XOR3 XOR3_2 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XOR3_2_Y));
    XOR2 XOR2_94 (.A(\RBINNXTSHIFT[11] ), .B(fifo_px_GND), .Y(
        XOR2_94_Y));
    XOR2 XOR2_39 (.A(\MEM_WADDR[8] ), .B(fifo_px_GND), .Y(XOR2_39_Y));
    XNOR3 \XNOR3_WBINSYNC[9]  (.A(\WGRYSYNC[10] ), .B(\WGRYSYNC[9] ), 
        .C(XNOR3_29_Y), .Y(\WBINSYNC[9] ));
    AND2 AND2_8 (.A(\MEM_RADDR[4] ), .B(fifo_px_GND), .Y(AND2_8_Y));
    XOR2 XOR2_91 (.A(\MEM_RADDR[7] ), .B(fifo_px_GND), .Y(XOR2_91_Y));
    XOR2 XOR2_3 (.A(\MEM_WADDR[13] ), .B(fifo_px_GND), .Y(XOR2_3_Y));
    XOR2 XOR2_54 (.A(\WBINNXTSHIFT[1] ), .B(INV_12_Y), .Y(XOR2_54_Y));
    XOR3 XOR3_1 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_1_Y));
    XOR2 \XOR2_RBINNXTSHIFT[11]  (.A(XOR2_83_Y), .B(AO1_13_Y), .Y(
        \RBINNXTSHIFT[11] ));
    XNOR3 XNOR3_21 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_21_Y));
    XOR2 XOR2_51 (.A(\MEM_WADDR[10] ), .B(fifo_px_GND), .Y(XOR2_51_Y));
    AO1 AO1_27 (.A(AND2_84_Y), .B(AO1_58_Y), .C(AO1_47_Y), .Y(AO1_27_Y)
        );
    AO1D DFN1C0_AFULL_RNO_0 (.A(AO1C_9_Y), .B(AO1C_6_Y), .C(AO1C_1_Y), 
        .Y(m15_i_0_0));
    AND2 AND2_82 (.A(\MEM_WADDR[10] ), .B(fifo_px_GND), .Y(AND2_82_Y));
    XOR2 XOR2_66 (.A(\RBINNXTSHIFT[9] ), .B(\RBINNXTSHIFT[10] ), .Y(
        XOR2_66_Y));
    DFN1C0 DFN1C0_24 (.D(\RGRY[7] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_24_Q));
    XNOR3 XNOR3_16 (.A(\WGRYSYNC[4] ), .B(\WGRYSYNC[3] ), .C(
        \WGRYSYNC[2] ), .Y(XNOR3_16_Y));
    INV INV_10 (.A(\RBINSYNC[0] ), .Y(INV_10_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[1] ));
    AO1 AO1_58 (.A(XOR2_27_Y), .B(AND2_32_Y), .C(AND2_12_Y), .Y(
        AO1_58_Y));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_52_Y), .B(AND2_14_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\MEM_WADDR[12] ), .B(fifo_px_GND), .Y(XOR2_17_Y));
    DFN1C0 DFN1C0_13 (.D(\RGRY[1] ), .CLK(SCLK_c), .CLR(WRITE_RESET_P), 
        .Q(DFN1C0_13_Q));
    AND2 AND2_53 (.A(\WBINNXTSHIFT[1] ), .B(INV_12_Y), .Y(AND2_53_Y));
    XNOR3 XNOR3_51 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_51_Y));
    AND3 AND3_7 (.A(AND3_6_Y), .B(AND3_2_Y), .C(AND3_10_Y), .Y(
        AND3_7_Y));
    INV INV_9 (.A(\RBINSYNC[5] ), .Y(INV_9_Y));
    XNOR3 XNOR3_36 (.A(\WGRYSYNC[13] ), .B(\WGRYSYNC[12] ), .C(
        \WGRYSYNC[11] ), .Y(XNOR3_36_Y));
    XOR2 XOR2_15 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(XOR2_15_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(SCLK_c), 
        .CLR(WRITE_RESET_P), .Q(\MEM_WADDR[5] ));
    XNOR3 XNOR3_48 (.A(\WGRYSYNC[7] ), .B(\WGRYSYNC[6] ), .C(
        \WGRYSYNC[5] ), .Y(XNOR3_48_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[0] ));
    AO1 AO1_17 (.A(AND2_4_Y), .B(AO1_41_Y), .C(AO1_43_Y), .Y(AO1_17_Y));
    XNOR2 XNOR2_17 (.A(\RBINNXTSHIFT[7] ), .B(\WBINSYNC[9] ), .Y(
        XNOR2_17_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[10]  (.D(\RBINNXTSHIFT[10] ), .CLK(SCLK_c)
        , .CLR(READ_RESET_P), .Q(\MEM_RADDR[10] ));
    XNOR3 XNOR3_28 (.A(\RGRYSYNC[5] ), .B(\RGRYSYNC[4] ), .C(
        \RGRYSYNC[3] ), .Y(XNOR3_28_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_4_Y), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_18_Y), .B(AND2_57_Y), .Y(
        \WBINNXTSHIFT[1] ));
    BUFF \BUFF_RBINSYNC[11]  (.A(\RGRYSYNC[11] ), .Y(\RBINSYNC[11] ));
    AND2 AND2_21 (.A(\MEM_RADDR[1] ), .B(fifo_px_GND), .Y(AND2_21_Y));
    XOR3 XOR3_7 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XOR3_7_Y));
    XOR2 XOR2_89_RNI4A4FJ (.A(XOR2_89_Y), .B(AO1_14_Y), .Y(\WDIFF[9] ));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_84_Y), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\WGRY[4] ));
    AO1 AO1_37 (.A(XOR2_81_Y), .B(AO1_45_Y), .C(AND2_98_Y), .Y(
        AO1_37_Y));
    OR2A OR2A_9 (.A(fifo_px_GND), .B(\WDIFF[2] ), .Y(OR2A_9_Y));
    XOR2 XOR2_0 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_0_Y));
    DFN1C0 DFN1C0_25 (.D(\WGRY[6] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_25_Q));
    XOR2 XOR2_70 (.A(\MEM_RADDR[4] ), .B(fifo_px_GND), .Y(XOR2_70_Y));
    NAND2 NAND2_1 (.A(fifo_px_0_EMPTY), .B(fifo_px_VCC), .Y(NAND2_1_Y));
    MX2 MX2_85 (.A(RAM4K9_12_DOUTB0), .B(RAM4K9_4_DOUTB0), .S(
        DFN1E1C0_1_Q), .Y(MX2_85_Y));
    XOR2 INV_3_RNIR3R41 (.A(\WBINNXTSHIFT[4] ), .B(INV_3_Y), .Y(
        XOR2_73_Y));
    DFN1C0 DFN1C0_22 (.D(\WGRY[11] ), .CLK(SCLK_c), .CLR(READ_RESET_P), 
        .Q(DFN1C0_22_Q));
    AND2 AND2_96 (.A(XOR2_70_Y), .B(XOR2_36_Y), .Y(AND2_96_Y));
    DFN1C0 \DFN1C0_RGRYSYNC[8]  (.D(DFN1C0_9_Q), .CLK(SCLK_c), .CLR(
        WRITE_RESET_P), .Q(\RGRYSYNC[8] ));
    XOR2 XOR2_68 (.A(\WBINNXTSHIFT[11] ), .B(\WBINNXTSHIFT[12] ), .Y(
        XOR2_68_Y));
    AND2 AND2_37 (.A(\MEM_RADDR[6] ), .B(fifo_px_GND), .Y(AND2_37_Y));
    XNOR3 XNOR3_4 (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), .C(
        \RGRYSYNC[6] ), .Y(XNOR3_4_Y));
    AND2 AND2_93 (.A(AND3_12_Y), .B(XNOR2_16_Y), .Y(AND2_93_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_86_Y), .B(AO1_45_Y), .Y(
        \RBINNXTSHIFT[2] ));
    XOR2 XOR2_42 (.A(\WBINNXTSHIFT[10] ), .B(INV_8_Y), .Y(XOR2_42_Y));
    XNOR2 XNOR2_14 (.A(\RBINNXTSHIFT[6] ), .B(\WBINSYNC[8] ), .Y(
        XNOR2_14_Y));
    XNOR3 XNOR3_37 (.A(\RGRYSYNC[11] ), .B(\RGRYSYNC[10] ), .C(
        \RGRYSYNC[9] ), .Y(XNOR3_37_Y));
    XNOR2 XNOR2_29 (.A(fifo_px_GND), .B(\WDIFF[12] ), .Y(XNOR2_29_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[9]  (.D(\RBINNXTSHIFT[9] ), .CLK(SCLK_c), 
        .CLR(READ_RESET_P), .Q(\MEM_RADDR[9] ));
    XOR2 XOR2_36 (.A(\MEM_RADDR[5] ), .B(fifo_px_GND), .Y(XOR2_36_Y));
    XOR2 XOR2_42_RNICQS7L (.A(XOR2_42_Y), .B(AO1_40_Y), .Y(\WDIFF[10] )
        );
    XNOR3 XNOR3_2 (.A(XNOR3_3_Y), .B(XNOR3_5_Y), .C(XNOR3_25_Y), .Y(
        XNOR3_2_Y));
    XNOR2 XNOR2_8 (.A(\RBINNXTSHIFT[5] ), .B(\WBINSYNC[7] ), .Y(
        XNOR2_8_Y));
    XOR2 XOR2_71 (.A(\WBINNXTSHIFT[13] ), .B(fifo_px_GND), .Y(
        XOR2_71_Y));
    AO1C AO1C_6 (.A(fifo_px_GND), .B(\WDIFF[12] ), .C(OR2A_10_Y), .Y(
        AO1C_6_Y));
    AND2 AND2_28 (.A(\MEM_WADDR[7] ), .B(fifo_px_GND), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(\MEM_WADDR[9] ), .B(fifo_px_GND), .Y(AND2_25_Y));
    AO1 AO1_48 (.A(AND2_61_Y), .B(AO1_42_Y), .C(AO1_3_Y), .Y(AO1_48_Y));
    XNOR3 \XNOR3_RBINSYNC[7]  (.A(\RGRYSYNC[8] ), .B(\RGRYSYNC[7] ), 
        .C(XNOR3_9_Y), .Y(\RBINSYNC[7] ));
    DFN1C0 \DFN1C0_WGRYSYNC[5]  (.D(DFN1C0_11_Q), .CLK(SCLK_c), .CLR(
        READ_RESET_P), .Q(\WGRYSYNC[5] ));
    DFN1C0 \DFN1C0_MEM_RADDR[11]  (.D(\RBINNXTSHIFT[11] ), .CLK(SCLK_c)
        , .CLR(READ_RESET_P), .Q(\MEM_RADDR[11] ));
    AO1C AO1C_2 (.A(fifo_px_GND), .B(\WDIFF[4] ), .C(fifo_px_GND), .Y(
        AO1C_2_Y));
    AO1 AND2_32_RNI4S7S (.A(XOR2_78_Y), .B(AO1_57_Y), .C(AND2_32_Y), 
        .Y(AO1_12_Y));
    
endmodule


module adc081s101_adc081s101_0(
       adc081s101_0_dataout,
       SCLK_c,
       stonyman_0_startAdcCapture,
       px_adc_Cs,
       MSS_CORE2_0_M2F_RESET_N,
       adc081s101_0_conversionComplete,
       px0_adc_din_c
    );
output [1:0] adc081s101_0_dataout;
input  SCLK_c;
input  stonyman_0_startAdcCapture;
output px_adc_Cs;
input  MSS_CORE2_0_M2F_RESET_N;
output adc081s101_0_conversionComplete;
input  px0_adc_din_c;

    wire px0_adc_din_c_i, bitsRead_n2_i_0, \bitsRead[0]_net_1 , 
        \bitsRead[1]_net_1 , \bitsRead[2]_net_1 , bitsRead_n1_i_0, 
        cntrWaitTrailinglde_0_a2_0, \cntrWaitTrailing[2]_net_1 , N_43, 
        N_109, bitsReade_0_a2_0, \cntrWaitLeading[1]_net_1 , 
        \cntrWaitLeading[0]_net_1 , \bitsRead[3]_net_1 , cs16_0_a2_0_0, 
        bitsRead_0_sqmuxa_1, N_83, N_80, N_35, bitsRead_0_sqmuxa, N_37, 
        N_10, N_108, N_62, un1_conversionComplete18, N_42, N_84, N_68, 
        N_104, N_49, N_39, N_78, N_105, cs16_1, N_7, N_67, N_139, 
        \cntrWaitTrailing[0]_net_1 , N_74, \cntrWaitLeading_6[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , cs_1_sqmuxa, 
        \cntrWaitLeading_6[1] , I_10, cntrWaitTrailinge, bitsReade, 
        N_140, \cntrWaitTrailing[1]_net_1 , N_31, N_63, N_66, 
        un1_reset_i_1, \cntrWaitQuiet[0]_net_1 , cntrWaitQuiete, N_137, 
        \cntrWaitQuiet[1]_net_1 , N_41, \cntrWaitQuiet[2]_net_1 , 
        N_27_1, cs_1_sqmuxa_2, \DWACT_ADD_CI_0_partial_sum[1] , 
        \DWACT_ADD_CI_0_TMP[0] , GND, VCC, GND_0, VCC_0;
    
    NOR2A cs_RNI19GB1 (.A(N_84), .B(stonyman_0_startAdcCapture), .Y(
        N_62));
    OR2 \cntrWaitQuiet_RNI90VA[1]  (.A(\cntrWaitQuiet[1]_net_1 ), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_41));
    INV \dataout_RNO[0]  (.A(px0_adc_din_c), .Y(px0_adc_din_c_i));
    DFN1 cs (.D(N_67), .CLK(SCLK_c), .Q(px_adc_Cs));
    OR2A cs_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_105), .Y(N_67));
    AX1E \bitsRead_RNO_0[2]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(\bitsRead[2]_net_1 ), .Y(
        bitsRead_n2_i_0));
    XOR2 un1_cntrWaitLeading_I_8 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E1 \dataout[1]  (.D(adc081s101_0_dataout[0]), .CLK(SCLK_c), .E(
        bitsRead_0_sqmuxa_1), .Q(adc081s101_0_dataout[1]));
    NOR2B cs_RNIMB9U (.A(N_83), .B(px_adc_Cs), .Y(N_84));
    NOR2A cs_RNIV2KF (.A(MSS_CORE2_0_M2F_RESET_N), .B(px_adc_Cs), .Y(
        N_109));
    XA1A \cntrWaitQuiet_RNO[2]  (.A(\cntrWaitQuiet[2]_net_1 ), .B(N_41)
        , .C(MSS_CORE2_0_M2F_RESET_N), .Y(N_27_1));
    DFN1E1 \dataout[0]  (.D(px0_adc_din_c_i), .CLK(SCLK_c), .E(
        bitsRead_0_sqmuxa_1), .Q(adc081s101_0_dataout[0]));
    NOR2 \bitsRead_RNO[2]  (.A(bitsRead_n2_i_0), .B(bitsRead_0_sqmuxa), 
        .Y(N_37));
    NOR2B \bitsRead_RNIUGRH[1]  (.A(cs16_0_a2_0_0), .B(N_80), .Y(N_83));
    VCC VCC_i (.Y(VCC));
    XOR2 un1_cntrWaitLeading_I_10 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), 
        .B(\DWACT_ADD_CI_0_TMP[0] ), .Y(I_10));
    DFN1E1 \cntrWaitTrailing[1]  (.D(N_140), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[1]_net_1 ));
    DFN1 \cntrWaitLeading[0]  (.D(\cntrWaitLeading_6[0] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[0]_net_1 ));
    MX2 conversionComplete_RNO_0 (.A(adc081s101_0_conversionComplete), 
        .B(un1_conversionComplete18), .S(N_10), .Y(N_104));
    OR3C \bitsRead_RNO_0[3]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(\bitsRead[2]_net_1 ), .Y(N_49));
    DFN1 conversionComplete (.D(N_68), .CLK(SCLK_c), .Q(
        adc081s101_0_conversionComplete));
    NOR2A \bitsRead_RNIH0U8[2]  (.A(\bitsRead[3]_net_1 ), .B(
        \bitsRead[2]_net_1 ), .Y(cs16_0_a2_0_0));
    OR2 \cntrWaitLeading_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(cs_1_sqmuxa), .Y(\cntrWaitLeading_6[0] ));
    DFN1E1 \cntrWaitTrailing[2]  (.D(N_31), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[2]_net_1 ));
    DFN1 \cntrWaitLeading[1]  (.D(\cntrWaitLeading_6[1] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[1]_net_1 ));
    DFN1E1 \bitsRead[3]  (.D(N_39), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[3]_net_1 ));
    DFN1E1 \cntrWaitQuiet[1]  (.D(N_137), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[1]_net_1 ));
    DFN1E1 \bitsRead[0]  (.D(N_78), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[0]_net_1 ));
    NOR2A \cntrWaitQuiet_RNIMOKJ[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        N_42), .Y(cs_1_sqmuxa_2));
    NOR2 \bitsRead_RNIDGT8[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_80));
    OA1 \cntrWaitTrailing_RNIERDR1[2]  (.A(\cntrWaitTrailing[2]_net_1 )
        , .B(N_43), .C(N_109), .Y(cntrWaitTrailinglde_0_a2_0));
    XOR2 un1_cntrWaitLeading_I_7 (.A(\cntrWaitLeading[1]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    GND GND_i (.Y(GND));
    NOR2 \bitsRead_RNO[0]  (.A(\bitsRead[0]_net_1 ), .B(
        bitsRead_0_sqmuxa), .Y(N_78));
    OR2A cs_RNIPG9D1_0 (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        bitsRead_0_sqmuxa), .Y(un1_reset_i_1));
    OA1 \cntrWaitLeading_RNIOI7Q[1]  (.A(\cntrWaitLeading[1]_net_1 ), 
        .B(\cntrWaitLeading[0]_net_1 ), .C(N_109), .Y(N_63));
    XNOR2 \bitsRead_RNO_0[1]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .Y(bitsRead_n1_i_0));
    XA1C \bitsRead_RNO[3]  (.A(\bitsRead[3]_net_1 ), .B(N_49), .C(
        bitsRead_0_sqmuxa), .Y(N_39));
    NOR3A cs_RNII83A1 (.A(px_adc_Cs), .B(stonyman_0_startAdcCapture), 
        .C(N_42), .Y(bitsRead_0_sqmuxa));
    OR2 \cntrWaitTrailing_RNO[2]  (.A(N_74), .B(bitsRead_0_sqmuxa), .Y(
        N_31));
    NOR3 \bitsRead_RNI2I2F[3]  (.A(\cntrWaitLeading[1]_net_1 ), .B(
        \cntrWaitLeading[0]_net_1 ), .C(\bitsRead[3]_net_1 ), .Y(
        bitsReade_0_a2_0));
    OR2 \cntrWaitQuiet_RNIFGEG[2]  (.A(N_41), .B(
        \cntrWaitQuiet[2]_net_1 ), .Y(N_42));
    AO1 \cntrWaitTrailing_RNI5TIQ3[2]  (.A(cntrWaitTrailinglde_0_a2_0), 
        .B(N_83), .C(cs_1_sqmuxa), .Y(cntrWaitTrailinge));
    NOR2 \cntrWaitQuiet_RNO[0]  (.A(un1_reset_i_1), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_66));
    DFN1E1 \cntrWaitQuiet[2]  (.D(N_27_1), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[2]_net_1 ));
    OR2A \cntrWaitTrailing_RNO[0]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(bitsRead_0_sqmuxa), .Y(N_139));
    AO1 cs_RNIUC1S2 (.A(N_84), .B(N_42), .C(un1_reset_i_1), .Y(
        cntrWaitQuiete));
    OR2 cs_RNIQ50C2 (.A(bitsRead_0_sqmuxa_1), .B(cs_1_sqmuxa), .Y(
        bitsReade));
    DFN1E1 \bitsRead[2]  (.D(N_37), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[2]_net_1 ));
    OR2 \cntrWaitLeading_RNO[1]  (.A(I_10), .B(cs_1_sqmuxa), .Y(
        \cntrWaitLeading_6[1] ));
    MX2 cs_RNO_0 (.A(px_adc_Cs), .B(cs16_1), .S(N_7), .Y(N_105));
    XA1C \cntrWaitTrailing_RNO[1]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(\cntrWaitTrailing[1]_net_1 ), .C(bitsRead_0_sqmuxa), .Y(
        N_140));
    OR3 conversionComplete_RNO_2 (.A(N_108), .B(N_62), .C(
        bitsRead_0_sqmuxa), .Y(N_10));
    OR2B conversionComplete_RNO_1 (.A(N_62), .B(N_42), .Y(
        un1_conversionComplete18));
    DFN1E1 \cntrWaitQuiet[0]  (.D(N_66), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[0]_net_1 ));
    AO1 cs_RNO_1 (.A(cs16_1), .B(N_83), .C(bitsRead_0_sqmuxa), .Y(N_7));
    NOR3B cs_RNIPG9D1 (.A(px_adc_Cs), .B(cs_1_sqmuxa_2), .C(
        stonyman_0_startAdcCapture), .Y(cs_1_sqmuxa));
    NOR2B \cntrWaitTrailing_RNO_0[2]  (.A(N_43), .B(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_74));
    OR2A conversionComplete_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_104)
        , .Y(N_68));
    NOR2 \bitsRead_RNO[1]  (.A(bitsRead_n1_i_0), .B(bitsRead_0_sqmuxa), 
        .Y(N_35));
    AND2 un1_cntrWaitLeading_I_1 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XA1C \cntrWaitQuiet_RNO[1]  (.A(\cntrWaitQuiet[0]_net_1 ), .B(
        \cntrWaitQuiet[1]_net_1 ), .C(un1_reset_i_1), .Y(N_137));
    NOR2B \bitsRead_RNI1LMU[3]  (.A(bitsReade_0_a2_0), .B(N_109), .Y(
        bitsRead_0_sqmuxa_1));
    OR2 \cntrWaitTrailing_RNI9C6T[1]  (.A(\cntrWaitTrailing[1]_net_1 ), 
        .B(\cntrWaitTrailing[0]_net_1 ), .Y(N_43));
    NOR3 \cntrWaitTrailing_RNI7J7O1[2]  (.A(
        \cntrWaitTrailing[2]_net_1 ), .B(N_43), .C(px_adc_Cs), .Y(
        cs16_1));
    DFN1E1 \bitsRead[1]  (.D(N_35), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[1]_net_1 ));
    NOR3B conversionComplete_RNO_3 (.A(N_42), .B(N_84), .C(
        adc081s101_0_conversionComplete), .Y(N_108));
    DFN1E1 \cntrWaitTrailing[0]  (.D(N_139), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[0]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module adc081s101_adc081s101_0_1(
       adc081s101_1_dataout,
       SCLK_c,
       MSS_CORE2_0_M2F_RESET_N,
       stonyman_0_startAdcCapture,
       adc081s101_1_conversionComplete,
       adc081s101_1_cs,
       px1_adc_din_c
    );
output [1:0] adc081s101_1_dataout;
input  SCLK_c;
input  MSS_CORE2_0_M2F_RESET_N;
input  stonyman_0_startAdcCapture;
output adc081s101_1_conversionComplete;
output adc081s101_1_cs;
input  px1_adc_din_c;

    wire px1_adc_din_c_i, cs16_0_a2_0_0, \bitsRead[3]_net_1 , 
        \bitsRead[2]_net_1 , cs16, N_83, N_44, N_37, N_45, 
        cs_1_sqmuxa_1, N_35, \bitsRead[0]_net_1 , \bitsRead[1]_net_1 , 
        N_80, N_64, N_109, bitsRead_0_sqmuxa_1, un7lto1, N_10, N_108, 
        N_62, bitsRead_0_sqmuxa, N_104, un1_conversionComplete18, 
        N_105, N_84, N_66, un1_reset_i_1, \cntrWaitQuiet[0]_net_1 , 
        N_67, N_68, N_42, \cntrWaitLeading_6[0] , cs_1_sqmuxa_2, 
        \DWACT_ADD_CI_0_partial_sum[0] , \cntrWaitLeading_6[1] , 
        I_10_0, cntrWaitQuiete, N_137, N_53_i, N_41, 
        \cntrWaitQuiet[1]_net_1 , \cntrWaitQuiet[2]_net_1 , N_27_1, 
        \cntrWaitLeading[0]_net_1 , \cntrWaitLeading[1]_net_1 , N_63, 
        cntrWaitTrailinge, bitsReade, N_139, 
        \cntrWaitTrailing[0]_net_1 , N_78, N_140, 
        \cntrWaitTrailing[1]_net_1 , N_31, N_43, 
        \cntrWaitTrailing[2]_net_1 , N_39, 
        \DWACT_ADD_CI_0_partial_sum[1] , \DWACT_ADD_CI_0_TMP[0] , GND, 
        VCC, GND_0, VCC_0;
    
    INV \dataout_RNO[0]  (.A(px1_adc_din_c), .Y(px1_adc_din_c_i));
    AO1 cs_RNIAD1S2 (.A(N_84), .B(N_42), .C(un1_reset_i_1), .Y(
        cntrWaitQuiete));
    DFN1 cs (.D(N_67), .CLK(SCLK_c), .Q(adc081s101_1_cs));
    OR2A cs_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_105), .Y(N_67));
    XOR2 un1_cntrWaitLeading_I_8 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E1 \dataout[1]  (.D(adc081s101_1_dataout[0]), .CLK(SCLK_c), .E(
        bitsRead_0_sqmuxa_1), .Q(adc081s101_1_dataout[1]));
    NOR2A \cntrWaitQuiet_RNIPOKJ[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        N_42), .Y(cs_1_sqmuxa_2));
    NOR2B \cntrWaitLeading_RNIRI7Q[1]  (.A(un7lto1), .B(N_109), .Y(
        N_63));
    XA1A \cntrWaitQuiet_RNO[2]  (.A(\cntrWaitQuiet[2]_net_1 ), .B(N_41)
        , .C(MSS_CORE2_0_M2F_RESET_N), .Y(N_27_1));
    DFN1E1 \dataout[0]  (.D(px1_adc_din_c_i), .CLK(SCLK_c), .E(
        bitsRead_0_sqmuxa_1), .Q(adc081s101_1_dataout[0]));
    XA1C \bitsRead_RNO[2]  (.A(\bitsRead[2]_net_1 ), .B(N_45), .C(
        cs_1_sqmuxa_1), .Y(N_37));
    VCC VCC_i (.Y(VCC));
    XOR2 un1_cntrWaitLeading_I_10 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), 
        .B(\DWACT_ADD_CI_0_TMP[0] ), .Y(I_10_0));
    DFN1E1 \cntrWaitTrailing[1]  (.D(N_140), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[1]_net_1 ));
    DFN1 \cntrWaitLeading[0]  (.D(\cntrWaitLeading_6[0] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[0]_net_1 ));
    MX2 conversionComplete_RNO_0 (.A(adc081s101_1_conversionComplete), 
        .B(un1_conversionComplete18), .S(N_10), .Y(N_104));
    OR2 \cntrWaitTrailing_RNIBC6T[1]  (.A(\cntrWaitTrailing[1]_net_1 ), 
        .B(\cntrWaitTrailing[0]_net_1 ), .Y(N_43));
    DFN1 conversionComplete (.D(N_68), .CLK(SCLK_c), .Q(
        adc081s101_1_conversionComplete));
    NOR2A cs_RNI4OKP (.A(adc081s101_1_cs), .B(
        stonyman_0_startAdcCapture), .Y(cs_1_sqmuxa_1));
    AO1 \cntrWaitLeading_RNO[0]  (.A(cs_1_sqmuxa_2), .B(cs_1_sqmuxa_1), 
        .C(\DWACT_ADD_CI_0_partial_sum[0] ), .Y(\cntrWaitLeading_6[0] )
        );
    OR2B \bitsRead_RNIFGT8[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_45));
    DFN1E1 \cntrWaitTrailing[2]  (.D(N_31), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[2]_net_1 ));
    DFN1 \cntrWaitLeading[1]  (.D(\cntrWaitLeading_6[1] ), .CLK(SCLK_c)
        , .Q(\cntrWaitLeading[1]_net_1 ));
    DFN1E1 \bitsRead[3]  (.D(N_39), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[3]_net_1 ));
    DFN1E1 \cntrWaitQuiet[1]  (.D(N_137), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[1]_net_1 ));
    NOR2 \bitsRead_RNIFGT8_0[1]  (.A(\bitsRead[1]_net_1 ), .B(
        \bitsRead[0]_net_1 ), .Y(N_80));
    DFN1E1 \bitsRead[0]  (.D(N_78), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[0]_net_1 ));
    NOR3C \cntrWaitTrailing_RNIKC9D2[2]  (.A(N_44), .B(N_109), .C(N_83)
        , .Y(N_64));
    NOR2A conversionComplete_RNO_4 (.A(N_84), .B(
        stonyman_0_startAdcCapture), .Y(N_62));
    OR2 \cntrWaitQuiet_RNIIGEG[2]  (.A(N_41), .B(
        \cntrWaitQuiet[2]_net_1 ), .Y(N_42));
    NOR3A \bitsRead_RNI5LMU[3]  (.A(N_109), .B(un7lto1), .C(
        \bitsRead[3]_net_1 ), .Y(bitsRead_0_sqmuxa_1));
    XOR2 un1_cntrWaitLeading_I_7 (.A(\cntrWaitLeading[1]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    GND GND_i (.Y(GND));
    NOR2 \bitsRead_RNO[0]  (.A(\bitsRead[0]_net_1 ), .B(cs_1_sqmuxa_1), 
        .Y(N_78));
    OR2 \cntrWaitQuiet_RNIB0VA[1]  (.A(\cntrWaitQuiet[1]_net_1 ), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_41));
    NOR3A \bitsRead_RNO[3]  (.A(\bitsRead[2]_net_1 ), .B(N_45), .C(
        cs_1_sqmuxa_1), .Y(N_39));
    AO1 \cntrWaitTrailing_RNO[2]  (.A(N_43), .B(
        \cntrWaitTrailing[2]_net_1 ), .C(bitsRead_0_sqmuxa), .Y(N_31));
    NOR2 \cntrWaitQuiet_RNO[0]  (.A(un1_reset_i_1), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_66));
    OR2 \cntrWaitTrailing_RNIIOPB1[2]  (.A(N_43), .B(
        \cntrWaitTrailing[2]_net_1 ), .Y(N_44));
    DFN1E1 \cntrWaitQuiet[2]  (.D(N_27_1), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[2]_net_1 ));
    NOR2A \bitsRead_RNIJ0U8[3]  (.A(\bitsRead[3]_net_1 ), .B(
        \bitsRead[2]_net_1 ), .Y(cs16_0_a2_0_0));
    AO1 cs_RNIHTIQ3 (.A(cs_1_sqmuxa_2), .B(cs_1_sqmuxa_1), .C(N_64), 
        .Y(cntrWaitTrailinge));
    OR2A \cntrWaitTrailing_RNO[0]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(bitsRead_0_sqmuxa), .Y(N_139));
    NOR2A \cntrWaitQuiet_RNIM83A1[2]  (.A(cs_1_sqmuxa_1), .B(N_42), .Y(
        bitsRead_0_sqmuxa));
    NOR2B \bitsRead_RNI2HRH[1]  (.A(cs16_0_a2_0_0), .B(N_80), .Y(N_83));
    DFN1E1 \bitsRead[2]  (.D(N_37), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[2]_net_1 ));
    AO1 \cntrWaitLeading_RNO[1]  (.A(cs_1_sqmuxa_2), .B(cs_1_sqmuxa_1), 
        .C(I_10_0), .Y(\cntrWaitLeading_6[1] ));
    OA1B cs_RNO_0 (.A(cs16), .B(adc081s101_1_cs), .C(bitsRead_0_sqmuxa)
        , .Y(N_105));
    NOR2A cs_RNI03KF (.A(MSS_CORE2_0_M2F_RESET_N), .B(adc081s101_1_cs), 
        .Y(N_109));
    XA1C \cntrWaitTrailing_RNO[1]  (.A(\cntrWaitTrailing[0]_net_1 ), 
        .B(\cntrWaitTrailing[1]_net_1 ), .C(bitsRead_0_sqmuxa), .Y(
        N_140));
    OR2A \cntrWaitQuiet_RNITG9D1[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        bitsRead_0_sqmuxa), .Y(un1_reset_i_1));
    OR3 conversionComplete_RNO_2 (.A(N_108), .B(N_62), .C(
        bitsRead_0_sqmuxa), .Y(N_10));
    OR2B conversionComplete_RNO_1 (.A(N_42), .B(cs_1_sqmuxa_1), .Y(
        un1_conversionComplete18));
    DFN1E1 \cntrWaitQuiet[0]  (.D(N_66), .CLK(SCLK_c), .E(
        cntrWaitQuiete), .Q(\cntrWaitQuiet[0]_net_1 ));
    NOR3A cs_RNO_1 (.A(N_83), .B(N_44), .C(adc081s101_1_cs), .Y(cs16));
    OR2A conversionComplete_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_104)
        , .Y(N_68));
    XA1B \bitsRead_RNO[1]  (.A(\bitsRead[0]_net_1 ), .B(
        \bitsRead[1]_net_1 ), .C(cs_1_sqmuxa_1), .Y(N_35));
    AND2 un1_cntrWaitLeading_I_1 (.A(\cntrWaitLeading[0]_net_1 ), .B(
        N_63), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XOR2 \cntrWaitQuiet_RNO_0[1]  (.A(\cntrWaitQuiet[1]_net_1 ), .B(
        \cntrWaitQuiet[0]_net_1 ), .Y(N_53_i));
    NOR2 \cntrWaitQuiet_RNO[1]  (.A(N_53_i), .B(un1_reset_i_1), .Y(
        N_137));
    NOR2B cs_RNIRB9U (.A(N_83), .B(adc081s101_1_cs), .Y(N_84));
    DFN1E1 \bitsRead[1]  (.D(N_35), .CLK(SCLK_c), .E(bitsReade), .Q(
        \bitsRead[1]_net_1 ));
    NOR3B conversionComplete_RNO_3 (.A(N_42), .B(N_84), .C(
        adc081s101_1_conversionComplete), .Y(N_108));
    AO1 \bitsRead_RNI260C2[3]  (.A(cs_1_sqmuxa_2), .B(cs_1_sqmuxa_1), 
        .C(bitsRead_0_sqmuxa_1), .Y(bitsReade));
    DFN1E1 \cntrWaitTrailing[0]  (.D(N_139), .CLK(SCLK_c), .E(
        cntrWaitTrailinge), .Q(\cntrWaitTrailing[0]_net_1 ));
    OR2 \cntrWaitLeading_RNIRFJA[1]  (.A(\cntrWaitLeading[0]_net_1 ), 
        .B(\cntrWaitLeading[1]_net_1 ), .Y(un7lto1));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module stonyman(
       adc081s101_1_dataout,
       stonyman_0_px1_out,
       adc081s101_0_dataout,
       stonyman_0_px0_out,
       led_net_0_c,
       led_0_c,
       mult1_un82_sum_i,
       stonyman_VCC,
       stonyman_GND,
       SCLK_c,
       AND2_1_Y,
       resv_c,
       incv_c,
       stonyman_0_writeEnable,
       stonyman_0_startAdcCapture,
       resp_c,
       incp_c,
       TP_START_CAPTURE_c,
       stonyman_0_busy,
       ADD_9x9_fast_I11_Y_m3_0,
       r_m1,
       MSS_CORE2_0_M2F_RESET_N
    );
input  [1:0] adc081s101_1_dataout;
output [1:0] stonyman_0_px1_out;
input  [1:0] adc081s101_0_dataout;
output [1:0] stonyman_0_px0_out;
output [3:0] led_net_0_c;
output [3:0] led_0_c;
output [6:6] mult1_un82_sum_i;
input  stonyman_VCC;
input  stonyman_GND;
input  SCLK_c;
input  AND2_1_Y;
output resv_c;
output incv_c;
output stonyman_0_writeEnable;
output stonyman_0_startAdcCapture;
output resp_c;
output incp_c;
input  TP_START_CAPTURE_c;
output stonyman_0_busy;
output ADD_9x9_fast_I11_Y_m3_0;
input  r_m1;
input  MSS_CORE2_0_M2F_RESET_N;

    wire \DWACT_ADD_CI_0_g_array_3[0] , \DWACT_ADD_CI_0_g_array_2[0] , 
        \DWACT_ADD_CI_0_pog_array_2[0] , 
        \DWACT_ADD_CI_0_g_array_10[0] , 
        \DWACT_ADD_CI_0_pog_array_2_1[0] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_pog_array_1[0] , 
        \DWACT_ADD_CI_0_g_array_11[0] , 
        \DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_11_2[0] , 
        \DWACT_ADD_CI_0_pog_array_1_5[0] , 
        \DWACT_ADD_CI_0_g_array_11_1[0] , 
        \DWACT_ADD_CI_0_pog_array_1_3[0] , 
        \DWACT_ADD_CI_0_g_array_12_5[0] , 
        \counterPixelsCaptured[12]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12[0] , N_674, 
        \DWACT_ADD_CI_0_g_array_12_2[0] , 
        \counterPixelsCaptured[6]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12_4[0] , 
        \counterPixelsCaptured[10]_net_1 , \DWACT_ADD_CI_0_TMP[0] , 
        N_673, \DWACT_ADD_CI_0_g_array_12_6[0] , 
        \counterPixelsCaptured[14]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12_3[0] , 
        \counterPixelsCaptured[8]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12_1[0] , 
        \counterPixelsCaptured[4]_net_1 , 
        \DWACT_ADD_CI_0_g_array_1_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \cachedPOINTER[1]_net_1 , N_7, \cachedValue[1] , 
        \cachedValue[0] , N_5, \cachedValue[3] , \DWACT_FINC_E[0] , 
        N_30, \counterWait[1]_net_1 , \counterWait[0]_net_1 , N_28, 
        \counterWait[3]_net_1 , \DWACT_FDEC_E[0] , N_23, 
        \counterWait[8]_net_1 , \DWACT_FDEC_E[4] , N_20, 
        \DWACT_FDEC_E[7] , \DWACT_FDEC_E[6] , N_14_i, N_14, N_1523, 
        N_2552_tz, un42lto2, \substate_ns_0_a4_1_1[4]_net_1 , 
        \substate_ns_0_a4_1_0[4]_net_1 , N_1506, N_1643, 
        state103_9_net_1, state103_4_net_1, state103_3_net_1, 
        \counterPixelsCaptured[7]_net_1 , 
        \counterPixelsCaptured[5]_net_1 , \substate_ns_0_8[1] , 
        \substate_ns_0_5_0[1] , N_1566, \substate_ns_0_6[1] , N_1565, 
        \substate_ns_0_2[1] , \substate_ns_0_3[1] , 
        \substate_ns_0_a4_0_1[1] , \substate_ns_0_a4_10_1[1] , N_1632, 
        \substate_ns_0_0[1] , N_1561, N_1570, N_1625, 
        \substate_ns_0_5_tz[1] , N_1571, \substate_ns_0_3_0_0[1] , 
        \substate_ns_0_5[0] , N_1502, \substate_ns_0_2[0] , 
        \substate_ns_0_4[0] , \substate_ns_0_a4_2[0] , N_1517, N_1558, 
        \substate_ns_0_a4_4_3[0] , state53, \substate_ns_0_1[0] , 
        N_1559, N_1556, N_1557, \substate_ns_0_o2_2_1[1] , N_1635, 
        N_1650, \substate_ns_0_o2_2_0[1] , \substate_ns_0_a4_5_0[0] , 
        \state[10]_net_1 , \substate[15]_net_1 , counterWait8, 
        \substate_ns_0_a4_13_2[1] , \substate_ns_0_a4_13_1[1] , N_76, 
        state103, un1_counterPixelsCaptured_15_3_1, state103_0, 
        un1_counterPixelsCaptured_15_1, ADD_9x9_fast_I11_Y_2, 
        ADD_9x9_fast_I11_Y_0_a0, ADD_9x9_fast_I11_Y_0_0, 
        ADD_9x9_fast_I11_Y_1, ADD_9x9_fast_I11_Y_0_2_tz, 
        ADD_9x9_fast_I11_Y_0_a5_0, N146, ADD_9x9_fast_I16_Y_2, 
        ADD_9x9_fast_I16_Y_0, ADD_9x9_fast_I1_P0N_m3, 
        ADD_9x9_fast_I17_Y_0, ADD_9x9_fast_I17_Y_1, 
        ADD_9x9_fast_I11_Y_0_a0_1, ADD_9x9_fast_I12_Y_a0_0, 
        \mult1_un103_sum[5] , ADD_9x9_fast_I11_Y_0, 
        \mult1_un96_sum[5] , \mult1_un96_sum_i[7] , 
        \mult1_un96_sum[6] , ADD_9x9_fast_I11_Y_0_0_0, 
        ADD_9x9_fast_I11_Y_0_0_tz_tz, ADD_9x9_fast_I11_Y_0_a1_2_1, 
        ADD_9x9_fast_I11_Y_0_a1_2_0, ADD_9x9_fast_I17_Y_1_0, 
        ADD_9x9_fast_I15_Y_0, ADD_9x9_fast_I11_un1_Y_0, 
        ADD_9x9_fast_I1_P0N_m1_e_0, \mult1_un89_sum[5] , 
        ADD_9x9_fast_I12_Y_1_3, ADD_9x9_fast_I12_Y_0_0, 
        ADD_9x9_fast_I12_Y_a1_m4, ADD_9x9_fast_I12_Y_a2, 
        ADD_9x9_fast_I12_Y_1_2, ADD_9x9_fast_I12_Y_a5_0, 
        ADD_9x9_fast_I12_Y_a4_0, \mult1_un82_sum[7] , 
        ADD_9x9_fast_I12_Y_1_1, ADD_9x9_fast_I12_Y_a0_1, 
        ADD_9x9_fast_I12_Y_a6_0, \counterWait_82_0_iv_i_0[4] , N_1975, 
        \counterWait_82_0_iv_i_a2_0_0[4] , 
        \counterWait_82_0_iv_i_1[2] , I_7, N_1972, 
        \counterWait_82_0_iv_i_0[2] , N_106, 
        counterWait_1_sqmuxa_10_13, un1_incp_1_sqmuxa, 
        \state[7]_net_1 , counterWait_4_sqmuxa, 
        counterWait_1_sqmuxa_10_12, counterWait_1_sqmuxa_10_10, 
        counterWait_5_sqmuxa_2_i, un1_state_0_sqmuxa, N_52, 
        counterWait_1_sqmuxa_10_8, counterWait_1_sqmuxa_10_1, 
        counterWait_1_sqmuxa_10_6, counterWait_1_sqmuxa_3, 
        counterWait_4_sqmuxa_1, counterWait_1_sqmuxa_10_4, 
        counterWait_0_sqmuxa_4, un1_state_23, 
        counterWait_1_sqmuxa_10_3, counterWait_0_sqmuxa_3, 
        counterWait_1_sqmuxa_10_1_0, un1_counterWait_6_sqmuxa, 
        counterWait_0_sqmuxa_2, \state_RNINQQ91[4]_net_1 , N_1974, 
        un1_counterWait_0_sqmuxa, \counterPixelsCaptured[9]_net_1 , 
        ADD_9x9_fast_I12_Y_a0_0_0, \mult1_un82_sum[5] , 
        ADD_9x9_fast_I12_Y_a2_0, \substate_ns_0_4[3] , N_1588, 
        \substate_ns_0_2[3] , N_1583, \substate_ns_0_0[3] , 
        \substate_ns_0_1[3] , N_1584, N_1553, N_1637, N_1581, 
        \substate_ns_i_1[12] , N_1612, N_1613, N_1615, 
        ADD_9x9_fast_I17_Y_0_0, ADD_9x9_fast_I17_Y_1_1, N146_0, 
        un1_substate_4_sqmuxa_0, resv_1_sqmuxa, substate_4_sqmuxa, 
        \state_ns_i_0[4] , N_1499, \state_ns_i_0[3] , N_1688, 
        \state[2]_net_1 , \state_ns_i_0[7] , \substate_ns_i_0[10] , 
        \substate_ns_i_a4_0[10] , N_1609, \substate_ns_i_0_0[6] , 
        \substate_ns_i_a4_0[6] , \substate_ns_i_0[6] , 
        \substate_ns_i_0_0[15] , N_111, \substate[14]_net_1 , 
        \substate_ns_i_0[13] , N_1539, \substate[13]_net_1 , 
        \substate_ns_0_a4_0[0] , N_1647, \state[1]_net_1 , 
        \substate[11]_net_1 , \state[3]_net_1 , \substate_ns_0_1[2] , 
        N_1577, N_1578, N_1575, \substate_ns_0_a4_0_1[3] , N_109_3, 
        N_69, N_1510, ADD_9x9_fast_I9_un1_Y_0_3, 
        ADD_9x9_fast_I9_un1_Y_a0_3, ADD_9x9_fast_I9_un1_Y_a2_2, 
        ADD_9x9_fast_I9_un1_Y_0_2, ADD_9x9_fast_I9_un1_Y_0_0, 
        ADD_9x9_fast_I9_un1_Y_a1, ADD_9x9_fast_I9_un1_Y_a3, 
        \mult1_un75_sum[5] , ADD_9x9_fast_I9_un1_Y_a5_1, 
        ADD_9x9_fast_I11_Y_m3_0_a3_m2_0_a2_0, 
        ADD_9x9_fast_I1_G0N_N_13_i, ADD_9x9_fast_I9_un1_Y_m3_0, 
        \substate_ns_i_a4_1_0[12] , \substate[12]_net_1 , 
        \substate[10]_net_1 , un41lto0, \state[4]_net_1 , 
        \substate_ns_0_a4_0_0[1] , \substate_ns_0_a4_3_0[3] , N_1626, 
        \substate_ns_0_a4_8_1[3] , \substate_ns_0_a4_4_1[0] , 
        ADD_9x9_fast_I16_Y_m2_0, I11_un1_Y, ADD_9x9_fast_I11_Y_3, 
        ADD_9x9_fast_I12_Y_0_0_0, ADD_9x9_fast_I12_un1_Y_a0_0, 
        ADD_9x9_fast_I12_un1_Y_a1, \state_ns_i_1[2] , 
        \state_ns_i_0[2] , N_1700, \counterWait_82_0_iv_0_a2_0_0[0] , 
        \substate_ns_i_0[8] , \substate[8]_net_1 , \substate[4]_net_1 , 
        N_1605, ADD_9x9_fast_I9_un1_Y_a0_1, ADD_9x9_fast_I9_un1_Y_a5_0, 
        ADD_9x9_fast_I9_un1_Y_a3_0, \state_ns_0_0_0[6] , N_1105, N_155, 
        N_113, state31_0_a2_0, \cachedValue[5] , state31_1, 
        \substate_ns_i_a4_0_0[6] , N_1494, \substate[6]_net_1 , 
        \counterWait_82_tz_0[1] , state53_0_a2_0, \cachedValue[2] , 
        \state_ns_0_0_a2_3[6] , \state_ns_0_0_a2_2[6] , 
        \state_ns_0_0_a2_1[6] , \state[5]_net_1 , state70_3, N_80, 
        state70_2, state70_0, state20_2, \cachedValue[7] , 
        \cachedValue[4] , state20_3, state20_1, \cachedValue[6] , 
        ADD_9x9_fast_I9_un1_Y_a1_1, \substate_ns_0_0[4] , N_1592, 
        \substate_ns_0_a4_0[5] , \substate[5]_net_1 , 
        \substate_ns_0_0_a2_0[11] , \state_ns_0_0_a2_1_0[6] , 
        \substate_ns_0_a4_14_1[1] , state9, 
        \substate_ns_0_0_a2_0_0[11] , \substate[7]_net_1 , N_1528, 
        ADD_9x9_fast_I12_Y_a1_m1_e_1, state53_0_a2_0_1, 
        \substate_ns_i_a4_0_1[7] , N_70, \substate_ns_0_a4_3_0[0] , 
        \state_ns_i_0_a2_0_0[1] , \state_i[0]_net_1 , 
        ADD_9x9_fast_I1_G0N_m5_i_o2_1, ADD_9x9_fast_I1_G0Ntt_b0_i_1, 
        ADD_9x9_fast_I1_G0Ntt_N_7, ADD_9x9_fast_I1_G0N_m5_i_o2_0, 
        ADD_9x9_fast_I11_Y_2_0, un1_substate_9_sqmuxa_1_2, 
        substate_5_sqmuxa_6, un1_substate_9_sqmuxa_1_3, 
        substate_4_sqmuxa_3, un1_substate_9_sqmuxa_1_1, N_4, 
        \state[12]_net_1 , substate_4_sqmuxa_4, \state_ns_i_0_1[10] , 
        N_104, ADD_9x9_fast_I15_Y_0_0, 
        \counterPixelsCaptured[11]_net_1 , \substate_ns_0_5_tz_0[1] , 
        \substate_ns_0_a4_6_0[1] , \substate_ns_0_a4_7_0[1] , 
        \substate_ns_i_a4_2_0[12] , \substate[2]_net_1 , 
        \substate_ns_i_a4_1_0[8] , N_1524, \substate_ns_0_3_0_tz_0[1] , 
        N_1509_i_0, un1_counterWait_1_sqmuxa_i_a2_1, 
        \substate_ns_0_a4_0_1[2] , \state_ns_0_a4_0[9] , 
        \state[9]_net_1 , un1_counterWait_3_sqmuxa_3_0_0, 
        \substate[3]_net_1 , N_1118, ADD_9x9_fast_I11_un1_Y_0_0, 
        ADD_9x9_fast_I2_P0N_0_4, ADD_9x9_fast_I2_P0N_0_5, N132, 
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a1, 
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2, 
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0, \substate_ns_i_o4_0[9] , 
        N_1493, un1_counterWait_1_sqmuxa_i_a2_0_2, N_126_2, 
        un1_counterWait_1_sqmuxa_i_a2_0_0, 
        un1_counterWait_1_sqmuxa_i_a2_1_2, 
        un1_counterWait_1_sqmuxa_i_a2_1_0, 
        un1_counterWait_1_sqmuxa_i_a2_1_1, \state[11]_net_1 , 
        counterWait8lt30_27, counterWait8lt30_18, counterWait8lt30_17, 
        counterWait8lt30_23, counterWait8lt30_26, counterWait8lt30_12, 
        counterWait8lt30_11, counterWait8lt30_22, counterWait8lt30_25, 
        counterWait8lt30_8, counterWait8lt30_7, counterWait8lt30_20, 
        counterWait8lt30_2, counterWait8lt30_1, counterWait8lt30_15, 
        \counterWait[2]_net_1 , \counterWait[4]_net_1 , 
        counterWait8lt30_14, \counterWait[21]_net_1 , 
        \counterWait[24]_net_1 , counterWait8lt30_10, 
        \counterWait[19]_net_1 , \counterWait[22]_net_1 , 
        counterWait8lt30_6, \counterWait[11]_net_1 , 
        \counterWait[14]_net_1 , counterWait8lt30_4, 
        \counterWait[29]_net_1 , \counterWait[30]_net_1 , 
        \counterWait[6]_net_1 , \counterWait[12]_net_1 , 
        \counterWait[9]_net_1 , \counterWait[18]_net_1 , 
        \counterWait[15]_net_1 , \counterWait[5]_net_1 , 
        \counterWait[27]_net_1 , \counterWait[10]_net_1 , 
        \counterWait[7]_net_1 , \counterWait[16]_net_1 , 
        \counterWait[13]_net_1 , \counterWait[28]_net_1 , 
        \counterWait[25]_net_1 , \counterWait[20]_net_1 , 
        \counterWait[17]_net_1 , \counterWait[26]_net_1 , 
        \counterWait[23]_net_1 , counterWait_0_sqmuxa_3_2, 
        counterWait_0_sqmuxa_3_0, N_61, \substate[9]_net_1 , 
        ADD_9x9_fast_I17_Y_3_2, ADD_9x9_fast_I17_Y_a2_1, 
        ADD_9x9_fast_I17_Y_a2_0, ADD_9x9_fast_I17_Y_3_0, 
        ADD_9x9_fast_I17_Y_3_1, ADD_9x9_fast_I3_P0N_3_0, 
        ADD_9x9_fast_I17_Y_a1, \counterPixelsCaptured[13]_net_1 , 
        ADD_9x9_fast_I17_Y_a3, counterWait_0_sqmuxa_4_0, 
        un1_state_23_3, \substate_RNINSVV[8]_net_1 , un1_state_23_0, 
        \state_RNI4F7N1[1]_net_1 , \state[6]_net_1 , 
        \substate_ns_0_7_0_tz_0[3] , \substate_ns_0_a4_10_2_1[3] , 
        \substate_ns_0_a4_7_2[3] , state103_12, state103_6, state103_5, 
        state103_8, state103_7, \counterPixelsCaptured[15]_net_1 , 
        N_675, ADD_9x9_fast_I11_Y_2_1, ADD_9x9_fast_I5_un1_Y_a0_2, 
        ADD_9x9_fast_I2_P0N_a1_0, ADD_9x9_fast_I5_un1_Y_a1, 
        ADD_9x9_fast_I11_Y_2_0_0, ADD_9x9_fast_I5_un1_Y_a2_2, 
        ADD_9x9_fast_I5_un1_Y_a2_1, ADD_9x9_fast_I5_un1_Y_a3, 
        ADD_9x9_fast_I2_P0N_a6, ADD_9x9_fast_I2_P0N_a1, 
        ADD_9x9_fast_I2_P0N_0_2, ADD_9x9_fast_I2_P0N_a2, 
        ADD_9x9_fast_I2_P0N_a7, ADD_9x9_fast_I2_P0N_0_1, 
        ADD_9x9_fast_I17_Y_a1_0, ADD_9x9_fast_I2_P0N_a5, 
        ADD_9x9_fast_I9_un1_Y_0_1, ADD_9x9_fast_I9_un1_Y_0_0_0, 
        ADD_9x9_fast_I9_un1_Y_a3_0_0, ADD_9x9_fast_I15_Y_0_1, 
        ADD_9x9_fast_I3_P0N_0_3, ADD_9x9_fast_I3_P0N_0_0, 
        ADD_9x9_fast_I3_G0N_0_1, ADD_9x9_fast_I3_G0N_0_0, I_5_0, 
        \cachedPOINTER[2]_net_1 , \WADDR_REG1[2] , N_5_0, 
        un1_substate_0_sqmuxa_1_0, un1_substate_0_sqmuxa_1_1_tz, 
        \substate_i[0]_net_1 , ADD_9x9_fast_I1_G0N_0_0, 
        \un43_i_a2_0_a2_1[3] , \un43_i_a2_0_a2_0[3] , un42lto2_1, 
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0_2, 
        ADD_9x9_fast_I5_un1_Y_a3_2, \un43_i_a2_1_a2_3[1] , 
        \un43_i_a2_1_a2_1[1] , \un43_i_a2_1_a2_0[1] , 
        un1_counterWait_3_sqmuxa_i_a2_1, 
        un1_counterWait_3_sqmuxa_i_a2_0, un1_substate_10_sqmuxa_tz_6, 
        un1_substate_10_sqmuxa_tz_4, un1_substate_10_sqmuxa_tz_5, 
        un1_substate_10_sqmuxa_tz_2, \state[8]_net_1 , state9_0, 
        un1_reset_i_a2_0_2_1, un1_substate_1_sqmuxa_tz_3, 
        un1_substate_1_sqmuxa_tz_1, un1_substate_1_sqmuxa_tz_2, 
        \un43_i_a2_0_a2_1[2] , ADD_9x9_fast_I2_P0N_a5_0, 
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2_1, 
        un1_substate_9_sqmuxa_1_3_tz_2, ADD_9x9_fast_I3_G0N_a2_0, 
        ADD_9x9_fast_I17_Y_a3_0, un1_substate_9_sqmuxa_1_3_tz_1, 
        \substate_ns_0_a4_7_2_0[3] , \un1_state_4_i_a2_0_a2_1[1] , 
        \un1_state_4_i_a2_0_a2_0[2] , N_1127, 
        \un1_state_4_i_a2_0_a2_2[3] , \un43_i_a2_0_a2_4_a2_3[0] , 
        \un43_i_a2_0_a2_4_a2_1[0] , \un1_state_4_i_a2_0_a2_1[0] , 
        \un1_state_4_i_a2_0_a2_0[0] , N_1126, state104, 
        un1_counterPixelsCaptured_15_3, N_677, N_641_tz, 
        ADD_9x9_fast_I1_P0N_m1_e, ADD_9x9_fast_I11_Y_0_a4_0, 
        \mult1_un68_sum[7] , \substate_ns_0_a4_1_0[1] , 
        \substate_ns_0_a4_11_1[1] , \substate_ns_0_3_0_tz[1] , 
        N_2555_tz, N125, I9_un1_Y, ADD_9x9_fast_I17_Y_1_2, N150, 
        \substate_ns_0_a4_9_1[3] , \substate_ns_0_a4_2_1[3] , N_1518, 
        N_1501, \substate_ns_0_a4_1_1[5] , \substate_ns[0] , 
        state_0_sqmuxa_8, N_122, N_143, \state_RNO[1]_net_1 , 
        \state_ns[0] , N_142, N_105, \state_RNO[10]_net_1 , N_103, 
        \substate_RNO[15]_net_1 , N_141, \counterWait_7_m[1] , 
        \counterWait_7[1] , \substate_RNO[6]_net_1 , N_1598, N_148, 
        \counterWait_82[0] , N_147, N_149, \counterWait_82[1] , 
        \un3_counterWait_1_m[1] , \counterWait_cnst_m[1] , 
        un1_counterWait_3_sqmuxa_3, N_23_0, substate_25_sqmuxa, N_1973, 
        N146_1, N148, I11_un1_Y_0, N_678, N148_0, N146_2, I11_un1_Y_1, 
        \mult1_un68_sum[5] , \mult1_un61_sum[8] , \state_RNO[2]_net_1 , 
        N_1712, state20, \substate_ns[4] , N_1592_1, N_75, 
        \substate_RNI4F7N1[11]_net_1 , \substate_RNI125M1[9]_net_1 , 
        N_1446, N_1442, \state_RNO[4]_net_1 , N_1690, 
        \substate_RNO[10]_net_1 , N_1549, \substate_RNO[14]_net_1 , 
        N_1550, N_1618, \substate_RNO[13]_net_1 , 
        \substate_RNO[12]_net_1 , N_1614, resv_0_sqmuxa, 
        \substate_RNO[9]_net_1 , N_1607, N_1606, N_1497, 
        counterWait_5_sqmuxa, \substate_ns[1] , N_1628, N_1564, 
        state31, N_37, \state_RNO[3]_net_1 , N_1713, N_1715, 
        \state_ns[9] , N_1730, N_1728, N_1729, \state_ns[8] , N_1725, 
        N_1727, N_1726, N_1691, resp_0_sqmuxa, un1_substate_0_sqmuxa_1, 
        resp_1_sqmuxa, N_1441, un1_counterWait_0_sqmuxa_3, 
        un1_counterWait_0_sqmuxa_1, cachedPOINTER_0_sqmuxa, 
        ADD_9x9_fast_I12_Y_0, N150_0, N_1576, N_1631, N_1525, N_1640, 
        N_1500, N_1718, \state_RNO[5]_net_1 , N_1717, 
        \substate_RNINGOVG[4]_net_1 , cachedPOINTER_0_sqmuxa_1, 
        cachedPOINTER_0_sqmuxa_2, un1_substate_1_sqmuxa, 
        un1_substate_10_sqmuxa, \substate_RNO[7]_net_1 , N_1601, 
        N_1602, \state_RNO[11]_net_1 , N_1694, N_1734, 
        \state_RNO[12]_net_1 , N_1735, N_99, N_115, N_109, N_110, 
        N_108, un1_substate_4_sqmuxa, N_77, N_94, N_146, N_144, N_1629, 
        \substate_RNO[8]_net_1 , N_1603, \state_ns[6] , 
        un1_substate_9_sqmuxa_1, counterWait_0_sqmuxa_4_2, N_1437, 
        N_1547, N_1445, N_1641, N_1580, N_1639, \substate_ns[2] , 
        N_1574, \substate_ns[3] , \substate_ns_0_7_0[3] , 
        \state_RNO[7]_net_1 , N_1722, N_1723, N150_1, N_7_0, I_4_1, 
        I_4_0, un1_state_10, busy_1_sqmuxa, I_5, N_676, 
        ADD_9x9_fast_I9_un1_Y_a4, I9_un1_Y_0, ADD_9x9_fast_I12_Y_a0, 
        ADD_9x9_fast_I12_Y_a1, ADD_9x9_fast_I12_Y_1, 
        ADD_9x9_fast_I3_P0N_a2, ADD_9x9_fast_I3_P0N_2, 
        ADD_9x9_fast_I9_un1_Y_a2, I9_un1_Y_1, N131, 
        ADD_9x9_fast_I3_G0N_2, ADD_9x9_fast_I11_Y_N_7, 
        ADD_9x9_fast_I12_un1_Y_a1_0, ADD_9x9_fast_I11_un1_Y_N_18, 
        ADD_9x9_fast_I11_un1_Y_N_17, ADD_9x9_fast_I11_un1_Y_N_19, 
        ADD_9x9_fast_I11_un1_Y_N_16_i, ADD_9x9_fast_I11_un1_Y_m10_0, 
        ADD_9x9_fast_I11_un1_Y_N_20, ADD_9x9_fast_I1_G0N_a0, N125_0, 
        N150_2, ADD_9x9_fast_I9_Y_m3, ADD_9x9_fast_I9_Y_m1, 
        ADD_9x9_fast_I11_Y_N_5, ADD_9x9_fast_I12_Y_a1_m2, 
        \substate_ns_0_7_0_tz[3] , ADD_9x9_fast_I12_Y_1_tz, 
        ADD_9x9_fast_I12_Y_0_0_tz, \substate_ns_0_a4_5_0[3] , 
        \substate_ns_0_a4_6_0[3] , N_1642, 
        \counterPixelsCaptured_RNIDIS8G[8]_net_1 , 
        ADD_9x9_fast_I12_Y_0_a0, 
        \counterPixelsCaptured_RNI8E8M1S[6]_net_1 , I9_un1_Y_2, d_N_5, 
        ADD_9x9_fast_I9_Y_m3_0, ADD_9x9_fast_I9_un1_Y_m1, 
        ADD_9x9_fast_I9_un1_Ytt_m4, ADD_9x9_fast_I9_un1_Ytt_m4_e, 
        un1_counterPixelsCaptured_15, ADD_9x9_fast_I17_Y_a0_1, 
        ADD_9x9_fast_I1_P0N_m2, \substate_ns_0_0[5] , 
        \substate_ns_0_a4_0_0[5] , un1_reset_i_0_tz, 
        \substate[1]_net_1 , N_2553_tz, \substate_ns[5] , N_1514, 
        N_809, busy_RNO_net_1, N_806, un1_substate_9_sqmuxa_4, 
        \WADDR_REG1[0] , \WADDR_REG1[1] , I_1_RNI15T54, N_114, 
        \state_RNIBBES5[6]_net_1 , I_5_0_0, \state_RNIMHVI7[6]_net_1 , 
        I_7_0, \state_RNI2OG99[6]_net_1 , I_9_0, 
        \state_RNIFU10B[6]_net_1 , I_12_0, \state_RNIT4JMC[6]_net_1 , 
        I_14_1, \state_RNICB4DE[6]_net_1 , I_17_0, 
        \state_RNISHL3G[6]_net_1 , I_20_0, N_150, 
        \counterPixelsCaptured_8[0] , \DWACT_ADD_CI_0_partial_sum[0] , 
        \counterPixelsCaptured_8[1] , I_64, 
        \counterPixelsCaptured_8[2] , I_51, 
        \counterPixelsCaptured_8[3] , I_54, 
        \counterPixelsCaptured_8[4] , I_55, 
        \counterPixelsCaptured_8[5] , I_57, 
        \counterPixelsCaptured_8[6] , I_59, 
        \counterPixelsCaptured_8[7] , I_61, 
        \counterPixelsCaptured_8[8] , I_63, 
        \counterPixelsCaptured_8[9] , I_52, 
        \counterPixelsCaptured_8[10] , I_53, 
        \counterPixelsCaptured_8[11] , I_56, 
        \counterPixelsCaptured_8[12] , I_58, 
        \counterPixelsCaptured_8[13] , I_60, 
        \counterPixelsCaptured_8[14] , I_65, 
        \counterPixelsCaptured_8[15] , I_66, incp_1_sqmuxa_1, 
        un1_substate_8, incp_2_sqmuxa, un1_substate_9_sqmuxa_2, 
        \cachedPOINTER_23[0] , \DWACT_ADD_CI_0_partial_sum_0[0] , 
        \cachedPOINTER_23[1] , I_13, \cachedPOINTER_23[2] , I_14, 
        incp_RNO_net_1, N_1695, N_71, \substate_ns[11] , N_78, I_12, 
        N_25, I_9, N_158, N_29, I_17, N_32, I_20, N_34, I_23, N_36, 
        I_26, N_40, I_28, N_42, I_32, N_44, I_35, N_46, I_37, N_48, 
        I_40, N_50, I_43, N_60, I_59_0, N_62, I_62, N_64, I_65_0, N_66, 
        I_70, N_68, I_74, N_1966, I_77, N_72, I_82, N_1967, I_86, N_79, 
        I_92, N_81, I_95, N_1968, I_89, N_58, I_56_0, N_56, I_53_0, 
        N_54, I_49, N_1965, I_46, N_27, I_14_0, resp_RNO_net_1, N_807, 
        un1_counterWait_1_sqmuxa_1, \mult1_un117_sum_1[5] , N_672, 
        N_812, un1_state_2, startAdcCapture_RNO_net_1, N_120, N_1976, 
        un1_state_5, writeEnable_RNO_net_1, N_811, N_810, 
        incv_RNO_net_1, N_808, un1_substate_4_sqmuxa_3, resv_RNO_net_1, 
        counterWait_1_sqmuxa_9, N_1969, N_152, counterWait_2_sqmuxa_1, 
        N_153, \DOUT_TMP[7] , \DIN_REG1[7] , \DOUT_TMP[6] , 
        \DIN_REG1[6] , \DOUT_TMP[5] , \DIN_REG1[5] , \DOUT_TMP[4] , 
        \DIN_REG1[4] , \DOUT_TMP[3] , \DIN_REG1[3] , \DOUT_TMP[2] , 
        \DIN_REG1[2] , \DOUT_TMP[1] , \DIN_REG1[1] , \DOUT_TMP[0] , 
        \DIN_REG1[0] , \DWACT_ADD_CI_0_pog_array_1_4[0] , 
        \DWACT_ADD_CI_0_pog_array_1_2[0] , N_2, \DWACT_FDEC_E[24] , 
        \DWACT_FDEC_E[23] , \DWACT_FDEC_E[26] , N_3, 
        \DWACT_FDEC_E[25] , N_4_0, \DWACT_FDEC_E[29] , 
        \DWACT_FDEC_E[30] , N_5_1, \DWACT_FDEC_E[15] , 
        \DWACT_FDEC_E[17] , \DWACT_FDEC_E[22] , N_6, 
        \DWACT_FDEC_E[21] , \DWACT_FDEC_E[9] , \DWACT_FDEC_E[12] , 
        \DWACT_FDEC_E[20] , N_7_1, \DWACT_FDEC_E[13] , 
        \DWACT_FDEC_E[19] , N_8, \DWACT_FDEC_E[18] , N_9, 
        \DWACT_FDEC_E[33] , \DWACT_FDEC_E[34] , \DWACT_FDEC_E[2] , 
        \DWACT_FDEC_E[5] , N_10, \DWACT_FDEC_E[28] , 
        \DWACT_FDEC_E[16] , N_11, N_12, \DWACT_FDEC_E[14] , N_13, 
        N_14_0, \DWACT_FDEC_E[10] , N_15, \DWACT_FDEC_E[11] , N_16, 
        N_17, N_18, \DWACT_FDEC_E[8] , N_19, N_21, N_22, 
        \DWACT_FDEC_E[3] , N_24, N_25_0, N_26, \DWACT_FDEC_E[1] , 
        N_27_0, N_29_0, N_2_0, \DWACT_FINC_E[2] , N_3_0, 
        \DWACT_FINC_E[1] , N_4_1, N_6_0, \DOUT_TMP[8] , \DOUT_TMP[9] , 
        \DOUT_TMP[10] , \DOUT_TMP[11] , \DOUT_TMP[12] , \DOUT_TMP[13] , 
        \DOUT_TMP[14] , \DOUT_TMP[15] , \DOUT_TMP[16] , \DOUT_TMP[17] , 
        GND, VCC, GND_0, VCC_0;
    
    OR2 \substate_RNIVVLQ[11]  (.A(\substate[11]_net_1 ), .B(
        \substate[10]_net_1 ), .Y(N_1547));
    XNOR2 un3_counterWait_1_I_35 (.A(N_20), .B(\counterWait[12]_net_1 )
        , .Y(I_35));
    OR2 \counterWait_RNO_3[1]  (.A(\counterWait_82_tz_0[1] ), .B(
        un1_state_0_sqmuxa), .Y(N_641_tz));
    XNOR2 un3_counterWait_1_I_43 (.A(N_17), .B(\counterWait[15]_net_1 )
        , .Y(I_43));
    DFN1 \counterPixelsCaptured[7]  (.D(\counterPixelsCaptured_8[7] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[7]_net_1 ));
    OA1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_0_0  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        \counterPixelsCaptured[11]_net_1 ), .Y(ADD_9x9_fast_I1_G0N_0_0)
        );
    OR2 un3_counterWait_1_I_90 (.A(\counterWait[27]_net_1 ), .B(
        \counterWait[28]_net_1 ), .Y(\DWACT_FDEC_E[25] ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a5_0  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(mult1_un82_sum_i[6]), 
        .Y(ADD_9x9_fast_I12_Y_a5_0));
    NOR3A \substate_RNO_0[15]  (.A(\state[10]_net_1 ), .B(counterWait8)
        , .C(\substate[14]_net_1 ), .Y(N_141));
    NOR3A \state_RNO_2[6]  (.A(\state_ns_0_0_a2_1[6] ), .B(
        \cachedValue[2] ), .C(\cachedValue[1] ), .Y(
        \state_ns_0_0_a2_2[6] ));
    NOR2 \state_RNI07OT[3]  (.A(\state[3]_net_1 ), .B(\state[5]_net_1 )
        , .Y(N_126_2));
    AND2 un1_counterPixelsCaptured_16_I_96 (.A(
        \counterPixelsCaptured[4]_net_1 ), .B(
        \counterPixelsCaptured[5]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ));
    NOR2A \substate_RNO_3[11]  (.A(\substate[7]_net_1 ), .B(N_1528), 
        .Y(\substate_ns_0_0_a2_0_0[11] ));
    NOR2A \substate_RNI077Q3[10]  (.A(\substate_ns_0_a4_14_1[1] ), .B(
        N_76), .Y(N_1629));
    AO1A \counterPixelsCaptured_RNIDIS8G[8]  (.A(
        \counterPixelsCaptured[8]_net_1 ), .B(mult1_un82_sum_i[6]), .C(
        I9_un1_Y_0), .Y(\counterPixelsCaptured_RNIDIS8G[8]_net_1 ));
    OR3 \state_RNI0DN71[3]  (.A(\state[11]_net_1 ), .B(
        \state[3]_net_1 ), .C(un1_substate_10_sqmuxa_tz_2), .Y(
        un1_substate_10_sqmuxa_tz_5));
    AXO2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0_m4  
        (.A(\mult1_un103_sum[5] ), .B(ADD_9x9_fast_I17_Y_1), .C(
        \counterPixelsCaptured[5]_net_1 ), .Y(
        ADD_9x9_fast_I11_un1_Y_N_17));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I1_P0N_m1_e  
        (.A(ADD_9x9_fast_I11_Y_0_a4_0), .B(N146), .Y(
        ADD_9x9_fast_I1_P0N_m1_e));
    MX2B resv_RNO_1 (.A(counterWait8), .B(un1_substate_4_sqmuxa), .S(
        N_77), .Y(un1_substate_4_sqmuxa_3));
    OR3 un3_counterWait_1_I_93 (.A(\counterWait[27]_net_1 ), .B(
        \counterWait[28]_net_1 ), .C(\counterWait[29]_net_1 ), .Y(
        \DWACT_FDEC_E[26] ));
    OR3 un3_counterWait_1_I_79 (.A(\DWACT_FDEC_E[15] ), .B(
        \DWACT_FDEC_E[17] ), .C(\DWACT_FDEC_E[20] ), .Y(
        \DWACT_FDEC_E[21] ));
    AND2 un1_counterPixelsCaptured_16_I_93 (.A(
        \counterPixelsCaptured[6]_net_1 ), .B(
        \counterPixelsCaptured[7]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_2[0] ));
    NOR2 \counterPixelsCaptured_RNI525S[3]  (.A(N_675), .B(N_674), .Y(
        state103_0));
    DFN1E0 \counterWait[15]  (.D(N_50), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[15]_net_1 ));
    NOR2B un1_counterPixelsCaptured_16_I_92 (.A(
        \DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \counterPixelsCaptured[4]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1[0] ));
    NOR3A \state_RNI12NER[2]  (.A(counterWait_1_sqmuxa_10_4), .B(
        counterWait_0_sqmuxa_4), .C(un1_state_23), .Y(
        counterWait_1_sqmuxa_10_6));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a7  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_a7));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a1  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        ADD_9x9_fast_I5_un1_Y_a2_2), .C(
        \counterPixelsCaptured[11]_net_1 ), .Y(
        ADD_9x9_fast_I5_un1_Y_a1));
    OR3 \substate_RNO[2]  (.A(N_1576), .B(\substate_ns_0_1[2] ), .C(
        N_1574), .Y(\substate_ns[2] ));
    XOR2 un1_cachedPOINTER_3_I_9 (.A(un41lto0), .B(
        \substate_RNINGOVG[4]_net_1 ), .Y(
        \DWACT_ADD_CI_0_partial_sum_0[0] ));
    OR2 \substate_RNO_24[3]  (.A(N_69), .B(\state[10]_net_1 ), .Y(
        N_1525));
    AOI1B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_G0N_0_0  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I3_G0N_0_0)
        );
    NOR3B \counterWait_RNO[5]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_14_0)
        , .C(N_158), .Y(N_27));
    XOR2 un1_cachedPOINTER_3_I_13 (.A(\cachedPOINTER[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_13));
    NOR3B \counterWait_RNO[3]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_9), 
        .C(N_158), .Y(N_25));
    OA1 \substate_RNI6NDG2[1]  (.A(un1_substate_9_sqmuxa_1_3_tz_1), .B(
        un1_substate_9_sqmuxa_1_3_tz_2), .C(\substate[1]_net_1 ), .Y(
        un1_substate_9_sqmuxa_1_3));
    XOR2 un2_cachedValue_1_I_20 (.A(N_2_0), .B(\cachedValue[7] ), .Y(
        I_20_0));
    NOR2A \substate_RNIE1O62[9]  (.A(\substate[9]_net_1 ), .B(N_76), 
        .Y(N_1625));
    NOR2A \substate_i_RNO_12[0]  (.A(N_1510), .B(\substate_i[0]_net_1 )
        , .Y(N_1556));
    AO1D 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0N_m5_i_o2_1  
        (.A(ADD_9x9_fast_I1_G0Ntt_b0_i_1), .B(
        ADD_9x9_fast_I1_G0Ntt_N_7), .C(ADD_9x9_fast_I1_G0N_m5_i_o2_0), 
        .Y(ADD_9x9_fast_I1_G0N_m5_i_o2_1));
    DFN1 resv (.D(resv_RNO_net_1), .CLK(SCLK_c), .Q(resv_c));
    OR3 un3_counterWait_1_I_16 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[1] ), .C(\counterWait[5]_net_1 ), .Y(N_26));
    OR2A \cachedPOINTER_RNI5GHJ[0]  (.A(un41lto0), .B(
        \cachedPOINTER[1]_net_1 ), .Y(N_1500));
    XOR2 un1_counterPixelsCaptured_16_I_55 (.A(
        \counterPixelsCaptured[4]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .Y(I_55));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_1_3  
        (.A(ADD_9x9_fast_I12_Y_0_0), .B(ADD_9x9_fast_I12_Y_a1_m4), .C(
        ADD_9x9_fast_I12_Y_a2), .Y(ADD_9x9_fast_I12_Y_1_3));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a1  
        (.A(ADD_9x9_fast_I17_Y_a2_1), .B(ADD_9x9_fast_I17_Y_a1_0), .Y(
        ADD_9x9_fast_I17_Y_a1));
    NOR3A \substate_RNO_3[3]  (.A(\substate_ns_0_a4_8_1[3] ), .B(
        state20), .C(N_37), .Y(N_1588));
    AX1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I1_P0N_m2  
        (.A(N146_1), .B(ADD_9x9_fast_I1_P0N_m1_e_0), .C(
        ADD_9x9_fast_I17_Y_1_2), .Y(ADD_9x9_fast_I1_P0N_m2));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a2_2  
        (.A(ADD_9x9_fast_I9_un1_Y_a3_0), .B(
        \counterPixelsCaptured[9]_net_1 ), .C(\mult1_un75_sum[5] ), .Y(
        ADD_9x9_fast_I9_un1_Y_a2_2));
    OA1A \counterPixelsCaptured_RNO[7]  (.A(N_155), .B(N_1105), .C(
        I_61), .Y(\counterPixelsCaptured_8[7] ));
    AX1D 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I17_Y_1  
        (.A(N125), .B(I9_un1_Y), .C(ADD_9x9_fast_I17_Y_1_0), .Y(
        ADD_9x9_fast_I17_Y_1));
    NOR3A \substate_RNI4HPG6[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        un1_substate_1_sqmuxa), .C(un1_substate_10_sqmuxa), .Y(
        cachedPOINTER_0_sqmuxa_2));
    DFN1 \counterPixelsCaptured[13]  (.D(\counterPixelsCaptured_8[13] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[13]_net_1 ));
    OR2A \substate_RNI864VF[11]  (.A(state31), .B(N_1688), .Y(N_1690));
    NOR3C \state_RNO_2[9]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \state[8]_net_1 ), .C(N_1691), .Y(N_1729));
    OR3A \substate_RNI8QS2I[10]  (.A(N_52), .B(un1_state_23), .C(
        un1_counterWait_6_sqmuxa), .Y(N_106));
    OA1C \state_RNO_0[12]  (.A(un1_counterPixelsCaptured_15), .B(
        N_1695), .C(\state[12]_net_1 ), .Y(N_1735));
    OAI1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_un1_Y_0_1  
        (.A(ADD_9x9_fast_I17_Y_a1_0), .B(ADD_9x9_fast_I17_Y_a2_0), .C(
        ADD_9x9_fast_I17_Y_a2_1), .Y(ADD_9x9_fast_I9_un1_Y_0_1));
    NOR2 \substate_RNIUDCJ[12]  (.A(\substate[12]_net_1 ), .B(
        \substate[3]_net_1 ), .Y(\un43_i_a2_1_a2_1[1] ));
    NOR3B \substate_RNO_7[1]  (.A(un41lto0), .B(
        \cachedPOINTER[1]_net_1 ), .C(\state[4]_net_1 ), .Y(
        \substate_ns_0_a4_10_1[1] ));
    OR3A \substate_RNO_2[9]  (.A(\substate[5]_net_1 ), .B(N_70), .C(
        N_1493), .Y(\substate_ns_i_o4_0[9] ));
    NOR3 \substate_RNO[8]  (.A(\substate_ns_i_0[8] ), .B(N_1603), .C(
        N_1497), .Y(\substate_RNO[8]_net_1 ));
    OA1A \substate_RNIC0944[5]  (.A(N_69), .B(N_115), .C(
        un1_counterWait_1_sqmuxa_i_a2_0_2), .Y(N_109));
    NOR2 \substate_RNO_1[14]  (.A(N_111), .B(\substate[13]_net_1 ), .Y(
        N_1618));
    AND2 \substate_ns_0_a4_1_1[4]  (.A(N_1523), .B(
        \substate_ns_0_a4_1_0[4]_net_1 ), .Y(
        \substate_ns_0_a4_1_1[4]_net_1 ));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0_2  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0_2));
    AO1 \substate_RNI873B1[12]  (.A(\state[9]_net_1 ), .B(
        \substate[12]_net_1 ), .C(\state[6]_net_1 ), .Y(un1_state_23_0)
        );
    XOR2 un1_counterPixelsCaptured_16_I_64 (.A(N_673), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_64));
    OA1B \state_RNO_0[11]  (.A(un1_counterPixelsCaptured_15), .B(
        N_1695), .C(\state[11]_net_1 ), .Y(N_1734));
    DFN1 \counterPixelsCaptured[1]  (.D(\counterPixelsCaptured_8[1] ), 
        .CLK(SCLK_c), .Q(N_673));
    DFN1 \cachedPOINTER[0]  (.D(\cachedPOINTER_23[0] ), .CLK(SCLK_c), 
        .Q(un41lto0));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I15_Y  
        (.A(ADD_9x9_fast_I15_Y_0_0), .B(\mult1_un68_sum[7] ), .Y(
        \mult1_un75_sum[5] ));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0_a4  
        (.A(N146), .B(ADD_9x9_fast_I11_un1_Y_N_17), .C(
        \counterPixelsCaptured[6]_net_1 ), .Y(
        ADD_9x9_fast_I11_un1_Y_N_18));
    DFN1 \state[6]  (.D(\state_ns[6] ), .CLK(SCLK_c), .Q(
        \state[6]_net_1 ));
    XNOR2 un3_counterWait_1_I_37 (.A(N_19), .B(\counterWait[13]_net_1 )
        , .Y(I_37));
    OR2B \state_RNO_0[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1499), .Y(
        \state_ns_i_0[4] ));
    OA1A \counterWait_RNO_1[0]  (.A(N_52), .B(un1_state_23), .C(
        \counterWait_82_0_iv_0_a2_0_0[0] ), .Y(N_148));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a3  
        (.A(ADD_9x9_fast_I9_un1_Y_a3_0), .B(\mult1_un75_sum[5] ), .C(
        N146_0), .Y(ADD_9x9_fast_I9_un1_Y_a3));
    OR2 un3_counterWait_1_I_44 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[9] ), .Y(\DWACT_FDEC_E[10] ));
    DFN1 resp (.D(resp_RNO_net_1), .CLK(SCLK_c), .Q(resp_c));
    NOR3 \substate_RNO[6]  (.A(N_1598), .B(\substate_ns_i_0_0[6] ), .C(
        N_1502), .Y(\substate_RNO[6]_net_1 ));
    NOR2B resv_RNO (.A(N_808), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        resv_RNO_net_1));
    OR2 \state_RNIJORJ[12]  (.A(\state[8]_net_1 ), .B(
        \state[12]_net_1 ), .Y(un1_substate_10_sqmuxa_tz_2));
    AND3 un2_cachedValue_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \cachedValue[3] ), .C(\cachedValue[4] ), .Y(N_4_1));
    AO1 \substate_RNIHKHE1[10]  (.A(\substate[10]_net_1 ), .B(
        \state[8]_net_1 ), .C(counterWait_5_sqmuxa), .Y(
        un1_counterWait_6_sqmuxa));
    NOR2A \state_RNO_0[1]  (.A(\state_i[0]_net_1 ), .B(
        \state[1]_net_1 ), .Y(N_142));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a1_1  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a2_1)
        );
    NOR2A \substate_RNO_2[11]  (.A(\substate_ns_0_0_a2_0_0[11] ), .B(
        N_76), .Y(N_99));
    OR3 un3_counterWait_1_I_31 (.A(\DWACT_FDEC_E[6] ), .B(
        \counterWait[9]_net_1 ), .C(\counterWait[10]_net_1 ), .Y(N_21));
    XOR2 un1_counterPixelsCaptured_16_I_56 (.A(
        \counterPixelsCaptured[11]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_4[0] ), .Y(I_56));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a2_0  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        \counterPixelsCaptured[8]_net_1 ), .Y(ADD_9x9_fast_I12_Y_a2_0));
    OR3 \substate_RNO[1]  (.A(N_1628), .B(\substate_ns_0_8[1] ), .C(
        N_1564), .Y(\substate_ns[1] ));
    NOR2 \substate_RNO_7[3]  (.A(state53), .B(N_37), .Y(N_1639));
    AO1 \state_RNISD4UE[7]  (.A(resv_1_sqmuxa), .B(\state[7]_net_1 ), 
        .C(substate_4_sqmuxa), .Y(un1_substate_4_sqmuxa_0));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a1_2_1  
        (.A(ADD_9x9_fast_I11_Y_0_a1_2_0), .B(\mult1_un103_sum[5] ), .Y(
        ADD_9x9_fast_I11_Y_0_a1_2_1));
    MX2 cachedValue_tile_I_1_RNIC6HM1 (.A(\DOUT_TMP[3] ), .B(
        \DIN_REG1[3] ), .S(N_7_0), .Y(\cachedValue[3] ));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_G0N_0  
        (.A(ADD_9x9_fast_I3_G0N_2), .B(ADD_9x9_fast_I3_G0N_0_0), .C(
        ADD_9x9_fast_I3_G0N_0_1), .Y(N131));
    OR3 un3_counterWait_1_I_94 (.A(\DWACT_FDEC_E[24] ), .B(
        \DWACT_FDEC_E[23] ), .C(\DWACT_FDEC_E[26] ), .Y(N_2));
    XOR2 un1_counterPixelsCaptured_16_I_53 (.A(
        \counterPixelsCaptured[10]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_11_1[0] ), .Y(I_53));
    XOR2 un1_counterPixelsCaptured_16_I_52 (.A(
        \counterPixelsCaptured[9]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_3[0] ), .Y(I_52));
    NOR2 \state_RNICKRJ[11]  (.A(\state[11]_net_1 ), .B(
        \state[2]_net_1 ), .Y(N_109_3));
    OR3 \substate_RNO_5[1]  (.A(N_1635), .B(N_1650), .C(
        \substate_ns_0_o2_2_0[1] ), .Y(\substate_ns_0_o2_2_1[1] ));
    AOI1 \state_RNISDNLV[7]  (.A(un1_incp_1_sqmuxa), .B(
        \state[7]_net_1 ), .C(counterWait_4_sqmuxa), .Y(
        counterWait_1_sqmuxa_10_13));
    NOR2B \counterPixelsCaptured_RNI64AO1[0]  (.A(state103_0), .B(
        un1_counterPixelsCaptured_15_1), .Y(
        un1_counterPixelsCaptured_15_3_1));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a4  
        (.A(ADD_9x9_fast_I9_un1_Y_a5_0), .B(N146_0), .C(
        \mult1_un75_sum[5] ), .Y(ADD_9x9_fast_I9_un1_Y_a4));
    DFN1 startAdcCapture (.D(startAdcCapture_RNO_net_1), .CLK(SCLK_c), 
        .Q(stonyman_0_startAdcCapture));
    OR2 \counterWait_RNIPI22[25]  (.A(\counterWait[28]_net_1 ), .B(
        \counterWait[25]_net_1 ), .Y(counterWait8lt30_4));
    OR2 un3_counterWait_1_I_25 (.A(\counterWait[8]_net_1 ), .B(
        \DWACT_FDEC_E[4] ), .Y(N_23));
    XOR2 un2_cachedValue_1_I_9 (.A(N_6_0), .B(\cachedValue[3] ), .Y(
        I_9_0));
    AX1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a1_m2  
        (.A(\mult1_un75_sum[5] ), .B(ADD_9x9_fast_I12_Y_a1_m1_e_1), .C(
        ADD_9x9_fast_I17_Y_1_1), .Y(ADD_9x9_fast_I12_Y_a1_m2));
    OR2A \counterWait_RNO_5[1]  (.A(N_52), .B(un1_counterWait_6_sqmuxa)
        , .Y(\counterWait_82_tz_0[1] ));
    AO1D \state_RNO_1[6]  (.A(N_1105), .B(N_155), .C(N_113), .Y(
        \state_ns_0_0_0[6] ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_1  
        (.A(ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a1), .B(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2), .C(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_1));
    NOR3A \substate_RNI4CP61[13]  (.A(\un43_i_a2_0_a2_4_a2_1[0] ), .B(
        \substate[13]_net_1 ), .C(\substate[4]_net_1 ), .Y(
        \un43_i_a2_0_a2_4_a2_3[0] ));
    NOR3B \counterWait_RNO[17]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_49), 
        .C(N_158), .Y(N_54));
    DFN1E0 \counterWait[1]  (.D(\counterWait_82[1] ), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[1]_net_1 ));
    NOR3A \substate_i_RNO_1[0]  (.A(un1_counterPixelsCaptured_15_3), 
        .B(N_677), .C(state103), .Y(state104));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_1  
        (.A(ADD_9x9_fast_I12_Y_a1), .B(ADD_9x9_fast_I12_Y_a0), .C(
        ADD_9x9_fast_I12_Y_1), .Y(N148_0));
    OR2B \substate_RNIBHTK[3]  (.A(\substate[3]_net_1 ), .B(
        \state[2]_net_1 ), .Y(N_1974));
    NOR2B \state_RNO_2[10]  (.A(\state[9]_net_1 ), .B(counterWait8), 
        .Y(N_103));
    NOR2A \counterWait_RNO_2[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        N_1972), .Y(N_149));
    DFN1 \state[2]  (.D(\state_RNO[2]_net_1 ), .CLK(SCLK_c), .Q(
        \state[2]_net_1 ));
    OA1A \substate_RNI4F7N1[11]  (.A(N_1441), .B(\substate[11]_net_1 ), 
        .C(N_2553_tz), .Y(\substate_RNI4F7N1[11]_net_1 ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0  
        (.A(ADD_9x9_fast_I11_un1_Y_N_18), .B(
        ADD_9x9_fast_I11_un1_Y_N_20), .C(ADD_9x9_fast_I11_un1_Y_N_19), 
        .Y(ADD_9x9_fast_I11_un1_Y_m10_0));
    XOR2 un2_cachedValue_1_I_7 (.A(N_7), .B(\cachedValue[2] ), .Y(
        I_7_0));
    NOR3B \substate_RNO_14[1]  (.A(\state[2]_net_1 ), .B(state20), .C(
        N_37), .Y(N_1571));
    AOI1B \substate_RNI0TAQD_0[2]  (.A(state70_3), .B(state70_2), .C(
        \substate[2]_net_1 ), .Y(resv_1_sqmuxa));
    AO1C \counterWait_RNO[20]  (.A(N_158), .B(I_59_0), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_60));
    DFN1E0 \counterWait[24]  (.D(N_68), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[24]_net_1 ));
    OR3 un3_counterWait_1_I_58 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[14] ), .Y(N_12));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y  
        (.A(ADD_9x9_fast_I11_Y_2), .B(I11_un1_Y_1), .Y(N146_2));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I15_Y  
        (.A(ADD_9x9_fast_I15_Y_0_1), .B(\mult1_un61_sum[8] ), .Y(
        \mult1_un68_sum[5] ));
    NOR3B \counterWait_RNO[18]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        I_53_0), .C(N_158), .Y(N_56));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_0_3  
        (.A(ADD_9x9_fast_I9_un1_Y_a0_3), .B(ADD_9x9_fast_I9_un1_Y_a2_2)
        , .S(N146_0), .Y(ADD_9x9_fast_I9_un1_Y_0_3));
    NOR2 state103_3 (.A(\counterPixelsCaptured[6]_net_1 ), .B(
        \counterPixelsCaptured[5]_net_1 ), .Y(state103_3_net_1));
    OR3 un3_counterWait_1_I_88 (.A(\DWACT_FDEC_E[24] ), .B(
        \DWACT_FDEC_E[23] ), .C(\counterWait[27]_net_1 ), .Y(N_4_0));
    NOR2A \state_RNIENVQ[2]  (.A(un1_counterWait_1_sqmuxa_i_a2_1_0), 
        .B(\state[2]_net_1 ), .Y(un1_counterWait_1_sqmuxa_i_a2_1_2));
    OA1A \counterPixelsCaptured_RNO[0]  (.A(N_155), .B(N_1105), .C(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(
        \counterPixelsCaptured_8[0] ));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_3_tz  
        (.A(\counterPixelsCaptured[5]_net_1 ), .B(\mult1_un103_sum[5] )
        , .Y(ADD_9x9_fast_I12_Y_1_tz));
    DFN1 \counterPixelsCaptured[3]  (.D(\counterPixelsCaptured_8[3] ), 
        .CLK(SCLK_c), .Q(N_675));
    NOR2A \substate_RNO_1[7]  (.A(\substate_ns_i_a4_0_1[7] ), .B(N_75), 
        .Y(N_1602));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a1  
        (.A(ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2_1), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        \counterPixelsCaptured[12]_net_1 ), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a1));
    XOR2 un1_cachedPOINTER_3_I_14 (.A(\cachedPOINTER[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(I_14));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I15_Y_0  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(ADD_9x9_fast_I15_Y_0_1));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a2  
        (.A(ADD_9x9_fast_I12_Y_a2_0), .B(
        \counterPixelsCaptured[9]_net_1 ), .C(\mult1_un82_sum[7] ), .Y(
        ADD_9x9_fast_I12_Y_a2));
    XNOR2 un3_counterWait_1_I_5 (.A(\counterWait[0]_net_1 ), .B(
        \counterWait[1]_net_1 ), .Y(I_5));
    AND2 un1_counterPixelsCaptured_16_I_100 (.A(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_1[0] ));
    AO1 \state_RNI4JVK3[7]  (.A(resp_1_sqmuxa), .B(\state[7]_net_1 ), 
        .C(un1_substate_0_sqmuxa_1_0), .Y(un1_substate_0_sqmuxa_1));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a0_1  
        (.A(ADD_9x9_fast_I9_un1_Y_a5_0), .B(
        \counterPixelsCaptured[9]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_a0_1));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a0_0  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(
        \counterPixelsCaptured[8]_net_1 ), .Y(
        ADD_9x9_fast_I12_Y_a0_0_0));
    AO1 \state_i_RNIH4GK3[0]  (.A(N_1493), .B(counterWait8), .C(
        \substate_ns_0_3_0_tz_0[1] ), .Y(\substate_ns_0_3_0_tz[1] ));
    DFN1 \cachedValue_tile_DIN_REG1[6]  (.D(\state_RNICB4DE[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[6] ));
    OR3 un3_counterWait_1_I_8 (.A(\counterWait[0]_net_1 ), .B(
        \counterWait[1]_net_1 ), .C(\counterWait[2]_net_1 ), .Y(N_29_0)
        );
    AOI1B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_un1_Y_0_0  
        (.A(ADD_9x9_fast_I9_un1_Y_a3_0_0), .B(
        \counterPixelsCaptured[14]_net_1 ), .C(
        \counterPixelsCaptured[10]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_0_0_0));
    AND3 un2_cachedValue_1_I_8 (.A(\cachedValue[0] ), .B(
        \cachedValue[1] ), .C(\cachedValue[2] ), .Y(N_6_0));
    DFN1E0 \counterWait[9]  (.D(N_36), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[9]_net_1 ));
    NOR2A \substate_RNO_4[5]  (.A(N_1501), .B(N_2552_tz), .Y(
        \substate_ns_0_a4_0_0[5] ));
    AO1A \substate_RNO_0[4]  (.A(N_1510), .B(
        \substate_ns_0_a4_1_1[4]_net_1 ), .C(N_1592), .Y(
        \substate_ns_0_0[4] ));
    NOR2B un1_counterPixelsCaptured_16_I_88 (.A(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .B(
        \counterPixelsCaptured[14]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_6[0] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a2_1  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .Y(
        ADD_9x9_fast_I5_un1_Y_a2_1));
    NOR3B \substate_RNO_1[4]  (.A(N_1592_1), .B(N_1524), .C(N_1493), 
        .Y(N_1592));
    MX2 cachedValue_tile_I_1_RNID6HM1 (.A(\DOUT_TMP[4] ), .B(
        \DIN_REG1[4] ), .S(N_7_0), .Y(\cachedValue[4] ));
    NOR2B cachedValue_tile_I_1_RNI4J9KD (.A(state31_0_a2_0), .B(N_122), 
        .Y(state31));
    XNOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I15_Y_1  
        (.A(\counterPixelsCaptured[5]_net_1 ), .B(ADD_9x9_fast_I17_Y_0)
        , .C(N148_0), .Y(\mult1_un117_sum_1[5] ));
    OR2B \state_RNIK079E[8]  (.A(resv_0_sqmuxa), .B(\state[8]_net_1 ), 
        .Y(counterWait_5_sqmuxa_2_i));
    AO1A \substate_RNO_1[6]  (.A(counterWait8), .B(
        \substate_ns_i_a4_0[6] ), .C(\substate_ns_i_0[6] ), .Y(
        \substate_ns_i_0_0[6] ));
    AO1D \state_RNINQQ91[4]  (.A(\state[3]_net_1 ), .B(
        \state[4]_net_1 ), .C(N_1442), .Y(\state_RNINQQ91[4]_net_1 ));
    AXOI7 writeEnable_RNO_0 (.A(\substate[15]_net_1 ), .B(un1_state_5), 
        .C(stonyman_0_writeEnable), .Y(N_811));
    AO1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_2_0  
        (.A(ADD_9x9_fast_I5_un1_Y_a2_2), .B(ADD_9x9_fast_I5_un1_Y_a2_1)
        , .C(ADD_9x9_fast_I5_un1_Y_a3), .Y(ADD_9x9_fast_I11_Y_2_0_0));
    NOR2A cachedValue_tile_I_1_RNI15T54 (.A(N_114), .B(
        \cachedValue[0] ), .Y(I_1_RNI15T54));
    OR3 un3_counterWait_1_I_66 (.A(\DWACT_FDEC_E[15] ), .B(
        \counterWait[21]_net_1 ), .C(\counterWait[22]_net_1 ), .Y(
        \DWACT_FDEC_E[33] ));
    NOR3B \counterWait_RNO[14]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_40), 
        .C(N_158), .Y(N_48));
    XOR2 un2_cachedValue_1_I_5 (.A(\cachedValue[0] ), .B(
        \cachedValue[1] ), .Y(I_5_0_0));
    OR3 un3_counterWait_1_I_27 (.A(\DWACT_FDEC_E[4] ), .B(
        \counterWait[8]_net_1 ), .C(\counterWait[9]_net_1 ), .Y(N_22));
    OR3A \cachedPOINTER_RNIQJD21[2]  (.A(\state[7]_net_1 ), .B(
        \cachedPOINTER[1]_net_1 ), .C(\cachedPOINTER[2]_net_1 ), .Y(
        N_1506));
    OA1 \substate_RNO_2[1]  (.A(\substate_ns_0_a4_0_1[1] ), .B(
        \substate_ns_0_a4_10_1[1] ), .C(N_1632), .Y(
        \substate_ns_0_5_0[1] ));
    AO1 \substate_RNIJPUN7[1]  (.A(N_1631), .B(
        \substate_ns_0_3_0_tz[1] ), .C(N_1629), .Y(
        \substate_ns_0_3_0_0[1] ));
    OR2 \state_RNIT5V9[11]  (.A(\state[12]_net_1 ), .B(
        \state[11]_net_1 ), .Y(N_1518));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a1_m1_e_1  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        ADD_9x9_fast_I11_Y_3), .C(I11_un1_Y), .Y(
        ADD_9x9_fast_I12_Y_a1_m1_e_1));
    AO1C \counterWait_RNO[15]  (.A(N_158), .B(I_43), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_50));
    DFN1E0 \counterWait[8]  (.D(N_34), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[8]_net_1 ));
    DFN1 \substate[7]  (.D(\substate_RNO[7]_net_1 ), .CLK(SCLK_c), .Q(
        \substate[7]_net_1 ));
    NOR3B \state_RNIGNKO6[1]  (.A(counterWait_0_sqmuxa_3_2), .B(
        counterWait_0_sqmuxa_4_2), .C(N_1437), .Y(
        counterWait_0_sqmuxa_3));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a2  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .C(
        \counterPixelsCaptured[11]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_a2));
    OR2 un3_counterWait_1_I_21 (.A(\counterWait[6]_net_1 ), .B(
        \counterWait[7]_net_1 ), .Y(\DWACT_FDEC_E[3] ));
    DFN1E1 \px1_out[1]  (.D(adc081s101_1_dataout[1]), .CLK(SCLK_c), .E(
        substate_25_sqmuxa), .Q(stonyman_0_px1_out[1]));
    AO1 \substate_RNO_11[3]  (.A(N_1553), .B(N_1637), .C(N_1581), .Y(
        \substate_ns_0_0[3] ));
    OR2 \state_RNI6RF02[9]  (.A(N_70), .B(N_69), .Y(N_71));
    MX2 cachedValue_tile_I_1_RNIG6HM1 (.A(\DOUT_TMP[7] ), .B(
        \DIN_REG1[7] ), .S(N_7_0), .Y(\cachedValue[7] ));
    OR3C \state_RNO_3[2]  (.A(\state[1]_net_1 ), .B(
        \substate[10]_net_1 ), .C(state9), .Y(N_1700));
    NOR3B \state_RNI99F11[10]  (.A(\state[10]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(N_1973), .Y(substate_25_sqmuxa));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a5_1  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(
        ADD_9x9_fast_I9_un1_Y_a5_0), .Y(ADD_9x9_fast_I9_un1_Y_a5_1));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I1_G0N  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        \mult1_un96_sum_i[7] ), .Y(N125));
    NOR2B incv_RNO (.A(N_810), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        incv_RNO_net_1));
    NOR2B \state_RNIMHVI7[6]  (.A(I_7_0), .B(N_114), .Y(
        \state_RNIMHVI7[6]_net_1 ));
    NOR2 \state_RNI57OT[6]  (.A(\state[6]_net_1 ), .B(\state[7]_net_1 )
        , .Y(N_1127));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a5  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .C(
        \counterPixelsCaptured[11]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_a5));
    NOR2 state103_4 (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        \counterPixelsCaptured[7]_net_1 ), .Y(state103_4_net_1));
    OR2 un3_counterWait_1_I_78 (.A(\counterWait[24]_net_1 ), .B(
        \counterWait[25]_net_1 ), .Y(\DWACT_FDEC_E[20] ));
    OR2 \counterWait_RNIIQ12[20]  (.A(\counterWait[20]_net_1 ), .B(
        \counterWait[17]_net_1 ), .Y(counterWait8lt30_2));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I15_Y_0  
        (.A(\counterPixelsCaptured[6]_net_1 ), .B(
        \counterPixelsCaptured[7]_net_1 ), .Y(ADD_9x9_fast_I15_Y_0));
    NOR3C \substate_RNO_23[3]  (.A(\state[3]_net_1 ), .B(
        \cachedPOINTER[1]_net_1 ), .C(\substate_ns_0_a4_7_2_0[3] ), .Y(
        \substate_ns_0_a4_7_2[3] ));
    DFN1E1 \px1_out[0]  (.D(adc081s101_1_dataout[0]), .CLK(SCLK_c), .E(
        substate_25_sqmuxa), .Q(stonyman_0_px1_out[0]));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_0_0  
        (.A(ADD_9x9_fast_I11_Y_0_0_tz_tz), .B(\mult1_un103_sum[5] ), 
        .Y(ADD_9x9_fast_I11_Y_0_0_0));
    NOR3B \counterWait_RNO[13]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_37), 
        .C(N_158), .Y(N_46));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un61_sum_ADD_9x9_fast_I17_Y_2_tz  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a0_1)
        );
    OR2 un3_counterWait_1_I_15 (.A(\counterWait[3]_net_1 ), .B(
        \counterWait[4]_net_1 ), .Y(\DWACT_FDEC_E[1] ));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I15_Y  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(
        \counterPixelsCaptured[10]_net_1 ), .C(N146_0), .Y(
        \mult1_un82_sum[5] ));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_0  
        (.A(\mult1_un96_sum[6] ), .B(\mult1_un96_sum[5] ), .S(
        \mult1_un96_sum_i[7] ), .Y(ADD_9x9_fast_I11_un1_Y_0));
    MX2 \substate_RNO_0[14]  (.A(\substate[14]_net_1 ), .B(
        \state[10]_net_1 ), .S(\substate[13]_net_1 ), .Y(N_1550));
    DFN1 \substate[4]  (.D(\substate_ns[4] ), .CLK(SCLK_c), .Q(
        \substate[4]_net_1 ));
    XNOR2 un3_counterWait_1_I_7 (.A(N_30), .B(\counterWait[2]_net_1 ), 
        .Y(I_7));
    OA1A \counterPixelsCaptured_RNO[1]  (.A(N_155), .B(N_1105), .C(
        I_64), .Y(\counterPixelsCaptured_8[1] ));
    NOR3B \substate_RNO_7[2]  (.A(\substate[2]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(N_69), .Y(
        \substate_ns_0_a4_0_1[2] ));
    NOR3 \substate_RNINGOVG[4]  (.A(cachedPOINTER_0_sqmuxa_1), .B(
        cachedPOINTER_0_sqmuxa_2), .C(cachedPOINTER_0_sqmuxa), .Y(
        \substate_RNINGOVG[4]_net_1 ));
    OR2A writeEnable_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_811), .Y(
        writeEnable_RNO_net_1));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y  
        (.A(\counterPixelsCaptured[4]_net_1 ), .B(
        ADD_9x9_fast_I1_P0N_m3), .Y(I9_un1_Y_2));
    OR2 \state_RNIU6OT[5]  (.A(\state[5]_net_1 ), .B(\state[1]_net_1 ), 
        .Y(un1_substate_9_sqmuxa_1_3_tz_1));
    DFN1E0 \counterWait[2]  (.D(N_23_0), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[2]_net_1 ));
    DFN1 \cachedValue_tile_DIN_REG1[2]  (.D(\state_RNIMHVI7[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[2] ));
    OA1A \substate_RNI5ML461[5]  (.A(\substate_RNINGOVG[4]_net_1 ), .B(
        incp_2_sqmuxa), .C(\DWACT_ADD_CI_0_partial_sum_0[0] ), .Y(
        \cachedPOINTER_23[0] ));
    NOR2B \substate_RNI4M79[3]  (.A(\substate[3]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_1637));
    NOR3 \substate_RNO_20[1]  (.A(N_1518), .B(\cachedPOINTER[2]_net_1 )
        , .C(N_1528), .Y(\substate_ns_0_a4_11_1[1] ));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a1_0  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(
        ADD_9x9_fast_I2_P0N_a1_0));
    DFN1E0 \counterWait[14]  (.D(N_48), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[14]_net_1 ));
    NOR3C cachedValue_tile_I_1_RNI4J9KD_1 (.A(state20_2), .B(state31_1)
        , .C(state20_3), .Y(state20));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_un1_Y_0  
        (.A(ADD_9x9_fast_I9_un1_Y_0_0_0), .B(ADD_9x9_fast_I9_un1_Y_0_1)
        , .C(ADD_9x9_fast_I9_un1_Y_a2), .Y(I9_un1_Y_1));
    NOR3C state103_9_RNILUKQ1 (.A(state103_6), .B(state103_5), .C(
        state103_9_net_1), .Y(state103_12));
    DFN1 \cachedValue_tile_WADDR_REG1[2]  (.D(\cachedPOINTER[2]_net_1 )
        , .CLK(SCLK_c), .Q(\WADDR_REG1[2] ));
    AO1C \counterWait_RNO[7]  (.A(N_158), .B(I_20), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_32));
    NOR3 cachedValue_tile_I_1_RNIGP4Q6 (.A(\cachedValue[2] ), .B(
        \cachedValue[1] ), .C(N_80), .Y(state70_3));
    OA1C \substate_i_RNO[0]  (.A(\substate_ns_0_a4_5_0[0] ), .B(
        state104), .C(\substate_ns_0_5[0] ), .Y(\substate_ns[0] ));
    OR2A startAdcCapture_RNO_1 (.A(\state[10]_net_1 ), .B(N_120), .Y(
        un1_state_2));
    NOR2A \substate_i_RNIA4R6C[0]  (.A(counterWait_1_sqmuxa_10_3), .B(
        counterWait_0_sqmuxa_3), .Y(counterWait_1_sqmuxa_10_4));
    AO1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I9_un1_Y_m3_0  
        (.A(ADD_9x9_fast_I9_un1_Y_m1), .B(
        \counterPixelsCaptured[9]_net_1 ), .C(
        \counterPixelsCaptured[8]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_m3_0));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a3_2  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(
        ADD_9x9_fast_I5_un1_Y_a3_2));
    OA1A \counterPixelsCaptured_RNO[10]  (.A(N_155), .B(N_1105), .C(
        I_53), .Y(\counterPixelsCaptured_8[10] ));
    XNOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I17_Y  
        (.A(N146_1), .B(ADD_9x9_fast_I17_Y_1_2), .C(N148), .Y(
        \mult1_un96_sum_i[7] ));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_un1_Y_a2  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .C(ADD_9x9_fast_I17_Y_a3_0)
        , .Y(ADD_9x9_fast_I9_un1_Y_a2));
    NOR3B \substate_RNO_10[3]  (.A(\state[2]_net_1 ), .B(N_1626), .C(
        N_1499), .Y(\substate_ns_0_a4_8_1[3] ));
    NOR2 \state_RNIOUBF2[6]  (.A(N_71), .B(\state[6]_net_1 ), .Y(N_114)
        );
    XA1A \cachedValue_tile_WADDR_REG1_RNIHM3G[2]  (.A(
        \cachedPOINTER[2]_net_1 ), .B(\WADDR_REG1[2] ), .C(N_5_0), .Y(
        I_5_0));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0  
        (.A(ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0_2), .B(state103_7), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a0));
    NOR3B \substate_i_RNIQT4R[0]  (.A(\substate_i[0]_net_1 ), .B(
        N_1442), .C(\substate[2]_net_1 ), .Y(N_1437));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_Y_0  
        (.A(\counterPixelsCaptured_RNIDIS8G[8]_net_1 ), .B(r_m1), .S(
        ADD_9x9_fast_I9_Y_m3), .Y(N150_1));
    NOR2B un1_cachedPOINTER_3_I_15 (.A(\DWACT_ADD_CI_0_TMP_0[0] ), .B(
        \cachedPOINTER[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1_0[0] ));
    NOR3 \state_RNIFQTJ1[1]  (.A(N_70), .B(N_1493), .C(
        \state[1]_net_1 ), .Y(N_1626));
    OR3A resp_RNO_1 (.A(un1_counterWait_0_sqmuxa_1), .B(resp_0_sqmuxa), 
        .C(cachedPOINTER_0_sqmuxa), .Y(un1_counterWait_0_sqmuxa_3));
    NOR3B \substate_RNO_19[3]  (.A(N_1637), .B(N_1525), .C(N_1493), .Y(
        N_1581));
    NOR2B cachedValue_tile_I_1_RNILC2D3 (.A(\cachedValue[1] ), .B(
        \cachedValue[2] ), .Y(state31_1));
    AX1D 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I16_Y_m2_0  
        (.A(I11_un1_Y), .B(ADD_9x9_fast_I11_Y_3), .C(
        \mult1_un75_sum[5] ), .Y(ADD_9x9_fast_I16_Y_m2_0));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a4_0  
        (.A(\mult1_un103_sum[5] ), .B(\counterPixelsCaptured[6]_net_1 )
        , .Y(ADD_9x9_fast_I11_Y_0_a4_0));
    OR2 \state_RNIURN21[12]  (.A(N_1499), .B(\state[12]_net_1 ), .Y(
        N_2555_tz));
    AO1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I9_Y  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(
        ADD_9x9_fast_I1_G0N_N_13_i), .C(ADD_9x9_fast_I9_un1_Y_m3_0), 
        .Y(N150));
    AO1 \substate_RNO[11]  (.A(\substate_ns_0_0_a2_0[11] ), .B(N_78), 
        .C(N_99), .Y(\substate_ns[11] ));
    NOR2 \substate_RNI10MQ[12]  (.A(\substate[12]_net_1 ), .B(
        \substate[11]_net_1 ), .Y(\un43_i_a2_0_a2_1[3] ));
    NOR3 \substate_RNIU55I[5]  (.A(\substate[4]_net_1 ), .B(
        \substate[5]_net_1 ), .C(\substate[7]_net_1 ), .Y(
        un1_counterWait_1_sqmuxa_i_a2_1));
    NOR3B \substate_RNO_0[2]  (.A(N_1494), .B(N_1625), .C(N_1501), .Y(
        N_1576));
    AOI1B \substate_i_RNIFNV31[0]  (.A(N_1442), .B(
        \substate_i[0]_net_1 ), .C(\state[5]_net_1 ), .Y(
        counterWait_0_sqmuxa_2));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I9_un1_Y_m1  
        (.A(\mult1_un68_sum[5] ), .B(ADD_9x9_fast_I9_un1_Ytt_m4), .Y(
        ADD_9x9_fast_I9_un1_Y_m1));
    NOR3B \substate_RNO_16[3]  (.A(\state[4]_net_1 ), .B(state9), .C(
        \state[3]_net_1 ), .Y(\substate_ns_0_a4_9_1[3] ));
    XNOR2 un3_counterWait_1_I_32 (.A(N_21), .B(\counterWait[11]_net_1 )
        , .Y(I_32));
    XNOR2 un3_counterWait_1_I_46 (.A(N_16), .B(\counterWait[16]_net_1 )
        , .Y(I_46));
    MX2 busy_RNO_0 (.A(N_155), .B(stonyman_0_busy), .S(un1_state_10), 
        .Y(N_809));
    OR3 \state_RNIGRJH1[5]  (.A(\state[8]_net_1 ), .B(\state[5]_net_1 )
        , .C(un1_substate_1_sqmuxa_tz_1), .Y(
        un1_substate_1_sqmuxa_tz_3));
    NOR2A \counterPixelsCaptured_RNI27HH4N1[0]  (.A(
        un1_counterPixelsCaptured_15_3), .B(N_677), .Y(
        un1_counterPixelsCaptured_15));
    NOR3C \substate_RNI0TAQD[2]  (.A(state70_2), .B(state70_3), .C(
        \substate[2]_net_1 ), .Y(resv_0_sqmuxa));
    AND2 un1_counterPixelsCaptured_16_I_94 (.A(
        \counterPixelsCaptured[8]_net_1 ), .B(
        \counterPixelsCaptured[9]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ));
    AO1 \substate_RNO[4]  (.A(N_1592_1), .B(N_75), .C(
        \substate_ns_0_0[4] ), .Y(\substate_ns[4] ));
    OR3 \substate_RNO_1[2]  (.A(N_1577), .B(N_1578), .C(N_1575), .Y(
        \substate_ns_0_1[2] ));
    OR3 un3_counterWait_1_I_50 (.A(\counterWait[15]_net_1 ), .B(
        \counterWait[16]_net_1 ), .C(\counterWait[17]_net_1 ), .Y(
        \DWACT_FDEC_E[12] ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_0_2  
        (.A(ADD_9x9_fast_I9_un1_Y_0_0), .B(ADD_9x9_fast_I9_un1_Y_a1), 
        .C(ADD_9x9_fast_I9_un1_Y_a3), .Y(ADD_9x9_fast_I9_un1_Y_0_2));
    AND2 \substate_ns_0_a4_1_0[4]  (.A(N_1506), .B(N_1643), .Y(
        \substate_ns_0_a4_1_0[4]_net_1 ));
    NOR2B \state_RNIEJSD2[2]  (.A(\state[2]_net_1 ), .B(led_0_c[1]), 
        .Y(counterWait_0_sqmuxa_4_0));
    GND GND_i (.Y(GND));
    OR3 un3_counterWait_1_I_80 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[9] ), .C(\DWACT_FDEC_E[12] ), .Y(
        \DWACT_FDEC_E[30] ));
    XNOR2 un3_counterWait_1_I_53 (.A(N_14_0), .B(
        \counterWait[18]_net_1 ), .Y(I_53_0));
    XNOR2 un3_counterWait_1_I_17 (.A(N_26), .B(\counterWait[6]_net_1 ), 
        .Y(I_17));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a3  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .C(
        \counterPixelsCaptured[15]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a3));
    AO1 \substate_RNO_9[1]  (.A(N_1625), .B(\substate_ns_0_5_tz[1] ), 
        .C(N_1571), .Y(\substate_ns_0_2[1] ));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_2  
        (.A(ADD_9x9_fast_I11_Y_2_1), .B(ADD_9x9_fast_I11_Y_2_0_0), .Y(
        ADD_9x9_fast_I11_Y_2_0));
    OR2 \state_RNIGCJM1[12]  (.A(N_2555_tz), .B(N_70), .Y(N_1524));
    OR3 un3_counterWait_1_I_83 (.A(\counterWait[24]_net_1 ), .B(
        \counterWait[25]_net_1 ), .C(\counterWait[26]_net_1 ), .Y(
        \DWACT_FDEC_E[22] ));
    NOR3B \counterWait_RNO[16]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_46), 
        .C(N_158), .Y(N_1965));
    MX2A startAdcCapture_RNO_2 (.A(\substate[13]_net_1 ), .B(AND2_1_Y), 
        .S(\substate[14]_net_1 ), .Y(N_120));
    AXOI7 \substate_RNI10QF2[11]  (.A(\substate[11]_net_1 ), .B(
        counterWait8), .C(\state[10]_net_1 ), .Y(N_1694));
    NOR3A \substate_RNIV1H72[5]  (.A(\un43_i_a2_0_a2_1[2] ), .B(N_61), 
        .C(N_1547), .Y(led_0_c[2]));
    OR2 un3_counterWait_1_I_11 (.A(\counterWait[3]_net_1 ), .B(
        \DWACT_FDEC_E[0] ), .Y(N_28));
    DFN1E0 \counterWait[29]  (.D(N_79), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[29]_net_1 ));
    NOR2B \substate_RNIUGAI[11]  (.A(\substate[11]_net_1 ), .B(
        \state[11]_net_1 ), .Y(counterWait_5_sqmuxa));
    DFN1 \state[5]  (.D(\state_RNO[5]_net_1 ), .CLK(SCLK_c), .Q(
        \state[5]_net_1 ));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_Y  
        (.A(ADD_9x9_fast_I11_Y_0), .B(I11_un1_Y_0), .Y(N146));
    NOR3B \substate_RNIQIIO3_0[15]  (.A(\state[10]_net_1 ), .B(
        \substate[15]_net_1 ), .C(state103), .Y(
        \substate_ns_0_a4_13_1[1] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a0_1  
        (.A(ADD_9x9_fast_I12_Y_a0_0), .B(\mult1_un103_sum[5] ), .Y(
        ADD_9x9_fast_I11_Y_0_a0_1));
    DFN1E0 \counterWait[28]  (.D(N_1968), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[28]_net_1 ));
    NOR3C \substate_RNO_0[6]  (.A(state70_2), .B(state70_3), .C(
        \substate_ns_i_a4_0_0[6] ), .Y(N_1598));
    OR3 \state_RNIFHCA2[1]  (.A(\state[1]_net_1 ), .B(\state[7]_net_1 )
        , .C(un1_substate_10_sqmuxa_tz_4), .Y(
        un1_substate_10_sqmuxa_tz_6));
    NOR3A \cachedValue_tile_WADDR_REG1_RNIT5D61[0]  (.A(I_5_0), .B(
        I_4_1), .C(I_4_0), .Y(N_7_0));
    AO1A \substate_RNO_11[1]  (.A(un42lto2), .B(N_1643), .C(
        \substate_ns_0_3_0_0[1] ), .Y(\substate_ns_0_o2_2_0[1] ));
    OR3 un3_counterWait_1_I_39 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[8] ), .Y(N_18));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_G0N_a2_0  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(
        ADD_9x9_fast_I3_G0N_a2_0));
    NOR3A \substate_RNO[7]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1601), 
        .C(N_1602), .Y(\substate_RNO[7]_net_1 ));
    NOR3 \substate_RNIU7EP[5]  (.A(\substate[4]_net_1 ), .B(
        \substate[5]_net_1 ), .C(\substate[12]_net_1 ), .Y(
        \un43_i_a2_0_a2_1[2] ));
    AXO3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_G0N_0_1  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        \counterPixelsCaptured[15]_net_1 ), .Y(ADD_9x9_fast_I3_G0N_0_1)
        );
    OR2 \cachedPOINTER_RNI5GHJ_0[0]  (.A(un41lto0), .B(
        \cachedPOINTER[1]_net_1 ), .Y(un42lto2_1));
    NOR3A \state_RNI53G02[5]  (.A(\un1_state_4_i_a2_0_a2_0[2] ), .B(
        \state[5]_net_1 ), .C(\state[12]_net_1 ), .Y(led_net_0_c[2]));
    NOR3A \state_RNO[5]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1718), .C(
        N_1717), .Y(\state_RNO[5]_net_1 ));
    NOR2A \state_RNILAKC1[4]  (.A(N_1127), .B(\state[4]_net_1 ), .Y(
        \un1_state_4_i_a2_0_a2_0[2] ));
    NOR3B \counterWait_RNO[21]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_62), 
        .C(N_158), .Y(N_62));
    AND3 un2_cachedValue_1_I_18 (.A(\cachedValue[3] ), .B(
        \cachedValue[4] ), .C(\cachedValue[5] ), .Y(\DWACT_FINC_E[2] ));
    NOR3B \state_RNIJ2CF2[1]  (.A(\un1_state_4_i_a2_0_a2_0[0] ), .B(
        \un1_state_4_i_a2_0_a2_1[0] ), .C(\state[1]_net_1 ), .Y(
        led_net_0_c[0]));
    NOR2 \substate_RNI4QCJ[6]  (.A(\substate[6]_net_1 ), .B(
        \substate[15]_net_1 ), .Y(\un43_i_a2_0_a2_4_a2_1[0] ));
    NOR2A \substate_RNI48FP[10]  (.A(N_1441), .B(\substate[10]_net_1 ), 
        .Y(N_1445));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I17_Y_0  
        (.A(ADD_9x9_fast_I17_Y_1_1), .B(N146_0), .Y(
        ADD_9x9_fast_I17_Y_0_0));
    NOR2A \counterPixelsCaptured_RNI99T[15]  (.A(
        \counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .Y(state103_6));
    NOR2 \state_RNIFORJ[4]  (.A(\state[4]_net_1 ), .B(
        \state[12]_net_1 ), .Y(un1_counterWait_1_sqmuxa_i_a2_0_0));
    OR2 \state_i_RNIOBEI4[0]  (.A(N_153), .B(N_1497), .Y(N_1502));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I16_Y  
        (.A(N148_0), .B(ADD_9x9_fast_I17_Y_0), .C(ADD_9x9_fast_I16_Y_2)
        , .Y(N_678));
    DFN1 \cachedValue_tile_DIN_REG1[1]  (.D(\state_RNIBBES5[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[1] ));
    NOR2B \substate_RNO_1[3]  (.A(N_1632), .B(
        \substate_ns_0_7_0_tz[3] ), .Y(\substate_ns_0_7_0[3] ));
    AO1C \substate_RNISHHB2[7]  (.A(N_1518), .B(un1_reset_i_a2_0_2_1), 
        .C(\substate[7]_net_1 ), .Y(un1_reset_i_0_tz));
    NOR3A \substate_i_RNIQC6E5[0]  (.A(counterWait_1_sqmuxa_10_1_0), 
        .B(un1_counterWait_6_sqmuxa), .C(counterWait_0_sqmuxa_2), .Y(
        counterWait_1_sqmuxa_10_3));
    XNOR2 un3_counterWait_1_I_65 (.A(N_10), .B(\counterWait[22]_net_1 )
        , .Y(I_65_0));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a1_2_0  
        (.A(\counterPixelsCaptured[6]_net_1 ), .B(
        \counterPixelsCaptured[5]_net_1 ), .Y(
        ADD_9x9_fast_I11_Y_0_a1_2_0));
    NOR2A \state_RNO_0[6]  (.A(\state_ns_0_0_a2_2[6] ), .B(N_1688), .Y(
        \state_ns_0_0_a2_3[6] ));
    MX2 cachedValue_tile_I_1_RNI96HM1 (.A(\DOUT_TMP[0] ), .B(
        \DIN_REG1[0] ), .S(N_7_0), .Y(\cachedValue[0] ));
    OR3 \substate_RNO_0[1]  (.A(\substate_ns_0_5_0[1] ), .B(N_1566), 
        .C(\substate_ns_0_6[1] ), .Y(\substate_ns_0_8[1] ));
    OR3 \counterWait_RNIHD5A[20]  (.A(counterWait8lt30_2), .B(
        counterWait8lt30_1), .C(counterWait8lt30_15), .Y(
        counterWait8lt30_23));
    AO1 \state_RNO[6]  (.A(\state_ns_0_0_a2_3[6] ), .B(N_122), .C(
        \state_ns_0_0_0[6] ), .Y(\state_ns[6] ));
    OR2 \state_RNIV6OT[5]  (.A(\state[2]_net_1 ), .B(\state[5]_net_1 ), 
        .Y(N_2553_tz));
    NOR3B \state_RNIQ0LR2[4]  (.A(\state_RNINQQ91[4]_net_1 ), .B(
        N_1974), .C(un1_counterWait_0_sqmuxa), .Y(
        counterWait_1_sqmuxa_10_1_0));
    XNOR2 un3_counterWait_1_I_70 (.A(N_9), .B(\counterWait[23]_net_1 ), 
        .Y(I_70));
    OR2B \substate_RNIK4MI1[6]  (.A(\substate[6]_net_1 ), .B(N_69), .Y(
        N_77));
    DFN1E0 \counterWait[20]  (.D(N_60), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[20]_net_1 ));
    NOR2B un1_counterPixelsCaptured_16_I_71 (.A(
        \DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3[0] ));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0_a4_1  
        (.A(\counterPixelsCaptured[5]_net_1 ), .B(\mult1_un103_sum[5] )
        , .C(ADD_9x9_fast_I17_Y_1), .Y(ADD_9x9_fast_I11_un1_Y_N_20));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a1  
        (.A(ADD_9x9_fast_I9_un1_Y_a1_1), .B(\mult1_un75_sum[5] ), .C(
        ADD_9x9_fast_I17_Y_1_1), .Y(ADD_9x9_fast_I9_un1_Y_a1));
    OR3 un3_counterWait_1_I_73 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[18] ), .Y(N_8));
    XOR2 un1_counterPixelsCaptured_16_I_54 (.A(N_675), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_54));
    OR2 \state_RNIIGRJ[9]  (.A(\state[9]_net_1 ), .B(\state[10]_net_1 )
        , .Y(N_70));
    MX2 \counterWait_RNO_4[1]  (.A(\counterWait[1]_net_1 ), .B(I_5), 
        .S(counterWait8), .Y(\counterWait_7[1] ));
    OR2A writeEnable_RNO_2 (.A(\substate[15]_net_1 ), .B(
        stonyman_0_writeEnable), .Y(N_1976));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I12_un1_Y_a0_0  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(ADD_9x9_fast_I11_Y_3)
        , .Y(ADD_9x9_fast_I12_un1_Y_a0_0));
    NOR2A \counterWait_RNO_2[4]  (.A(N_1972), .B(I_12), .Y(N_144));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I17_Y_1  
        (.A(N150), .B(\mult1_un82_sum[5] ), .C(\mult1_un82_sum[7] ), 
        .Y(ADD_9x9_fast_I17_Y_1_2));
    NOR2B \state_RNITRLQ3[1]  (.A(N_1626), .B(N_1625), .Y(N_1632));
    OR2 \state_RNITAQ51[6]  (.A(N_1509_i_0), .B(N_70), .Y(
        \substate_ns_0_3_0_tz_0[1] ));
    NOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a1  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_a1));
    OR3A \substate_i_RNIHR8QF[0]  (.A(N_4), .B(resp_1_sqmuxa), .C(
        resv_1_sqmuxa), .Y(un1_incp_1_sqmuxa));
    NOR2 \counterPixelsCaptured_RNI125S[0]  (.A(N_672), .B(N_673), .Y(
        un1_counterPixelsCaptured_15_1));
    OR3 un3_counterWait_1_I_54 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[9] ), .C(\DWACT_FDEC_E[12] ), .Y(
        \DWACT_FDEC_E[13] ));
    AO1A \counterWait_RNO_0[2]  (.A(I_7), .B(N_1972), .C(
        \counterWait_82_0_iv_i_0[2] ), .Y(\counterWait_82_0_iv_i_1[2] )
        );
    OR2 \counterWait_RNICRU7[3]  (.A(\counterWait[3]_net_1 ), .B(
        \counterWait[1]_net_1 ), .Y(counterWait8lt30_14));
    NOR3B \state_RNO_4[6]  (.A(\state[5]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\cachedValue[5] ), .Y(
        \state_ns_0_0_a2_1[6] ));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y  
        (.A(ADD_9x9_fast_I11_Y_3), .B(I11_un1_Y), .Y(N146_0));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a4_0  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(mult1_un82_sum_i[6]), 
        .Y(ADD_9x9_fast_I12_Y_a4_0));
    DFN1 \cachedValue_tile_WADDR_REG1[0]  (.D(un41lto0), .CLK(SCLK_c), 
        .Q(\WADDR_REG1[0] ));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_P0N_0_0  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(ADD_9x9_fast_I3_P0N_0_0)
        );
    NOR3A \substate_RNO_17[3]  (.A(N_1518), .B(N_1499), .C(N_1501), .Y(
        \substate_ns_0_a4_2_1[3] ));
    OR2A incp_RNO_1 (.A(un1_substate_9_sqmuxa_2), .B(
        cachedPOINTER_0_sqmuxa_1), .Y(un1_substate_9_sqmuxa_4));
    NOR3B \substate_RNO_1[12]  (.A(\substate_ns_i_a4_1_0[12] ), .B(
        \state[8]_net_1 ), .C(resv_0_sqmuxa), .Y(N_1614));
    OR3 un3_counterWait_1_I_84 (.A(\DWACT_FDEC_E[15] ), .B(
        \DWACT_FDEC_E[17] ), .C(\DWACT_FDEC_E[22] ), .Y(
        \DWACT_FDEC_E[23] ));
    OR3 un3_counterWait_1_I_22 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(N_24));
    AO1C \counterWait_RNO[19]  (.A(N_158), .B(I_56_0), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_58));
    NOR2B \substate_RNILSBR3[5]  (.A(un1_substate_10_sqmuxa), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(incp_2_sqmuxa));
    NOR2 \substate_RNO_3[8]  (.A(\substate[4]_net_1 ), .B(N_1524), .Y(
        \substate_ns_i_a4_1_0[8] ));
    OR2 \counterWait_RNINI22[15]  (.A(\counterWait[18]_net_1 ), .B(
        \counterWait[15]_net_1 ), .Y(counterWait8lt30_10));
    NOR2 \substate_RNO_5[12]  (.A(\substate[12]_net_1 ), .B(
        \substate[10]_net_1 ), .Y(\substate_ns_i_a4_1_0[12] ));
    NOR3B \substate_RNO_8[3]  (.A(\cachedPOINTER[2]_net_1 ), .B(N_1625)
        , .C(N_1500), .Y(N_1640));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a3  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .C(
        ADD_9x9_fast_I5_un1_Y_a3_2), .Y(ADD_9x9_fast_I5_un1_Y_a3));
    MX2A startAdcCapture_RNO_0 (.A(N_1973), .B(
        stonyman_0_startAdcCapture), .S(un1_state_2), .Y(N_812));
    OR2A \state_RNO_0[7]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1557), .Y(
        \state_ns_i_0[7] ));
    OR2B \substate_RNICDC0K[10]  (.A(N_106), .B(counterWait8), .Y(
        N_1969));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3  
        (.A(\mult1_un68_sum[7] ), .B(\counterPixelsCaptured[11]_net_1 )
        , .Y(ADD_9x9_fast_I1_G0Ntt_N_7));
    OR2 \substate_RNI7MJF4[15]  (.A(counterWait_2_sqmuxa_1), .B(N_152), 
        .Y(un1_state_0_sqmuxa));
    DFN1 \substate[1]  (.D(\substate_ns[1] ), .CLK(SCLK_c), .Q(
        \substate[1]_net_1 ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a1_1  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2_1));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a1_2  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(
        ADD_9x9_fast_I5_un1_Y_a2_2));
    DFN1 \substate[6]  (.D(\substate_RNO[6]_net_1 ), .CLK(SCLK_c), .Q(
        \substate[6]_net_1 ));
    OR2 cachedValue_tile_I_1_RNIRC2D3 (.A(\cachedValue[3] ), .B(
        \cachedValue[6] ), .Y(N_80));
    NOR2B un1_counterPixelsCaptured_16_I_75 (.A(
        \DWACT_ADD_CI_0_g_array_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_2_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_10[0] ));
    OA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_Y_0  
        (.A(\mult1_un96_sum[5] ), .B(\mult1_un96_sum_i[7] ), .C(
        \mult1_un96_sum[6] ), .Y(ADD_9x9_fast_I11_Y_0));
    OR2 \state_RNI77OT[8]  (.A(\state[8]_net_1 ), .B(\state[7]_net_1 ), 
        .Y(N_1494));
    NOR2B \substate_RNO_0[9]  (.A(N_1647), .B(\substate[9]_net_1 ), .Y(
        N_1607));
    NOR3C \substate_RNIV5962[13]  (.A(N_1446), .B(N_1442), .C(
        \un43_i_a2_0_a2_4_a2_3[0] ), .Y(led_0_c[0]));
    DFN1E0 \counterWait[19]  (.D(N_58), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[19]_net_1 ));
    XOR2 \cachedValue_tile_WADDR_REG1_RNINN4B[1]  (.A(\WADDR_REG1[1] ), 
        .B(\cachedPOINTER[1]_net_1 ), .Y(I_4_1));
    NOR2 \substate_RNI584C[8]  (.A(\substate[8]_net_1 ), .B(
        \substate[9]_net_1 ), .Y(N_1441));
    AOI1B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I9_un1_Y  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        ADD_9x9_fast_I1_P0N_m2), .C(\counterPixelsCaptured[6]_net_1 ), 
        .Y(I9_un1_Y));
    NOR3B \substate_RNO_22[3]  (.A(\state[2]_net_1 ), .B(
        \cachedPOINTER[2]_net_1 ), .C(un42lto2_1), .Y(
        \substate_ns_0_a4_10_2_1[3] ));
    OR3 un3_counterWait_1_I_29 (.A(\counterWait[6]_net_1 ), .B(
        \counterWait[7]_net_1 ), .C(\counterWait[8]_net_1 ), .Y(
        \DWACT_FDEC_E[5] ));
    DFN1 \substate[9]  (.D(\substate_RNO[9]_net_1 ), .CLK(SCLK_c), .Q(
        \substate[9]_net_1 ));
    NOR3A \state_RNI00GBU[12]  (.A(counterWait_1_sqmuxa_10_6), .B(
        counterWait_1_sqmuxa_3), .C(counterWait_4_sqmuxa_1), .Y(
        counterWait_1_sqmuxa_10_8));
    NOR2 \substate_RNI0K3C[9]  (.A(\substate[9]_net_1 ), .B(
        \substate[3]_net_1 ), .Y(counterWait_0_sqmuxa_3_0));
    NOR3 \state_RNO[3]  (.A(N_1713), .B(\state_ns_i_0[3] ), .C(N_1715), 
        .Y(\state_RNO[3]_net_1 ));
    OR2 \cachedPOINTER_RNI98AT_0[2]  (.A(un42lto2_1), .B(
        \cachedPOINTER[2]_net_1 ), .Y(un42lto2));
    OR2A \state_RNIV0UG[10]  (.A(\state[10]_net_1 ), .B(AND2_1_Y), .Y(
        N_111));
    DFN1E0 \counterWait[18]  (.D(N_56), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[18]_net_1 ));
    NOR3B \substate_RNO_3[2]  (.A(N_1631), .B(\state[8]_net_1 ), .C(
        un42lto2), .Y(N_1577));
    OR3 un3_counterWait_1_I_67 (.A(\counterWait[0]_net_1 ), .B(
        \counterWait[1]_net_1 ), .C(\counterWait[2]_net_1 ), .Y(
        \DWACT_FDEC_E[34] ));
    NOR2A cachedValue_tile_I_1_RNI10MG8 (.A(state53_0_a2_0_1), .B(N_80)
        , .Y(N_122));
    AND2 un1_counterPixelsCaptured_16_I_98 (.A(N_674), .B(N_675), .Y(
        \DWACT_ADD_CI_0_pog_array_1[0] ));
    AOI1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3_1  
        (.A(ADD_9x9_fast_I3_P0N_3_0), .B(ADD_9x9_fast_I17_Y_a2_0), .C(
        ADD_9x9_fast_I17_Y_a1), .Y(ADD_9x9_fast_I17_Y_3_1));
    NOR2B \substate_RNO_22[1]  (.A(un41lto0), .B(\state[3]_net_1 ), .Y(
        \substate_ns_0_a4_7_0[1] ));
    NOR2A \substate_RNIDTN62[8]  (.A(\substate[8]_net_1 ), .B(N_76), 
        .Y(N_1635));
    XOR2 un2_cachedValue_1_I_17 (.A(N_3_0), .B(\cachedValue[6] ), .Y(
        I_17_0));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_0  
        (.A(ADD_9x9_fast_I1_G0N_0_0), .B(ADD_9x9_fast_I1_G0N_a0), .C(
        ADD_9x9_fast_I17_Y_a3), .Y(N125_0));
    NOR3B \state_RNO_2[8]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \state[8]_net_1 ), .C(N_1691), .Y(N_1726));
    OR3A busy_RNO_1 (.A(\state[6]_net_1 ), .B(busy_1_sqmuxa), .C(
        counterWait8), .Y(un1_state_10));
    OR3 un3_counterWait_1_I_61 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[15] ), .Y(N_11));
    AXOI5 \counterPixelsCaptured_RNI8E8M1S[6]  (.A(
        \mult1_un103_sum[5] ), .B(d_N_5), .C(ADD_9x9_fast_I17_Y_1), .Y(
        \counterPixelsCaptured_RNI8E8M1S[6]_net_1 ));
    NOR3A \state_RNO[11]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1694), .C(
        N_1734), .Y(\state_RNO[11]_net_1 ));
    OR2 \state_RNI17OT[7]  (.A(\state[7]_net_1 ), .B(\state[2]_net_1 ), 
        .Y(un1_substate_1_sqmuxa_tz_2));
    XNOR2 un3_counterWait_1_I_74 (.A(N_8), .B(\counterWait[24]_net_1 ), 
        .Y(I_74));
    NOR2B \substate_RNO_14[3]  (.A(N_1499), .B(N_1626), .Y(
        \substate_ns_0_a4_3_0[3] ));
    NOR3B \substate_RNI7LPAAN1[15]  (.A(\substate_ns_0_a4_13_2[1] ), 
        .B(un1_counterPixelsCaptured_15_3), .C(N_677), .Y(N_1628));
    NOR2B un2_cachedValue_1_I_11 (.A(\cachedValue[3] ), .B(
        \DWACT_FINC_E[0] ), .Y(N_5));
    AX1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_remainder[5]  
        (.A(\counterPixelsCaptured[4]_net_1 ), .B(N146_2), .C(
        \mult1_un117_sum_1[5] ), .Y(N_677));
    DFN1E0 \counterWait[6]  (.D(N_29), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[6]_net_1 ));
    NOR2B \substate_RNIIAR42[5]  (.A(un1_counterWait_1_sqmuxa_i_a2_1), 
        .B(N_77), .Y(N_108));
    NOR2A \substate_RNO_25[3]  (.A(\cachedPOINTER[2]_net_1 ), .B(
        un41lto0), .Y(\substate_ns_0_a4_7_2_0[3] ));
    OR2 \state_RNIBKRJ[11]  (.A(\state[11]_net_1 ), .B(
        \state[1]_net_1 ), .Y(un1_substate_1_sqmuxa_tz_1));
    XOR2 un1_counterPixelsCaptured_16_I_60 (.A(
        \counterPixelsCaptured[13]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_5[0] ), .Y(I_60));
    NOR3C \substate_RNI86I72[12]  (.A(\un43_i_a2_0_a2_1[3] ), .B(
        \un43_i_a2_0_a2_0[3] ), .C(N_1445), .Y(led_0_c[3]));
    OA1A \substate_RNI8EEE61[5]  (.A(\substate_RNINGOVG[4]_net_1 ), .B(
        incp_2_sqmuxa), .C(I_13), .Y(\cachedPOINTER_23[1] ));
    NOR3 \substate_RNO[9]  (.A(N_1607), .B(N_1606), .C(N_1497), .Y(
        \substate_RNO[9]_net_1 ));
    OA1A \counterPixelsCaptured_RNO[6]  (.A(N_155), .B(N_1105), .C(
        I_59), .Y(\counterPixelsCaptured_8[6] ));
    OR3 un3_counterWait_1_I_45 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\counterWait[15]_net_1 ), .Y(N_16));
    NOR2B cachedValue_tile_I_1_RNIKP4Q6 (.A(state70_0), .B(state20_2), 
        .Y(state70_2));
    OR2A startAdcCapture_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_812), 
        .Y(startAdcCapture_RNO_net_1));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I12_Y_1  
        (.A(N146_0), .B(ADD_9x9_fast_I12_Y_0_a0), .Y(
        ADD_9x9_fast_I12_Y_0));
    OA1A \counterPixelsCaptured_RNO[12]  (.A(N_155), .B(N_1105), .C(
        I_58), .Y(\counterPixelsCaptured_8[12] ));
    NOR2B un1_counterPixelsCaptured_16_I_73 (.A(
        \DWACT_ADD_CI_0_g_array_10[0] ), .B(
        \counterPixelsCaptured[12]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_5[0] ));
    DFN1E0 \counterWait[7]  (.D(N_32), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[7]_net_1 ));
    OR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0N_m5_i_o2_0  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        ADD_9x9_fast_I11_Y_2_0), .Y(ADD_9x9_fast_I1_G0N_m5_i_o2_0));
    NOR3A \counterPixelsCaptured_RNI1OUTCI1[0]  (.A(
        un1_counterPixelsCaptured_15_3_1), .B(N_678), .C(N_676), .Y(
        un1_counterPixelsCaptured_15_3));
    XNOR2 un3_counterWait_1_I_95 (.A(N_2), .B(\counterWait[30]_net_1 ), 
        .Y(I_95));
    DFN1E0 \counterWait[10]  (.D(N_40), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[10]_net_1 ));
    DFN1 \counterPixelsCaptured[10]  (.D(\counterPixelsCaptured_8[10] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[10]_net_1 ));
    OA1A \counterPixelsCaptured_RNO[14]  (.A(N_155), .B(N_1105), .C(
        I_65), .Y(\counterPixelsCaptured_8[14] ));
    DFN1 \state[4]  (.D(\state_RNO[4]_net_1 ), .CLK(SCLK_c), .Q(
        \state[4]_net_1 ));
    AO1C \counterWait_RNO[9]  (.A(N_158), .B(I_26), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_36));
    OA1A \counterPixelsCaptured_RNO[3]  (.A(N_155), .B(N_1105), .C(
        I_54), .Y(\counterPixelsCaptured_8[3] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a0_1  
        (.A(ADD_9x9_fast_I12_Y_a0_0_0), .B(\mult1_un82_sum[5] ), .Y(
        ADD_9x9_fast_I12_Y_a0_1));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a1_0  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        \counterPixelsCaptured[10]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_a3_0));
    NOR2B \state_RNIFDEF2[6]  (.A(N_155), .B(\state[6]_net_1 ), .Y(
        N_150));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_3  
        (.A(ADD_9x9_fast_I11_Y_2_0), .B(N131), .Y(ADD_9x9_fast_I11_Y_3)
        );
    NOR3 \state_RNI87703[6]  (.A(counterWait8), .B(\state[6]_net_1 ), 
        .C(N_70), .Y(N_1647));
    OA1A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I11_Y_m3_0_a3_m2_0_a2_0  
        (.A(ADD_9x9_fast_I1_G0N_N_13_i), .B(
        \counterPixelsCaptured[9]_net_1 ), .C(
        ADD_9x9_fast_I9_un1_Y_m3_0), .Y(
        ADD_9x9_fast_I11_Y_m3_0_a3_m2_0_a2_0));
    NOR2B \cachedPOINTER_RNI98AT[1]  (.A(state9_0), .B(
        \cachedPOINTER[1]_net_1 ), .Y(state9));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_0  
        (.A(ADD_9x9_fast_I11_Y_0_0_0), .B(ADD_9x9_fast_I17_Y_1), .Y(
        ADD_9x9_fast_I11_Y_0_0));
    NOR2A \substate_i_RNO_13[0]  (.A(\substate[11]_net_1 ), .B(
        \state[3]_net_1 ), .Y(\substate_ns_0_a4_0[0] ));
    XNOR2 un3_counterWait_1_I_12 (.A(N_28), .B(\counterWait[4]_net_1 ), 
        .Y(I_12));
    AOI1B \substate_RNO_6[1]  (.A(\cachedPOINTER[1]_net_1 ), .B(
        \state[3]_net_1 ), .C(\substate_ns_0_a4_0_0[1] ), .Y(
        \substate_ns_0_a4_0_1[1] ));
    NOR3B \state_RNIFHCE1[1]  (.A(counterWait_0_sqmuxa_3_0), .B(
        \state[1]_net_1 ), .C(N_61), .Y(counterWait_0_sqmuxa_3_2));
    NOR3C \substate_RNIQF3M4[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        counterWait8), .C(un1_substate_1_sqmuxa), .Y(
        cachedPOINTER_0_sqmuxa));
    NOR2B \state_RNIBBES5[6]  (.A(I_5_0_0), .B(N_114), .Y(
        \state_RNIBBES5[6]_net_1 ));
    NOR2 \state_RNIDKRJ[3]  (.A(\state[3]_net_1 ), .B(
        \state[11]_net_1 ), .Y(N_1126));
    NOR3B \counterWait_RNO[27]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_86), 
        .C(N_158), .Y(N_1967));
    OR2 un3_counterWait_1_I_38 (.A(\counterWait[12]_net_1 ), .B(
        \counterWait[13]_net_1 ), .Y(\DWACT_FDEC_E[8] ));
    NOR2 incv_RNO_5 (.A(\state[4]_net_1 ), .B(\state[5]_net_1 ), .Y(
        un1_counterWait_3_sqmuxa_i_a2_0));
    XOR2 un1_counterPixelsCaptured_16_I_58 (.A(
        \counterPixelsCaptured[12]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .Y(I_58));
    DFN1 \state[10]  (.D(\state_RNO[10]_net_1 ), .CLK(SCLK_c), .Q(
        \state[10]_net_1 ));
    OA1 \substate_RNO_2[3]  (.A(N_1639), .B(N_1640), .C(
        \substate_ns_0_a4_0_1[3] ), .Y(N_1580));
    OA1 \substate_RNO_2[5]  (.A(\substate_ns_0_a4_1_1[5] ), .B(
        \substate_ns_0_a4_0_0[5] ), .C(N_1642), .Y(
        \substate_ns_0_0[5] ));
    MX2 resp_RNO_0 (.A(un1_substate_0_sqmuxa_1), .B(resp_c), .S(
        un1_counterWait_0_sqmuxa_3), .Y(N_807));
    MX2 cachedValue_tile_I_1_RNIF6HM1 (.A(\DOUT_TMP[6] ), .B(
        \DIN_REG1[6] ), .S(N_7_0), .Y(\cachedValue[6] ));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I15_Y  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        \counterPixelsCaptured[8]_net_1 ), .C(N146_1), .Y(
        \mult1_un96_sum[5] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a6_0  
        (.A(mult1_un82_sum_i[6]), .B(\counterPixelsCaptured[9]_net_1 ), 
        .Y(ADD_9x9_fast_I12_Y_a6_0));
    MX2A \substate_RNO_1[10]  (.A(\substate[10]_net_1 ), .B(
        counterWait8), .S(\substate[6]_net_1 ), .Y(N_1549));
    AO1A \state_RNI52MG2[12]  (.A(N_4), .B(\state[12]_net_1 ), .C(
        substate_4_sqmuxa_4), .Y(un1_substate_9_sqmuxa_1_1));
    OR3 \substate_RNO_4[1]  (.A(N_1565), .B(\substate_ns_0_2[1] ), .C(
        \substate_ns_0_3[1] ), .Y(\substate_ns_0_6[1] ));
    AX1D 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0N_m5_i_x2  
        (.A(I11_un1_Y), .B(ADD_9x9_fast_I1_G0N_m5_i_o2_1), .C(
        ADD_9x9_fast_I17_Y_1_1), .Y(ADD_9x9_fast_I1_G0N_N_13_i));
    OR2 \counterWait_RNIL222[23]  (.A(\counterWait[26]_net_1 ), .B(
        \counterWait[23]_net_1 ), .Y(counterWait8lt30_1));
    NOR3 \substate_RNO[15]  (.A(N_141), .B(\substate_ns_i_0_0[15] ), 
        .C(N_1502), .Y(\substate_RNO[15]_net_1 ));
    NOR2A \substate_RNI125M1[9]  (.A(N_2555_tz), .B(N_1446), .Y(
        \substate_RNI125M1[9]_net_1 ));
    DFN1 cachedValue_tile_I_3 (.D(N_14_i), .CLK(SCLK_c), .Q(N_5_0));
    OA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y  
        (.A(N125), .B(I9_un1_Y), .C(ADD_9x9_fast_I11_un1_Y_0), .Y(
        I11_un1_Y_0));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_P0N_a2  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I3_P0N_a2));
    DFN1 \state[8]  (.D(\state_ns[8] ), .CLK(SCLK_c), .Q(
        \state[8]_net_1 ));
    OR3 \substate_RNIF1K49[5]  (.A(N_109), .B(N_110), .C(N_108), .Y(
        N_52));
    OR2 un3_counterWait_1_I_47 (.A(\counterWait[15]_net_1 ), .B(
        \counterWait[16]_net_1 ), .Y(\DWACT_FDEC_E[11] ));
    XOR2 un2_cachedValue_1_I_12 (.A(N_5), .B(\cachedValue[4] ), .Y(
        I_12_0));
    NOR3B \counterWait_RNO[28]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_89), 
        .C(N_158), .Y(N_1968));
    OR2 \substate_RNI2QCJ[13]  (.A(\substate[13]_net_1 ), .B(
        \substate[6]_net_1 ), .Y(N_61));
    NOR2 \state_i_RNI2MPV1_0[0]  (.A(\state_i[0]_net_1 ), .B(
        counterWait8), .Y(N_153));
    OR3 un3_counterWait_1_I_19 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\counterWait[6]_net_1 ), .Y(N_25_0));
    NOR3C \state_RNITBF52[10]  (.A(N_1127), .B(N_1126), .C(
        \un1_state_4_i_a2_0_a2_1[1] ), .Y(led_net_0_c[1]));
    OR3 \substate_RNO_0[12]  (.A(N_1612), .B(N_1613), .C(N_1615), .Y(
        \substate_ns_i_1[12] ));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_remainder[4]  
        (.A(N146_2), .B(\counterPixelsCaptured[4]_net_1 ), .Y(N_676));
    OR3B \substate_RNO_1[13]  (.A(\state[9]_net_1 ), .B(
        \substate[12]_net_1 ), .C(counterWait8), .Y(N_1539));
    OR3 un3_counterWait_1_I_41 (.A(\counterWait[12]_net_1 ), .B(
        \counterWait[13]_net_1 ), .C(\counterWait[14]_net_1 ), .Y(
        \DWACT_FDEC_E[9] ));
    NOR3B \state_RNO_0[5]  (.A(\state[5]_net_1 ), .B(state53), .C(
        N_1688), .Y(N_1718));
    NOR3B cachedValue_tile_I_1_RNI6JJ35 (.A(\cachedValue[4] ), .B(
        \cachedValue[0] ), .C(\cachedValue[7] ), .Y(state53_0_a2_0_1));
    NOR2A \substate_i_RNIOKSS[0]  (.A(N_2552_tz), .B(
        \substate_i[0]_net_1 ), .Y(un1_counterWait_0_sqmuxa));
    DFN1 \counterPixelsCaptured[5]  (.D(\counterPixelsCaptured_8[5] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[5]_net_1 ));
    NOR3C \state_RNIRJF52[4]  (.A(N_126_2), .B(
        un1_counterWait_1_sqmuxa_i_a2_0_0), .C(N_109_3), .Y(
        un1_counterWait_1_sqmuxa_i_a2_0_2));
    OR3 \counterWait_RNIKNSS[12]  (.A(counterWait8lt30_12), .B(
        counterWait8lt30_11), .C(counterWait8lt30_22), .Y(
        counterWait8lt30_26));
    OR2 \cachedPOINTER_RNI98AT[2]  (.A(N_1500), .B(
        \cachedPOINTER[2]_net_1 ), .Y(N_1501));
    MX2 cachedValue_tile_I_1_RNIB6HM1 (.A(\DOUT_TMP[2] ), .B(
        \DIN_REG1[2] ), .S(N_7_0), .Y(\cachedValue[2] ));
    AOI1B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3_2  
        (.A(ADD_9x9_fast_I17_Y_a2_1), .B(ADD_9x9_fast_I17_Y_a2_0), .C(
        ADD_9x9_fast_I17_Y_3_0), .Y(ADD_9x9_fast_I17_Y_3_2));
    OR3 un3_counterWait_1_I_91 (.A(\DWACT_FDEC_E[24] ), .B(
        \DWACT_FDEC_E[23] ), .C(\DWACT_FDEC_E[25] ), .Y(N_3));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_Y_m1  
        (.A(mult1_un82_sum_i[6]), .B(\mult1_un82_sum[7] ), .Y(
        ADD_9x9_fast_I9_Y_m1));
    NOR3C \state_RNO_0[8]  (.A(\state[7]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(N_1691), .Y(N_1725));
    DFN1 \state[1]  (.D(\state_RNO[1]_net_1 ), .CLK(SCLK_c), .Q(
        \state[1]_net_1 ));
    NOR2A \state_RNO_0[9]  (.A(\state[11]_net_1 ), .B(N_37), .Y(N_1730)
        );
    AND2 un1_counterPixelsCaptured_16_I_102 (.A(
        \counterPixelsCaptured[10]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ));
    NOR2A \state_RNIUNN21[5]  (.A(N_1126), .B(\state[5]_net_1 ), .Y(
        \un1_state_4_i_a2_0_a2_0[0] ));
    NOR3B \counterWait_RNO[24]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_74), 
        .C(N_158), .Y(N_68));
    XNOR2 un3_counterWait_1_I_56 (.A(N_13), .B(\counterWait[19]_net_1 )
        , .Y(I_56_0));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0_x4  
        (.A(ADD_9x9_fast_I12_Y_1_tz), .B(ADD_9x9_fast_I17_Y_1), .Y(
        ADD_9x9_fast_I11_un1_Y_N_16_i));
    DFN1E0 \counterWait[30]  (.D(N_81), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[30]_net_1 ));
    AO1A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I12_Y_0  
        (.A(I11_un1_Y), .B(ADD_9x9_fast_I12_un1_Y_a0_0), .C(
        ADD_9x9_fast_I12_un1_Y_a1), .Y(ADD_9x9_fast_I12_Y_0_0_0));
    NOR2B \state_RNICB4DE[6]  (.A(I_17_0), .B(N_114), .Y(
        \state_RNICB4DE[6]_net_1 ));
    OA1B \state_RNI4F7N1[1]  (.A(\state[1]_net_1 ), .B(
        \state[7]_net_1 ), .C(N_1445), .Y(\state_RNI4F7N1[1]_net_1 ));
    NOR3B \substate_i_RNI85DT1[0]  (.A(un1_counterWait_0_sqmuxa), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(un42lto2), .Y(resp_0_sqmuxa));
    AO1D incv_RNO_2 (.A(\substate[7]_net_1 ), .B(\substate[3]_net_1 ), 
        .C(N_1118), .Y(un1_counterWait_3_sqmuxa_3_0_0));
    XNOR2 un3_counterWait_1_I_86 (.A(N_5_1), .B(
        \counterWait[27]_net_1 ), .Y(I_86));
    NOR3B \counterWait_RNO[25]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_77), 
        .C(N_158), .Y(N_1966));
    NOR3B \substate_i_RNO_0[0]  (.A(\state[10]_net_1 ), .B(
        \substate[15]_net_1 ), .C(counterWait8), .Y(
        \substate_ns_0_a4_5_0[0] ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_0_5  
        (.A(ADD_9x9_fast_I2_P0N_a6), .B(ADD_9x9_fast_I2_P0N_a1), .C(
        ADD_9x9_fast_I2_P0N_0_2), .Y(ADD_9x9_fast_I2_P0N_0_5));
    OR3 \counterWait_RNO[0]  (.A(N_147), .B(N_148), .C(N_149), .Y(
        \counterWait_82[0] ));
    NOR2 \substate_RNI0K3C[5]  (.A(\substate[5]_net_1 ), .B(
        \substate[7]_net_1 ), .Y(un1_counterWait_1_sqmuxa_i_a2_1_0));
    NOR3B \counterWait_RNO_3[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        counterWait8), .C(\counterWait[0]_net_1 ), .Y(
        \counterWait_82_0_iv_0_a2_0_0[0] ));
    DFN1E0 \counterWait[26]  (.D(N_72), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[26]_net_1 ));
    NOR3A \substate_RNO_2[7]  (.A(\substate[7]_net_1 ), .B(N_70), .C(
        N_69), .Y(\substate_ns_i_a4_0_1[7] ));
    DFN1 \counterPixelsCaptured[14]  (.D(\counterPixelsCaptured_8[14] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[14]_net_1 ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_2  
        (.A(mult1_un82_sum_i[6]), .B(ADD_9x9_fast_I12_Y_0_0_tz), .Y(
        ADD_9x9_fast_I12_Y_0_0));
    OA1A \counterPixelsCaptured_RNO[13]  (.A(N_155), .B(N_1105), .C(
        I_60), .Y(\counterPixelsCaptured_8[13] ));
    AXO5 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un61_sum_ADD_9x9_fast_I17_Y_0  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        ADD_9x9_fast_I17_Y_a0_1), .C(\counterPixelsCaptured[15]_net_1 )
        , .Y(\mult1_un61_sum[8] ));
    DFN1E0 \counterWait[27]  (.D(N_1967), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[27]_net_1 ));
    NOR2A \counterPixelsCaptured_RNI6TS[13]  (.A(
        \counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(state103_7));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a0_1  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I3_P0N_3_0)
        );
    AOI1B \counterWait_RNO_2[1]  (.A(N_1972), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(counterWait_1_sqmuxa_10_1), .Y(
        \counterWait_cnst_m[1] ));
    OR2 \counterWait_RNIJ222[13]  (.A(\counterWait[16]_net_1 ), .B(
        \counterWait[13]_net_1 ), .Y(counterWait8lt30_6));
    AND2 state103_9 (.A(state103_4_net_1), .B(state103_3_net_1), .Y(
        state103_9_net_1));
    DFN1E1 \px0_out[1]  (.D(adc081s101_0_dataout[1]), .CLK(SCLK_c), .E(
        substate_25_sqmuxa), .Q(stonyman_0_px0_out[1]));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I5_un1_Y_a0_2  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[15]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(
        ADD_9x9_fast_I5_un1_Y_a0_2));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_Y_m3  
        (.A(ADD_9x9_fast_I9_Y_m1), .B(I9_un1_Y_0), .C(
        \counterPixelsCaptured[8]_net_1 ), .Y(ADD_9x9_fast_I9_Y_m3));
    AO1C \counterWait_RNO[23]  (.A(N_158), .B(I_70), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_66));
    XNOR2 un3_counterWait_1_I_28 (.A(N_22), .B(\counterWait[10]_net_1 )
        , .Y(I_28));
    NOR2B \state_RNIBQUH[6]  (.A(TP_START_CAPTURE_c), .B(
        \state[6]_net_1 ), .Y(N_1509_i_0));
    OR2 \substate_RNO_19[1]  (.A(\substate_ns_0_a4_6_0[1] ), .B(
        \substate_ns_0_a4_7_0[1] ), .Y(\substate_ns_0_5_tz_0[1] ));
    NOR3 \state_RNO[10]  (.A(N_105), .B(\state_ns_i_0_1[10] ), .C(
        N_103), .Y(\state_RNO[10]_net_1 ));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_m10_0_a4_0  
        (.A(\counterPixelsCaptured[6]_net_1 ), .B(N146), .C(
        ADD_9x9_fast_I11_un1_Y_N_16_i), .Y(ADD_9x9_fast_I11_un1_Y_N_19)
        );
    NOR3B \counterWait_RNO_0[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        N_1975), .C(\counterWait[0]_net_1 ), .Y(N_147));
    OR2A \counterWait_RNIBRL02[10]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        counterWait8), .Y(N_76));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I11_Y_m3_0_a3_0  
        (.A(\mult1_un82_sum[5] ), .B(mult1_un82_sum_i[6]), .C(N150), 
        .Y(ADD_9x9_fast_I11_Y_N_7));
    DFN1E0 \counterWait[3]  (.D(N_25), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[3]_net_1 ));
    NOR2 \substate_RNO_6[12]  (.A(\substate[2]_net_1 ), .B(
        \substate[10]_net_1 ), .Y(\substate_ns_i_a4_2_0[12] ));
    NOR2A \state_RNO_1[8]  (.A(\state[12]_net_1 ), .B(N_37), .Y(N_1727)
        );
    OR2 \state_RNIQSI58[12]  (.A(un1_substate_9_sqmuxa_1_2), .B(
        un1_substate_9_sqmuxa_1_1), .Y(un1_substate_9_sqmuxa_1));
    NOR3B \counterWait_RNO[6]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_17), 
        .C(N_158), .Y(N_29));
    NOR3C \substate_RNO_13[3]  (.A(counterWait8), .B(N_1493), .C(
        N_1637), .Y(N_1584));
    OA1C \substate_RNO_0[7]  (.A(\substate[3]_net_1 ), .B(N_1528), .C(
        \substate[7]_net_1 ), .Y(N_1601));
    XNOR2 un3_counterWait_1_I_62 (.A(N_11), .B(\counterWait[21]_net_1 )
        , .Y(I_62));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I17_Y_1_0  
        (.A(\mult1_un96_sum[5] ), .B(\mult1_un96_sum_i[7] ), .Y(
        ADD_9x9_fast_I17_Y_1_0));
    NOR3A \state_RNO[12]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_1694), .C(
        N_1735), .Y(\state_RNO[12]_net_1 ));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I9_un1_Ytt_m4_e  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        ADD_9x9_fast_I11_Y_3), .Y(ADD_9x9_fast_I9_un1_Ytt_m4_e));
    NOR2B \state_RNIT4JMC[6]  (.A(I_14_1), .B(N_114), .Y(
        \state_RNIT4JMC[6]_net_1 ));
    NOR2A \substate_RNO_2[6]  (.A(N_1494), .B(\substate[6]_net_1 ), .Y(
        \substate_ns_i_a4_0_0[6] ));
    AND3 un2_cachedValue_1_I_10 (.A(\cachedValue[0] ), .B(
        \cachedValue[1] ), .C(\cachedValue[2] ), .Y(\DWACT_FINC_E[0] ));
    DFN1 incv (.D(incv_RNO_net_1), .CLK(SCLK_c), .Q(incv_c));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I15_Y_0  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .Y(ADD_9x9_fast_I15_Y_0_0));
    OA1 \substate_RNO_3[1]  (.A(N_1635), .B(N_1650), .C(
        \state[7]_net_1 ), .Y(N_1566));
    OR3 un3_counterWait_1_I_76 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[19] ), .Y(N_7_1));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_a0_0  
        (.A(\counterPixelsCaptured[5]_net_1 ), .B(
        \counterPixelsCaptured[6]_net_1 ), .Y(ADD_9x9_fast_I12_Y_a0_0));
    NOR3A \substate_RNO[14]  (.A(N_1550), .B(N_1618), .C(N_1502), .Y(
        \substate_RNO[14]_net_1 ));
    NOR3B \substate_i_RNO_10[0]  (.A(N_109_3), .B(\substate[11]_net_1 )
        , .C(N_1499), .Y(\substate_ns_0_a4_4_1[0] ));
    OR3 \counterWait_RNI8544[11]  (.A(\counterWait[11]_net_1 ), .B(
        \counterWait[14]_net_1 ), .C(counterWait8lt30_4), .Y(
        counterWait8lt30_17));
    OR2A \substate_RNI5K9P[14]  (.A(\substate[14]_net_1 ), .B(AND2_1_Y)
        , .Y(N_1973));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a1_1  
        (.A(ADD_9x9_fast_I9_un1_Y_a3_0), .B(
        \counterPixelsCaptured[9]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_a1_1));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_a1_m4  
        (.A(ADD_9x9_fast_I12_Y_a2_0), .B(ADD_9x9_fast_I12_Y_a1_m2), .C(
        \counterPixelsCaptured[9]_net_1 ), .Y(ADD_9x9_fast_I12_Y_a1_m4)
        );
    OR3 \substate_RNI3JA24[12]  (.A(\substate_RNINSVV[8]_net_1 ), .B(
        un1_state_23_0), .C(\state_RNI4F7N1[1]_net_1 ), .Y(
        un1_state_23_3));
    OR3 \counterWait_RNI20EI[11]  (.A(counterWait8lt30_18), .B(
        counterWait8lt30_17), .C(counterWait8lt30_23), .Y(
        counterWait8lt30_27));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a0  
        (.A(ADD_9x9_fast_I17_Y_1), .B(ADD_9x9_fast_I11_Y_0_a0_1), .C(
        N146), .Y(ADD_9x9_fast_I11_Y_0_a0));
    OA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_1_1  
        (.A(ADD_9x9_fast_I12_Y_a0_1), .B(ADD_9x9_fast_I12_Y_a6_0), .C(
        \mult1_un82_sum[7] ), .Y(ADD_9x9_fast_I12_Y_1_1));
    OR3 \substate_RNO_10[1]  (.A(\substate_ns_0_0[1] ), .B(N_1561), .C(
        N_1570), .Y(\substate_ns_0_3[1] ));
    OA1C \state_RNO_1[5]  (.A(\state[4]_net_1 ), .B(N_1690), .C(
        \state[5]_net_1 ), .Y(N_1717));
    OR2 \state_RNIIKRJ[11]  (.A(\state[8]_net_1 ), .B(
        \state[11]_net_1 ), .Y(N_2552_tz));
    NOR2B \substate_RNI5Q79[4]  (.A(\substate[4]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_1592_1));
    OR3 un3_counterWait_1_I_30 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[6] ));
    OR2 \substate_RNIOA5U5[10]  (.A(un1_counterWait_6_sqmuxa), .B(
        un1_state_0_sqmuxa), .Y(N_1975));
    OA1A \counterPixelsCaptured_RNO[4]  (.A(N_155), .B(N_1105), .C(
        I_55), .Y(\counterPixelsCaptured_8[4] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I12_Y_0_a0  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(\mult1_un75_sum[5] )
        , .Y(ADD_9x9_fast_I12_Y_0_a0));
    AO1A \substate_RNO_15[1]  (.A(N_1506), .B(N_1643), .C(
        \substate_ns_0_3_0_0[1] ), .Y(\substate_ns_0_0[1] ));
    DFN1 busy (.D(busy_RNO_net_1), .CLK(SCLK_c), .Q(stonyman_0_busy));
    OA1 \state_RNIOEICF[8]  (.A(resv_1_sqmuxa), .B(incp_1_sqmuxa_1), 
        .C(\state[8]_net_1 ), .Y(counterWait_4_sqmuxa));
    OR3 un3_counterWait_1_I_33 (.A(\counterWait[9]_net_1 ), .B(
        \counterWait[10]_net_1 ), .C(\counterWait[11]_net_1 ), .Y(
        \DWACT_FDEC_E[7] ));
    OR3 un3_counterWait_1_I_69 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[33] ), .Y(N_9));
    NOR2B un1_counterPixelsCaptured_16_I_90 (.A(
        \DWACT_ADD_CI_0_g_array_10[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_2[0] ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a0_0  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a2_0)
        );
    NOR3 \substate_RNO[12]  (.A(N_1502), .B(\substate_ns_i_1[12] ), .C(
        N_1614), .Y(\substate_RNO[12]_net_1 ));
    NOR2B \substate_RNI783F4[5]  (.A(led_0_c[2]), .B(led_0_c[3]), .Y(
        counterWait_0_sqmuxa_4_2));
    DFN1 \substate[10]  (.D(\substate_RNO[10]_net_1 ), .CLK(SCLK_c), 
        .Q(\substate[10]_net_1 ));
    OA1A \counterPixelsCaptured_RNO[5]  (.A(N_155), .B(N_1105), .C(
        I_57), .Y(\counterPixelsCaptured_8[5] ));
    OA1A \counterPixelsCaptured_RNO[15]  (.A(N_155), .B(N_1105), .C(
        I_66), .Y(\counterPixelsCaptured_8[15] ));
    NOR2B cachedValue_tile_I_1_RNI3JJ35_0 (.A(\cachedValue[5] ), .B(
        state31_1), .Y(state31_0_a2_0));
    RAM512X18 cachedValue_tile_I_1 (.RADDR8(stonyman_GND), .RADDR7(
        stonyman_GND), .RADDR6(stonyman_GND), .RADDR5(stonyman_GND), 
        .RADDR4(stonyman_GND), .RADDR3(stonyman_GND), .RADDR2(
        \cachedPOINTER_23[2] ), .RADDR1(\cachedPOINTER_23[1] ), 
        .RADDR0(\cachedPOINTER_23[0] ), .WADDR8(stonyman_GND), .WADDR7(
        stonyman_GND), .WADDR6(stonyman_GND), .WADDR5(stonyman_GND), 
        .WADDR4(stonyman_GND), .WADDR3(stonyman_GND), .WADDR2(
        \cachedPOINTER[2]_net_1 ), .WADDR1(\cachedPOINTER[1]_net_1 ), 
        .WADDR0(un41lto0), .WD17(stonyman_GND), .WD16(stonyman_GND), 
        .WD15(stonyman_GND), .WD14(stonyman_GND), .WD13(stonyman_GND), 
        .WD12(stonyman_GND), .WD11(stonyman_GND), .WD10(stonyman_GND), 
        .WD9(stonyman_GND), .WD8(stonyman_GND), .WD7(
        \state_RNISHL3G[6]_net_1 ), .WD6(\state_RNICB4DE[6]_net_1 ), 
        .WD5(\state_RNIT4JMC[6]_net_1 ), .WD4(
        \state_RNIFU10B[6]_net_1 ), .WD3(\state_RNI2OG99[6]_net_1 ), 
        .WD2(\state_RNIMHVI7[6]_net_1 ), .WD1(
        \state_RNIBBES5[6]_net_1 ), .WD0(I_1_RNI15T54), .RW0(
        stonyman_VCC), .RW1(stonyman_GND), .WW0(stonyman_VCC), .WW1(
        stonyman_GND), .PIPE(stonyman_GND), .REN(stonyman_GND), .WEN(
        N_14), .RCLK(SCLK_c), .WCLK(SCLK_c), .RESET(stonyman_VCC), 
        .RD17(\DOUT_TMP[17] ), .RD16(\DOUT_TMP[16] ), .RD15(
        \DOUT_TMP[15] ), .RD14(\DOUT_TMP[14] ), .RD13(\DOUT_TMP[13] ), 
        .RD12(\DOUT_TMP[12] ), .RD11(\DOUT_TMP[11] ), .RD10(
        \DOUT_TMP[10] ), .RD9(\DOUT_TMP[9] ), .RD8(\DOUT_TMP[8] ), 
        .RD7(\DOUT_TMP[7] ), .RD6(\DOUT_TMP[6] ), .RD5(\DOUT_TMP[5] ), 
        .RD4(\DOUT_TMP[4] ), .RD3(\DOUT_TMP[3] ), .RD2(\DOUT_TMP[2] ), 
        .RD1(\DOUT_TMP[1] ), .RD0(\DOUT_TMP[0] ));
    AO1A \substate_RNO_0[10]  (.A(counterWait8), .B(
        \substate_ns_i_a4_0[10] ), .C(N_1609), .Y(
        \substate_ns_i_0[10] ));
    OA1A \state_RNO_1[9]  (.A(\substate[12]_net_1 ), .B(counterWait8), 
        .C(\state_ns_0_a4_0[9] ), .Y(N_1728));
    NOR3B \state_RNIHMFR2[2]  (.A(un1_counterWait_1_sqmuxa_i_a2_1_2), 
        .B(un1_counterWait_1_sqmuxa_i_a2_1_1), .C(N_69), .Y(N_110));
    OR3 \substate_RNILQSK5[1]  (.A(substate_5_sqmuxa_6), .B(
        un1_substate_9_sqmuxa_1_3), .C(substate_4_sqmuxa_3), .Y(
        un1_substate_9_sqmuxa_1_2));
    AO1 \substate_i_RNO_4[0]  (.A(\substate_ns_0_a4_2[0] ), .B(N_1517), 
        .C(N_1558), .Y(\substate_ns_0_4[0] ));
    DFN1E0 \counterWait[23]  (.D(N_66), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[23]_net_1 ));
    OR2 \substate_RNO_1[11]  (.A(N_71), .B(N_75), .Y(N_78));
    OR2 \substate_RNIFGGIM[10]  (.A(N_106), .B(un1_state_0_sqmuxa), .Y(
        N_1972));
    NOR3B \substate_RNI1P2H5[15]  (.A(state103), .B(
        \substate[15]_net_1 ), .C(counterWait8), .Y(state_0_sqmuxa_8));
    MX2 cachedValue_tile_I_1_RNIA6HM1 (.A(\DOUT_TMP[1] ), .B(
        \DIN_REG1[1] ), .S(N_7_0), .Y(\cachedValue[1] ));
    OR2 \counterWait_RNIMRU7[6]  (.A(\counterWait[8]_net_1 ), .B(
        \counterWait[6]_net_1 ), .Y(counterWait8lt30_12));
    OR2B \substate_RNI4EB31[1]  (.A(N_1501), .B(\substate[1]_net_1 ), 
        .Y(N_4));
    AO1C \counterWait_RNO[12]  (.A(N_158), .B(I_35), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_44));
    NOR2B un1_counterPixelsCaptured_16_I_87 (.A(
        \DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11[0] ));
    NOR2 cachedValue_tile_I_1_RNINC2D3 (.A(\cachedValue[5] ), .B(
        \cachedValue[0] ), .Y(state20_2));
    NOR2A \state_RNIA2II6[10]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        counterWait_1_sqmuxa_9), .Y(counterWait_1_sqmuxa_10_1));
    NOR3B \counterWait_RNO[26]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_82), 
        .C(N_158), .Y(N_72));
    MX2 incv_RNO_0 (.A(\substate[3]_net_1 ), .B(incv_c), .S(
        un1_counterWait_3_sqmuxa_3), .Y(N_810));
    OR3 \counterWait_RNIQMTF[2]  (.A(\counterWait[2]_net_1 ), .B(
        \counterWait[4]_net_1 ), .C(counterWait8lt30_14), .Y(
        counterWait8lt30_22));
    XOR2 un1_counterPixelsCaptured_16_I_40 (.A(N_672), .B(
        substate_25_sqmuxa), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    MX2 \substate_RNO_0[13]  (.A(N_1539), .B(\state[10]_net_1 ), .S(
        \substate[13]_net_1 ), .Y(\substate_ns_i_0[13] ));
    DFN1 \substate[8]  (.D(\substate_RNO[8]_net_1 ), .CLK(SCLK_c), .Q(
        \substate[8]_net_1 ));
    DFN1E0 \counterWait[16]  (.D(N_1965), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[16]_net_1 ));
    DFN1 \counterPixelsCaptured[15]  (.D(\counterPixelsCaptured_8[15] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[15]_net_1 ));
    NOR2 \substate_RNI3UCJ[13]  (.A(\substate[13]_net_1 ), .B(
        \substate[7]_net_1 ), .Y(\un43_i_a2_0_a2_0[3] ));
    NOR2A \substate_RNIJ30GO[15]  (.A(N_1969), .B(un1_state_0_sqmuxa), 
        .Y(N_158));
    OR3 \substate_RNI84NF7[11]  (.A(\substate_RNI4F7N1[11]_net_1 ), .B(
        \substate_RNI125M1[9]_net_1 ), .C(un1_state_23_3), .Y(
        un1_state_23));
    NOR3C \state_RNO_5[6]  (.A(\state[10]_net_1 ), .B(
        \substate[15]_net_1 ), .C(state103), .Y(
        \state_ns_0_0_a2_1_0[6] ));
    NOR3A \state_RNI3QMC1[9]  (.A(\un1_state_4_i_a2_0_a2_2[3] ), .B(
        \state[10]_net_1 ), .C(\state[9]_net_1 ), .Y(led_net_0_c[3]));
    DFN1E0 \counterWait[17]  (.D(N_54), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[17]_net_1 ));
    NOR3A \substate_RNO_5[3]  (.A(\substate_ns_0_a4_3_0[3] ), .B(N_37), 
        .C(state31), .Y(N_1583));
    NOR2 \state_RNIFKRJ[5]  (.A(\state[5]_net_1 ), .B(
        \state[11]_net_1 ), .Y(un1_counterWait_1_sqmuxa_i_a2_1_1));
    AO1A \substate_RNI3G55G[10]  (.A(counterWait8), .B(
        \substate[10]_net_1 ), .C(resv_0_sqmuxa), .Y(N_1691));
    NOR2B \substate_RNI4EB31_0[1]  (.A(un42lto2), .B(
        \substate[1]_net_1 ), .Y(incp_1_sqmuxa_1));
    NOR3 \counterWait_RNO[4]  (.A(N_146), .B(
        \counterWait_82_0_iv_i_0[4] ), .C(N_144), .Y(N_94));
    NOR3 cachedValue_tile_I_1_RNI3JJ35 (.A(\cachedValue[2] ), .B(
        \cachedValue[1] ), .C(\cachedValue[5] ), .Y(state53_0_a2_0));
    OR3 un3_counterWait_1_I_18 (.A(\counterWait[3]_net_1 ), .B(
        \counterWait[4]_net_1 ), .C(\counterWait[5]_net_1 ), .Y(
        \DWACT_FDEC_E[2] ));
    DFN1E0 \counterWait[0]  (.D(\counterWait_82[0] ), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[0]_net_1 ));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I11_Y_m3_0  
        (.A(ADD_9x9_fast_I11_Y_N_7), .B(ADD_9x9_fast_I11_Y_N_5), .Y(
        ADD_9x9_fast_I11_Y_m3_0));
    DFN1 \substate[15]  (.D(\substate_RNO[15]_net_1 ), .CLK(SCLK_c), 
        .Q(\substate[15]_net_1 ));
    NOR2B un1_counterPixelsCaptured_16_I_74 (.A(
        \DWACT_ADD_CI_0_g_array_1[0] ), .B(N_674), .Y(
        \DWACT_ADD_CI_0_g_array_12[0] ));
    NOR3A \substate_RNO_9[3]  (.A(N_109_3), .B(N_69), .C(N_1510), .Y(
        \substate_ns_0_a4_0_1[3] ));
    OR3 un3_counterWait_1_I_42 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[9] ), .Y(N_17));
    NOR2B resp_RNO (.A(N_807), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        resp_RNO_net_1));
    OR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_Y  
        (.A(I9_un1_Y_1), .B(N125_0), .Y(N150_0));
    DFN1 \state[12]  (.D(\state_RNO[12]_net_1 ), .CLK(SCLK_c), .Q(
        \state[12]_net_1 ));
    DFN1E1 \px0_out[0]  (.D(adc081s101_0_dataout[0]), .CLK(SCLK_c), .E(
        substate_25_sqmuxa), .Q(stonyman_0_px0_out[0]));
    XNOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I15_Y  
        (.A(\counterPixelsCaptured[9]_net_1 ), .B(
        \counterPixelsCaptured[8]_net_1 ), .C(\mult1_un82_sum[7] ), .Y(
        \mult1_un89_sum[5] ));
    OR3 \state_RNI0JP72[12]  (.A(N_70), .B(N_1493), .C(N_2555_tz), .Y(
        N_1510));
    NOR2A \counterPixelsCaptured_RNIQNGE[10]  (.A(
        \counterPixelsCaptured[9]_net_1 ), .B(
        \counterPixelsCaptured[10]_net_1 ), .Y(
        ADD_9x9_fast_I12_un1_Y_a1_0));
    XNOR2 un3_counterWait_1_I_92 (.A(N_3), .B(\counterWait[29]_net_1 ), 
        .Y(I_92));
    AO1 \state_RNO_0[2]  (.A(\state[1]_net_1 ), .B(counterWait8), .C(
        \state_ns_i_0[2] ), .Y(\state_ns_i_1[2] ));
    OR2 un3_counterWait_1_I_34 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[6] ), .Y(N_20));
    OR3 un3_counterWait_1_I_55 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[13] ), .C(\counterWait[18]_net_1 ), .Y(N_13));
    OR3 \substate_RNO_6[3]  (.A(\substate_ns_0_7_0_tz_0[3] ), .B(
        \substate_ns_0_a4_9_1[3] ), .C(\substate_ns_0_a4_2_1[3] ), .Y(
        \substate_ns_0_7_0_tz[3] ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_un1_Y_a3_0  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_a3_0_0));
    XA1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I9_Y_m3  
        (.A(\counterPixelsCaptured[10]_net_1 ), .B(
        \counterPixelsCaptured[9]_net_1 ), .C(ADD_9x9_fast_I11_Y_3), 
        .Y(ADD_9x9_fast_I9_Y_m3_0));
    AO1 \substate_i_RNO_3[0]  (.A(\substate_ns_0_a4_4_3[0] ), .B(
        state53), .C(\substate_ns_0_1[0] ), .Y(\substate_ns_0_2[0] ));
    OA1B \substate_i_RNI4VG92[0]  (.A(N_2552_tz), .B(
        un1_substate_0_sqmuxa_1_1_tz), .C(\substate_i[0]_net_1 ), .Y(
        un1_substate_0_sqmuxa_1_0));
    OR3 un3_counterWait_1_I_85 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[30] ), .C(\DWACT_FDEC_E[23] ), .Y(N_5_1));
    OR3B \substate_RNIQIIO3[15]  (.A(\state[10]_net_1 ), .B(
        \substate[15]_net_1 ), .C(state103), .Y(N_1695));
    OA1 \substate_RNO_5[2]  (.A(counterWait8), .B(N_1641), .C(
        \substate_ns_0_a4_0_1[2] ), .Y(N_1575));
    AO1C \counterWait_RNO_1[4]  (.A(N_1975), .B(
        \counterWait_82_0_iv_i_a2_0_0[4] ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\counterWait_82_0_iv_i_0[4] ));
    NOR2B \state_RNI0HCE1[12]  (.A(un1_substate_8), .B(
        \state[12]_net_1 ), .Y(counterWait_1_sqmuxa_3));
    AO1 \substate_RNIRHTU5[7]  (.A(N_77), .B(un1_reset_i_0_tz), .C(
        N_76), .Y(N_14));
    XOR2 \cachedValue_tile_WADDR_REG1_RNILN4B[0]  (.A(\WADDR_REG1[0] ), 
        .B(un41lto0), .Y(I_4_0));
    XNOR2 un3_counterWait_1_I_20 (.A(N_25_0), .B(
        \counterWait[7]_net_1 ), .Y(I_20));
    DFN1 incp (.D(incp_RNO_net_1), .CLK(SCLK_c), .Q(incp_c));
    OR3 \state_RNIFAKC1[4]  (.A(\state[5]_net_1 ), .B(\state[4]_net_1 )
        , .C(\state[2]_net_1 ), .Y(un1_substate_10_sqmuxa_tz_4));
    NOR2B \substate_RNI2E79[1]  (.A(\substate[1]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_1631));
    AO1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_2_1  
        (.A(ADD_9x9_fast_I5_un1_Y_a0_2), .B(ADD_9x9_fast_I2_P0N_a1_0), 
        .C(ADD_9x9_fast_I5_un1_Y_a1), .Y(ADD_9x9_fast_I11_Y_2_1));
    NOR3B \substate_RNO_4[12]  (.A(\state[9]_net_1 ), .B(
        \substate_ns_i_a4_2_0[12] ), .C(counterWait8), .Y(N_1615));
    DFN1 \substate[3]  (.D(\substate_ns[3] ), .CLK(SCLK_c), .Q(
        \substate[3]_net_1 ));
    NOR2A \substate_i_RNID87C[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \substate_i[0]_net_1 ), .Y(N_1643));
    XNOR2 un3_counterWait_1_I_23 (.A(N_24), .B(\counterWait[8]_net_1 ), 
        .Y(I_23));
    NOR2A \substate_RNINSVV[8]  (.A(N_2552_tz), .B(N_1441), .Y(
        \substate_RNINSVV[8]_net_1 ));
    XNOR2 un3_counterWait_1_I_49 (.A(N_15), .B(\counterWait[17]_net_1 )
        , .Y(I_49));
    OR2A \substate_RNI1SC91[3]  (.A(N_4), .B(\substate[3]_net_1 ), .Y(
        un1_substate_8));
    OR2 \counterWait_RNI4505[12]  (.A(\counterWait[12]_net_1 ), .B(
        \counterWait[9]_net_1 ), .Y(counterWait8lt30_11));
    DFN1 \cachedPOINTER[2]  (.D(\cachedPOINTER_23[2] ), .CLK(SCLK_c), 
        .Q(\cachedPOINTER[2]_net_1 ));
    OR3B \state_RNO_1[10]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_70), .C(
        N_104), .Y(\state_ns_i_0_1[10] ));
    OR3 \counterWait_RNI8544[21]  (.A(\counterWait[21]_net_1 ), .B(
        \counterWait[24]_net_1 ), .C(counterWait8lt30_10), .Y(
        counterWait8lt30_20));
    DFN1 \counterPixelsCaptured[6]  (.D(\counterPixelsCaptured_8[6] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[6]_net_1 ));
    AO1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_2_tz  
        (.A(\mult1_un82_sum[5] ), .B(\counterPixelsCaptured[7]_net_1 ), 
        .C(\counterPixelsCaptured[8]_net_1 ), .Y(
        ADD_9x9_fast_I12_Y_0_0_tz));
    NOR3B \counterWait_RNO[29]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_92), 
        .C(N_158), .Y(N_79));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a1_0  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a1_0)
        );
    NOR3A \substate_RNO_3[5]  (.A(un42lto2), .B(\state[7]_net_1 ), .C(
        \state[12]_net_1 ), .Y(\substate_ns_0_a4_1_1[5] ));
    MX2 cachedValue_tile_I_1_RNIE6HM1 (.A(\DOUT_TMP[5] ), .B(
        \DIN_REG1[5] ), .S(N_7_0), .Y(\cachedValue[5] ));
    DFN1 \cachedValue_tile_DIN_REG1[0]  (.D(I_1_RNI15T54), .CLK(SCLK_c)
        , .Q(\DIN_REG1[0] ));
    OA1A \substate_RNIC67O61[5]  (.A(\substate_RNINGOVG[4]_net_1 ), .B(
        incp_2_sqmuxa), .C(I_14), .Y(\cachedPOINTER_23[2] ));
    OR2A busy_RNO (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_809), .Y(
        busy_RNO_net_1));
    DFN1 \counterPixelsCaptured[0]  (.D(\counterPixelsCaptured_8[0] ), 
        .CLK(SCLK_c), .Q(N_672));
    DFN1 \substate[13]  (.D(\substate_RNO[13]_net_1 ), .CLK(SCLK_c), 
        .Q(\substate[13]_net_1 ));
    NOR3 \state_RNO[7]  (.A(\state_ns_i_0[7] ), .B(N_1722), .C(N_1723), 
        .Y(\state_RNO[7]_net_1 ));
    NOR2 \state_RNI87OT[9]  (.A(\state[9]_net_1 ), .B(\state[7]_net_1 )
        , .Y(\un1_state_4_i_a2_0_a2_1[0] ));
    DFN1E0 \counterWait[13]  (.D(N_46), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[13]_net_1 ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_a5_0  
        (.A(\counterPixelsCaptured[6]_net_1 ), .B(\mult1_un103_sum[5] )
        , .Y(ADD_9x9_fast_I11_Y_0_a5_0));
    DFN1 \counterPixelsCaptured[11]  (.D(\counterPixelsCaptured_8[11] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[11]_net_1 ));
    OR3 \substate_i_RNO_6[0]  (.A(N_1559), .B(N_1556), .C(N_1557), .Y(
        \substate_ns_0_1[0] ));
    DFN1 \substate[12]  (.D(\substate_RNO[12]_net_1 ), .CLK(SCLK_c), 
        .Q(\substate[12]_net_1 ));
    NOR2 \counterWait_RNIT9I02[10]  (.A(TP_START_CAPTURE_c), .B(
        counterWait8), .Y(N_155));
    AX1D 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I17_Y  
        (.A(ADD_9x9_fast_I12_Y_0), .B(ADD_9x9_fast_I12_Y_0_0_0), .C(
        ADD_9x9_fast_I17_Y_0_0), .Y(\mult1_un82_sum[7] ));
    DFN1 \state_i[0]  (.D(\state_ns[0] ), .CLK(SCLK_c), .Q(
        \state_i[0]_net_1 ));
    OA1 \substate_RNO_1[8]  (.A(counterWait8), .B(N_1510), .C(
        \substate[4]_net_1 ), .Y(N_1603));
    NOR2B \substate_RNI9DTK[2]  (.A(\substate[2]_net_1 ), .B(
        \state[1]_net_1 ), .Y(substate_4_sqmuxa));
    NOR2 \substate_RNIOJ2C[1]  (.A(\substate[1]_net_1 ), .B(
        \substate[3]_net_1 ), .Y(N_1442));
    OA1 \substate_RNO_1[1]  (.A(N_1628), .B(\substate_ns_0_o2_2_1[1] ), 
        .C(N_2552_tz), .Y(N_1564));
    XA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I1_P0N_m3  
        (.A(ADD_9x9_fast_I1_P0N_m1_e), .B(ADD_9x9_fast_I17_Y_1), .C(
        \counterPixelsCaptured[5]_net_1 ), .Y(ADD_9x9_fast_I1_P0N_m3));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_2  
        (.A(ADD_9x9_fast_I11_Y_0_a0), .B(ADD_9x9_fast_I11_Y_0_0), .C(
        ADD_9x9_fast_I11_Y_1), .Y(ADD_9x9_fast_I11_Y_2));
    AO1B writeEnable_RNO_1 (.A(N_1976), .B(N_1973), .C(
        \state[10]_net_1 ), .Y(un1_state_5));
    XA1B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_0_2  
        (.A(\counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .C(
        \counterPixelsCaptured[15]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_0_2)
        );
    NOR3B \state_RNIFP4O7[2]  (.A(counterWait_0_sqmuxa_4_0), .B(
        counterWait_0_sqmuxa_4_2), .C(N_1437), .Y(
        counterWait_0_sqmuxa_4));
    OA1A \counterPixelsCaptured_RNO[8]  (.A(N_155), .B(N_1105), .C(
        I_63), .Y(\counterPixelsCaptured_8[8] ));
    OR3 un3_counterWait_1_I_75 (.A(\DWACT_FDEC_E[15] ), .B(
        \DWACT_FDEC_E[17] ), .C(\counterWait[24]_net_1 ), .Y(
        \DWACT_FDEC_E[19] ));
    XOR2 un1_counterPixelsCaptured_16_I_61 (.A(
        \counterPixelsCaptured[7]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_2[0] ), .Y(I_61));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_a0  
        (.A(ADD_9x9_fast_I12_Y_a0_0), .B(\mult1_un103_sum[5] ), .Y(
        ADD_9x9_fast_I12_Y_a0));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2  
        (.A(ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2_1), .B(
        ADD_9x9_fast_I3_G0N_a2_0), .Y(
        ADD_9x9_fast_I1_G0Ntt_b0_i_a3_0_a2));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a3_0  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .Y(ADD_9x9_fast_I17_Y_a3_0)
        );
    OR2 un3_counterWait_1_I_57 (.A(\counterWait[18]_net_1 ), .B(
        \counterWait[19]_net_1 ), .Y(\DWACT_FDEC_E[14] ));
    NOR3 \substate_RNO_3[12]  (.A(\state[8]_net_1 ), .B(
        \substate[12]_net_1 ), .C(counterWait_5_sqmuxa), .Y(N_1613));
    NOR2B \state_RNISHL3G[6]  (.A(I_20_0), .B(N_114), .Y(
        \state_RNISHL3G[6]_net_1 ));
    OR2 un3_counterWait_1_I_87 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[30] ), .Y(\DWACT_FDEC_E[24] ));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I17_Y_0  
        (.A(ADD_9x9_fast_I17_Y_1), .B(N146), .Y(ADD_9x9_fast_I17_Y_0));
    NOR3 \substate_RNIT15I[5]  (.A(\substate[6]_net_1 ), .B(
        \substate[5]_net_1 ), .C(\substate[4]_net_1 ), .Y(N_115));
    NOR2B \substate_RNO_3[6]  (.A(\substate[6]_net_1 ), .B(N_69), .Y(
        \substate_ns_i_a4_0[6] ));
    NOR3A \state_RNIUDGR1[4]  (.A(N_126_2), .B(\state[2]_net_1 ), .C(
        \state[4]_net_1 ), .Y(un1_reset_i_a2_0_2_1));
    OR3 un3_counterWait_1_I_51 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[28] ));
    NOR2B \substate_RNO_8[1]  (.A(N_1650), .B(\state[12]_net_1 ), .Y(
        N_1565));
    OA1 \substate_RNO_12[3]  (.A(\substate_ns_0_a4_5_0[3] ), .B(
        \substate_ns_0_a4_6_0[3] ), .C(N_1642), .Y(
        \substate_ns_0_1[3] ));
    AO1C \state_RNO_2[2]  (.A(\state[2]_net_1 ), .B(N_1700), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\state_ns_i_0[2] ));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_a0  
        (.A(\counterPixelsCaptured[13]_net_1 ), .B(
        ADD_9x9_fast_I2_P0N_a5_0), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I1_G0N_a0));
    NOR2B \substate_RNO_18[1]  (.A(\state[2]_net_1 ), .B(un42lto2_1), 
        .Y(\substate_ns_0_a4_1_0[1] ));
    NOR2B \substate_RNO_0[11]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \substate[11]_net_1 ), .Y(\substate_ns_0_0_a2_0[11] ));
    OR3 un3_counterWait_1_I_81 (.A(\DWACT_FDEC_E[29] ), .B(
        \DWACT_FDEC_E[30] ), .C(\DWACT_FDEC_E[21] ), .Y(N_6));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I16_Y_0  
        (.A(\counterPixelsCaptured[5]_net_1 ), .B(
        \counterPixelsCaptured[6]_net_1 ), .Y(ADD_9x9_fast_I16_Y_0));
    NOR3B \substate_i_RNO_5[0]  (.A(\substate_ns_0_a4_4_1[0] ), .B(
        N_1647), .C(N_69), .Y(\substate_ns_0_a4_4_3[0] ));
    OR3 \counterWait_RNI4JFT1[10]  (.A(counterWait8lt30_26), .B(
        counterWait8lt30_25), .C(counterWait8lt30_27), .Y(counterWait8)
        );
    NOR2 \substate_RNO_12[1]  (.A(un41lto0), .B(\state[2]_net_1 ), .Y(
        \substate_ns_0_a4_0_0[1] ));
    NOR3B \counterWait_RNO[8]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_23), 
        .C(N_158), .Y(N_34));
    OA1 \substate_RNIEK5O3[5]  (.A(un1_substate_10_sqmuxa_tz_5), .B(
        un1_substate_10_sqmuxa_tz_6), .C(\substate[5]_net_1 ), .Y(
        un1_substate_10_sqmuxa));
    OR3 un3_counterWait_1_I_24 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(
        \DWACT_FDEC_E[4] ));
    OA1 \substate_RNIFKDL2[4]  (.A(un1_substate_1_sqmuxa_tz_2), .B(
        un1_substate_1_sqmuxa_tz_3), .C(\substate[4]_net_1 ), .Y(
        un1_substate_1_sqmuxa));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I16_Y_2  
        (.A(N146), .B(ADD_9x9_fast_I16_Y_0), .C(ADD_9x9_fast_I1_P0N_m3)
        , .Y(ADD_9x9_fast_I16_Y_2));
    NOR3A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I11_Y_m3_0_a3_m2_0_a2  
        (.A(ADD_9x9_fast_I11_Y_m3_0_a3_m2_0_a2_0), .B(
        mult1_un82_sum_i[6]), .C(\mult1_un82_sum[5] ), .Y(
        ADD_9x9_fast_I11_Y_N_5));
    AO1C \counterWait_RNO[10]  (.A(N_158), .B(I_28), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_40));
    OR3 un3_counterWait_1_I_68 (.A(\DWACT_FDEC_E[34] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[29] ));
    OR3 \counterWait_RNIER4E[10]  (.A(counterWait8lt30_8), .B(
        counterWait8lt30_7), .C(counterWait8lt30_20), .Y(
        counterWait8lt30_25));
    OR2 \counterWait_RNI6P05[5]  (.A(\counterWait[5]_net_1 ), .B(
        \counterWait[27]_net_1 ), .Y(counterWait8lt30_8));
    OR2 \state_RNIFDEF2_0[6]  (.A(N_1509_i_0), .B(counterWait8), .Y(
        N_75));
    NOR2B un1_counterPixelsCaptured_16_I_86 (.A(
        \DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2[0] ));
    NOR3B \substate_RNIR7SI1[2]  (.A(\un43_i_a2_1_a2_1[1] ), .B(
        \un43_i_a2_1_a2_0[1] ), .C(N_61), .Y(\un43_i_a2_1_a2_3[1] ));
    NOR3B \substate_i_RNO_11[0]  (.A(\substate[10]_net_1 ), .B(
        \substate_ns_0_a4_3_0[0] ), .C(counterWait8), .Y(N_1559));
    NOR3A \state_RNO_1[2]  (.A(state20), .B(N_1688), .C(
        \state[1]_net_1 ), .Y(N_1712));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_0_tz_tz  
        (.A(\counterPixelsCaptured[6]_net_1 ), .B(
        \counterPixelsCaptured[5]_net_1 ), .Y(
        ADD_9x9_fast_I11_Y_0_0_tz_tz));
    AOI1 \substate_RNO_4[6]  (.A(\substate[2]_net_1 ), .B(N_69), .C(
        \substate[6]_net_1 ), .Y(\substate_ns_i_0[6] ));
    NOR2B \substate_RNIN9243[9]  (.A(N_1501), .B(N_1625), .Y(N_1650));
    NOR3B \counterWait_RNO[30]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_95), 
        .C(N_158), .Y(N_81));
    AO1A \substate_RNO_15[3]  (.A(N_1499), .B(
        \substate_ns_0_a4_10_2_1[3] ), .C(\substate_ns_0_a4_7_2[3] ), 
        .Y(\substate_ns_0_7_0_tz_0[3] ));
    DFN1 \cachedValue_tile_WADDR_REG1[1]  (.D(\cachedPOINTER[1]_net_1 )
        , .CLK(SCLK_c), .Q(\WADDR_REG1[1] ));
    XOR2 un1_counterPixelsCaptured_16_I_65 (.A(
        \counterPixelsCaptured[14]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .Y(I_65));
    DFN1E0 \counterWait[21]  (.D(N_62), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[21]_net_1 ));
    NOR2B un1_counterPixelsCaptured_16_I_83 (.A(
        \DWACT_ADD_CI_0_TMP[0] ), .B(N_673), .Y(
        \DWACT_ADD_CI_0_g_array_1[0] ));
    NOR2B un1_counterPixelsCaptured_16_I_78 (.A(
        \DWACT_ADD_CI_0_g_array_11[0] ), .B(
        \counterPixelsCaptured[6]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_2[0] ));
    NOR2B un1_counterPixelsCaptured_16_I_82 (.A(
        \DWACT_ADD_CI_0_g_array_11_1[0] ), .B(
        \counterPixelsCaptured[10]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_4[0] ));
    OR2 un3_counterWait_1_I_6 (.A(\counterWait[1]_net_1 ), .B(
        \counterWait[0]_net_1 ), .Y(N_30));
    OA1 \substate_RNO_2[2]  (.A(N_1625), .B(N_1635), .C(
        \state[1]_net_1 ), .Y(N_1574));
    OR3 un3_counterWait_1_I_10 (.A(\counterWait[0]_net_1 ), .B(
        \counterWait[1]_net_1 ), .C(\counterWait[2]_net_1 ), .Y(
        \DWACT_FDEC_E[0] ));
    NOR2 \substate_RNO[13]  (.A(\substate_ns_i_0[13] ), .B(N_1502), .Y(
        \substate_RNO[13]_net_1 ));
    NOR3B \counterPixelsCaptured_RNIU9MA1[8]  (.A(
        \counterPixelsCaptured[8]_net_1 ), .B(
        un1_counterPixelsCaptured_15_1), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(state103_8));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_1  
        (.A(\counterPixelsCaptured_RNI8E8M1S[6]_net_1 ), .B(I9_un1_Y_2)
        , .S(ADD_9x9_fast_I11_un1_Y_m10_0), .Y(I11_un1_Y_1));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_1_2  
        (.A(ADD_9x9_fast_I12_Y_a5_0), .B(ADD_9x9_fast_I12_Y_a4_0), .S(
        \mult1_un82_sum[7] ), .Y(ADD_9x9_fast_I12_Y_1_2));
    DFN1 \counterPixelsCaptured[9]  (.D(\counterPixelsCaptured_8[9] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[9]_net_1 ));
    GND GND_i_0 (.Y(GND_0));
    OR3 un3_counterWait_1_I_13 (.A(\DWACT_FDEC_E[0] ), .B(
        \counterWait[3]_net_1 ), .C(\counterWait[4]_net_1 ), .Y(N_27_0)
        );
    OA1A \counterPixelsCaptured_RNO[11]  (.A(N_155), .B(N_1105), .C(
        I_56), .Y(\counterPixelsCaptured_8[11] ));
    NOR2A \state_i_RNI2MPV1[0]  (.A(counterWait8), .B(
        \state_i[0]_net_1 ), .Y(N_152));
    DFN1 \substate[14]  (.D(\substate_RNO[14]_net_1 ), .CLK(SCLK_c), 
        .Q(\substate[14]_net_1 ));
    NOR2A \state_i_RNI9UV22[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_152)
        , .Y(\state_ns[0] ));
    DFN1 \state[7]  (.D(\state_RNO[7]_net_1 ), .CLK(SCLK_c), .Q(
        \state[7]_net_1 ));
    NOR3A cachedValue_tile_I_1_RNIOP4Q6 (.A(state20_1), .B(
        \cachedValue[6] ), .C(\cachedValue[7] ), .Y(state20_3));
    DFN1E0 \counterWait[22]  (.D(N_64), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[22]_net_1 ));
    OR3 \substate_RNO[3]  (.A(\substate_ns_0_4[3] ), .B(
        \substate_ns_0_7_0[3] ), .C(N_1580), .Y(\substate_ns[3] ));
    OA1B \substate_i_RNIDGIS[0]  (.A(\cachedPOINTER[1]_net_1 ), .B(
        \cachedPOINTER[2]_net_1 ), .C(\substate_i[0]_net_1 ), .Y(
        resp_1_sqmuxa));
    DFN1E0 \counterWait[4]  (.D(N_94), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[4]_net_1 ));
    OR2B \state_RNIPB2I[6]  (.A(\state[6]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(N_1105));
    NOR3B \state_RNIKQGR02[8]  (.A(counterWait_1_sqmuxa_10_10), .B(
        counterWait_5_sqmuxa_2_i), .C(un1_state_0_sqmuxa), .Y(
        counterWait_1_sqmuxa_10_12));
    XNOR2 un3_counterWait_1_I_77 (.A(N_7_1), .B(
        \counterWait[25]_net_1 ), .Y(I_77));
    NOR2A \substate_RNO_21[3]  (.A(\state[12]_net_1 ), .B(N_1501), .Y(
        \substate_ns_0_a4_6_0[3] ));
    OR2A \substate_ns_0_o4_0[4]  (.A(N_2552_tz), .B(un42lto2), .Y(
        N_1523));
    OR2A \counterPixelsCaptured_RNID5NDHH[6]  (.A(
        \counterPixelsCaptured[6]_net_1 ), .B(N146), .Y(d_N_5));
    MX2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_1  
        (.A(ADD_9x9_fast_I11_Y_0_2_tz), .B(ADD_9x9_fast_I11_Y_0_a5_0), 
        .S(N146), .Y(ADD_9x9_fast_I11_Y_1));
    OR3 \substate_RNO_13[1]  (.A(\substate_ns_0_a4_1_0[1] ), .B(
        \substate_ns_0_5_tz_0[1] ), .C(\substate_ns_0_a4_11_1[1] ), .Y(
        \substate_ns_0_5_tz[1] ));
    NOR2B \substate_RNO_2[12]  (.A(N_1547), .B(counterWait8), .Y(
        N_1612));
    NOR2B \substate_RNO_0[5]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \substate[5]_net_1 ), .Y(\substate_ns_0_a4_0[5] ));
    OR3 un3_counterWait_1_I_71 (.A(\counterWait[21]_net_1 ), .B(
        \counterWait[22]_net_1 ), .C(\counterWait[23]_net_1 ), .Y(
        \DWACT_FDEC_E[17] ));
    NOR2B \substate_i_RNO_14[0]  (.A(\state[1]_net_1 ), .B(state9), .Y(
        \substate_ns_0_a4_3_0[0] ));
    NOR2 \state_RNO_3[10]  (.A(\substate[12]_net_1 ), .B(
        \state[10]_net_1 ), .Y(N_104));
    NOR3C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_a6  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        \counterPixelsCaptured[14]_net_1 ), .Y(ADD_9x9_fast_I2_P0N_a6));
    XOR2 un1_counterPixelsCaptured_16_I_66 (.A(
        \counterPixelsCaptured[15]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_6[0] ), .Y(I_66));
    OA1A \substate_RNO_6[2]  (.A(\state[6]_net_1 ), .B(
        TP_START_CAPTURE_c), .C(\state_i[0]_net_1 ), .Y(N_1641));
    MX2 resv_RNO_0 (.A(un1_substate_4_sqmuxa), .B(resv_c), .S(
        un1_substate_4_sqmuxa_3), .Y(N_808));
    NOR2B cachedValue_tile_I_1_RNIPC2D3 (.A(\cachedValue[4] ), .B(
        \cachedValue[3] ), .Y(state20_1));
    OR2 \substate_RNO_1[5]  (.A(N_75), .B(N_70), .Y(N_1514));
    OR2 \substate_RNO_18[3]  (.A(N_1509_i_0), .B(\state[9]_net_1 ), .Y(
        N_1553));
    AO1 \substate_RNO[5]  (.A(\substate_ns_0_a4_0[5] ), .B(N_1514), .C(
        \substate_ns_0_0[5] ), .Y(\substate_ns[5] ));
    XOR2 un1_counterPixelsCaptured_16_I_63 (.A(
        \counterPixelsCaptured[8]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .Y(I_63));
    DFN1 \state[11]  (.D(\state_RNO[11]_net_1 ), .CLK(SCLK_c), .Q(
        \state[11]_net_1 ));
    OR2 resp_RNO_2 (.A(un1_substate_0_sqmuxa_1), .B(
        un1_substate_1_sqmuxa), .Y(un1_counterWait_0_sqmuxa_1));
    NOR2A \counterWait_RNO_0[4]  (.A(counterWait_5_sqmuxa_2_i), .B(
        N_1972), .Y(N_146));
    OA1C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3_0  
        (.A(\counterPixelsCaptured[14]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(ADD_9x9_fast_I17_Y_a3), 
        .Y(ADD_9x9_fast_I17_Y_3_0));
    NOR3C \substate_RNI50QF2[15]  (.A(counterWait8), .B(
        \state[10]_net_1 ), .C(\substate[15]_net_1 ), .Y(
        counterWait_2_sqmuxa_1));
    DFN1E0 \counterWait[5]  (.D(N_27), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[5]_net_1 ));
    AO1A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0_2_tz  
        (.A(ADD_9x9_fast_I17_Y_1), .B(ADD_9x9_fast_I11_Y_0_a1_2_1), .C(
        ADD_9x9_fast_I11_Y_0_a4_0), .Y(ADD_9x9_fast_I11_Y_0_2_tz));
    OR3 \counterWait_RNO[1]  (.A(\un3_counterWait_1_m[1] ), .B(
        \counterWait_7_m[1] ), .C(\counterWait_cnst_m[1] ), .Y(
        \counterWait_82[1] ));
    ZOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I9_un1_Ytt_m4  
        (.A(\mult1_un68_sum[7] ), .B(\counterPixelsCaptured[11]_net_1 )
        , .C(ADD_9x9_fast_I9_un1_Ytt_m4_e), .Y(
        ADD_9x9_fast_I9_un1_Ytt_m4));
    AO1B \state_RNO_1[3]  (.A(N_1688), .B(\state[2]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\state_ns_i_0[3] ));
    DFN1 \substate[11]  (.D(\substate_ns[11] ), .CLK(SCLK_c), .Q(
        \substate[11]_net_1 ));
    OR2A \state_i_RNIG66H[0]  (.A(\state_i[0]_net_1 ), .B(
        \state[6]_net_1 ), .Y(N_1493));
    NOR2 cachedValue_tile_I_1_RNITC2D3 (.A(\cachedValue[7] ), .B(
        \cachedValue[4] ), .Y(state70_0));
    AO1 incv_RNO_1 (.A(\substate[7]_net_1 ), .B(counterWait8), .C(
        un1_counterWait_3_sqmuxa_3_0_0), .Y(un1_counterWait_3_sqmuxa_3)
        );
    OR3 un3_counterWait_1_I_36 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\counterWait[12]_net_1 ), .Y(N_19));
    OA1C \counterWait_RNO[2]  (.A(N_1974), .B(N_1972), .C(
        \counterWait_82_0_iv_i_1[2] ), .Y(N_23_0));
    OR3 \counterWait_RNIAG16[30]  (.A(\counterWait[29]_net_1 ), .B(
        \counterWait[30]_net_1 ), .C(\counterWait[0]_net_1 ), .Y(
        counterWait8lt30_15));
    NOR3A \counterPixelsCaptured_RNII4AO1[4]  (.A(state103_0), .B(
        \counterPixelsCaptured[4]_net_1 ), .C(
        \counterPixelsCaptured[9]_net_1 ), .Y(state103_5));
    OA1B \substate_RNO_1[9]  (.A(counterWait8), .B(
        \substate_ns_i_o4_0[9] ), .C(\substate[9]_net_1 ), .Y(N_1606));
    DFN1 \counterPixelsCaptured[4]  (.D(\counterPixelsCaptured_8[4] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[4]_net_1 ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_0  
        (.A(ADD_9x9_fast_I9_un1_Y_0_2), .B(ADD_9x9_fast_I9_un1_Y_a4), 
        .C(ADD_9x9_fast_I9_un1_Y_0_3), .Y(I9_un1_Y_0));
    OR2A \substate_RNI4JQA2[11]  (.A(\substate[11]_net_1 ), .B(
        counterWait8), .Y(N_1688));
    NOR3B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a0_3  
        (.A(\mult1_un75_sum[5] ), .B(ADD_9x9_fast_I9_un1_Y_a0_1), .C(
        ADD_9x9_fast_I17_Y_1_1), .Y(ADD_9x9_fast_I9_un1_Y_a0_3));
    NOR2 \state_RNO_2[3]  (.A(N_1690), .B(\state[2]_net_1 ), .Y(N_1715)
        );
    AO1 \state_RNIODLE23[7]  (.A(counterWait_1_sqmuxa_10_13), .B(
        counterWait_1_sqmuxa_10_12), .C(resp_0_sqmuxa), .Y(
        un1_counterWait_1_sqmuxa_1));
    OA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_P0N_3  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[11]_net_1 ), .C(ADD_9x9_fast_I3_P0N_3_0)
        , .Y(ADD_9x9_fast_I3_P0N_2));
    NOR2B \state_RNIOH7I1[8]  (.A(incp_1_sqmuxa_1), .B(
        \state[8]_net_1 ), .Y(substate_4_sqmuxa_3));
    XOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I17_Y_1  
        (.A(N150_0), .B(\mult1_un68_sum[5] ), .C(\mult1_un68_sum[7] ), 
        .Y(ADD_9x9_fast_I17_Y_1_1));
    XOR2 un1_counterPixelsCaptured_16_I_59 (.A(
        \counterPixelsCaptured[6]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .Y(I_59));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I12_un1_Y_a1  
        (.A(ADD_9x9_fast_I12_un1_Y_a1_0), .B(\mult1_un75_sum[5] ), .Y(
        ADD_9x9_fast_I12_un1_Y_a1));
    NOR2 \substate_RNI36DJ[9]  (.A(\substate[9]_net_1 ), .B(
        \substate[11]_net_1 ), .Y(N_1446));
    NOR3C state103_9_RNIP5863 (.A(state103_8), .B(state103_7), .C(
        state103_12), .Y(state103));
    AND2 un1_counterPixelsCaptured_16_I_97 (.A(
        \counterPixelsCaptured[12]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_5[0] ));
    OR3 \state_i_RNIM1MH2[0]  (.A(N_70), .B(N_1493), .C(N_69), .Y(
        N_1528));
    NOR3C \counterWait_RNO_0[1]  (.A(I_5), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(N_641_tz), .Y(\un3_counterWait_1_m[1] ));
    DFN1 \counterPixelsCaptured[12]  (.D(\counterPixelsCaptured_8[12] )
        , .CLK(SCLK_c), .Q(\counterPixelsCaptured[12]_net_1 ));
    NOR3B \state_RNO_1[1]  (.A(\substate[10]_net_1 ), .B(
        \state_ns_i_0_a2_0_0[1] ), .C(counterWait8), .Y(N_143));
    OR3 un3_counterWait_1_I_48 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[11] ), .Y(N_15));
    AO1C \counterWait_RNO_1[2]  (.A(counterWait8), .B(N_106), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counterWait_82_0_iv_i_0[2] ));
    AND2 un2_cachedValue_1_I_15 (.A(\cachedValue[3] ), .B(
        \cachedValue[4] ), .Y(\DWACT_FINC_E[1] ));
    NOR2 \substate_RNO_3[10]  (.A(\substate[10]_net_1 ), .B(N_69), .Y(
        N_1609));
    NOR2A \substate_RNO_20[3]  (.A(\state[11]_net_1 ), .B(un42lto2), 
        .Y(\substate_ns_0_a4_5_0[3] ));
    AND2 un1_counterPixelsCaptured_16_I_1 (.A(N_672), .B(
        substate_25_sqmuxa), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XNOR2 un3_counterWait_1_I_14 (.A(N_27_0), .B(
        \counterWait[5]_net_1 ), .Y(I_14_0));
    NOR3B \substate_RNILBHP1[10]  (.A(\state[1]_net_1 ), .B(
        \substate[10]_net_1 ), .C(state9), .Y(
        \substate_ns_0_a4_14_1[1] ));
    XNOR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I16_Y  
        (.A(N146_1), .B(\mult1_un89_sum[5] ), .C(N150_1), .Y(
        \mult1_un96_sum[6] ));
    DFN1 \counterPixelsCaptured[2]  (.D(\counterPixelsCaptured_8[2] ), 
        .CLK(SCLK_c), .Q(N_674));
    DFN1 \cachedValue_tile_DIN_REG1[5]  (.D(\state_RNIT4JMC[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[5] ));
    MX2A \substate_RNO_1[15]  (.A(\substate[15]_net_1 ), .B(N_111), .S(
        \substate[14]_net_1 ), .Y(\substate_ns_i_0_0[15] ));
    NOR2A busy_RNO_2 (.A(TP_START_CAPTURE_c), .B(stonyman_0_busy), .Y(
        busy_1_sqmuxa));
    XOR2 un2_cachedValue_1_I_14 (.A(N_4_1), .B(\cachedValue[5] ), .Y(
        I_14_1));
    OA1A \state_RNI3QBF6[10]  (.A(N_1973), .B(state_0_sqmuxa_8), .C(
        \state[10]_net_1 ), .Y(counterWait_1_sqmuxa_9));
    OA1C \counterWait_RNO_3[4]  (.A(N_52), .B(un1_state_23), .C(
        counterWait8), .Y(\counterWait_82_0_iv_i_a2_0_0[4] ));
    DFN1E0 \counterWait[11]  (.D(N_42), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[11]_net_1 ));
    NOR2 incv_RNO_4 (.A(\state[12]_net_1 ), .B(\state[2]_net_1 ), .Y(
        un1_counterWait_3_sqmuxa_i_a2_1));
    NOR2B cachedValue_tile_I_1_RNI4J9KD_0 (.A(state53_0_a2_0), .B(
        N_122), .Y(state53));
    OR2 \state_RNIV6OT[4]  (.A(\state[4]_net_1 ), .B(\state[3]_net_1 ), 
        .Y(N_1499));
    NOR2B \substate_RNI0G0V1[8]  (.A(\un43_i_a2_1_a2_3[1] ), .B(N_1441)
        , .Y(led_0_c[1]));
    NOR2B \substate_RNIPFRO5[5]  (.A(incp_2_sqmuxa), .B(counterWait8), 
        .Y(cachedPOINTER_0_sqmuxa_1));
    OR3 \substate_i_RNO_2[0]  (.A(N_1502), .B(\substate_ns_0_2[0] ), 
        .C(\substate_ns_0_4[0] ), .Y(\substate_ns_0_5[0] ));
    NOR2B \state_RNO_3[9]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \state[9]_net_1 ), .Y(\state_ns_0_a4_0[9] ));
    NOR3 \state_RNIH9RO[11]  (.A(\state[11]_net_1 ), .B(
        \state[8]_net_1 ), .C(\state[12]_net_1 ), .Y(
        \un1_state_4_i_a2_0_a2_2[3] ));
    AO1D \substate_RNO_0[8]  (.A(\substate[8]_net_1 ), .B(
        \substate[4]_net_1 ), .C(N_1605), .Y(\substate_ns_i_0[8] ));
    OR2 \state_RNICAKC1[2]  (.A(un1_substate_9_sqmuxa_1_3_tz_1), .B(
        \state[2]_net_1 ), .Y(un1_substate_0_sqmuxa_1_1_tz));
    XNOR2 un3_counterWait_1_I_9 (.A(N_29_0), .B(\counterWait[3]_net_1 )
        , .Y(I_9));
    NOR3B \substate_i_RNO_7[0]  (.A(\substate_ns_0_a4_0[0] ), .B(
        N_1647), .C(\state[1]_net_1 ), .Y(\substate_ns_0_a4_2[0] ));
    DFN1 \cachedValue_tile_DIN_REG1[7]  (.D(\state_RNISHL3G[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[7] ));
    NOR3A \state_RNO_0[10]  (.A(\substate[15]_net_1 ), .B(
        \state[9]_net_1 ), .C(counterWait8), .Y(N_105));
    OR3 \substate_RNO_4[3]  (.A(\substate_ns_0_0[3] ), .B(
        \substate_ns_0_1[3] ), .C(N_1584), .Y(\substate_ns_0_2[3] ));
    NOR2 \state_RNIBGRJ[10]  (.A(\state[2]_net_1 ), .B(
        \state[10]_net_1 ), .Y(\un1_state_4_i_a2_0_a2_1[1] ));
    AND3 un2_cachedValue_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\cachedValue[6] ), .Y(N_2_0));
    AO1 \state_RNIGEB7T[8]  (.A(resv_1_sqmuxa), .B(\state[8]_net_1 ), 
        .C(un1_substate_4_sqmuxa_0), .Y(un1_substate_4_sqmuxa));
    AO1A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_0_0  
        (.A(\mult1_un75_sum[5] ), .B(ADD_9x9_fast_I9_un1_Y_a5_1), .C(
        ADD_9x9_fast_I12_Y_a2_0), .Y(ADD_9x9_fast_I9_un1_Y_0_0));
    NOR2B \substate_i_RNO_9[0]  (.A(resv_0_sqmuxa), .B(
        \state[7]_net_1 ), .Y(N_1558));
    DFN1E0 \counterWait[12]  (.D(N_44), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[12]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    AO1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_0_1  
        (.A(ADD_9x9_fast_I17_Y_a1_0), .B(
        \counterPixelsCaptured[14]_net_1 ), .C(ADD_9x9_fast_I2_P0N_a5), 
        .Y(ADD_9x9_fast_I2_P0N_0_1));
    OR3 \state_RNO[8]  (.A(N_1725), .B(N_1727), .C(N_1726), .Y(
        \state_ns[8] ));
    NOR2 \substate_RNIRV2C[2]  (.A(\substate[2]_net_1 ), .B(
        \substate[5]_net_1 ), .Y(\un43_i_a2_1_a2_0[1] ));
    OR2 \counterWait_RNI0TV4[10]  (.A(\counterWait[10]_net_1 ), .B(
        \counterWait[7]_net_1 ), .Y(counterWait8lt30_7));
    NOR2B \state_RNI2OG99[6]  (.A(I_9_0), .B(N_114), .Y(
        \state_RNI2OG99[6]_net_1 ));
    OR3 un3_counterWait_1_I_60 (.A(\counterWait[18]_net_1 ), .B(
        \counterWait[19]_net_1 ), .C(\counterWait[20]_net_1 ), .Y(
        \DWACT_FDEC_E[15] ));
    DFN1 \state[3]  (.D(\state_RNO[3]_net_1 ), .CLK(SCLK_c), .Q(
        \state[3]_net_1 ));
    OR2 un3_counterWait_1_I_63 (.A(\DWACT_FDEC_E[15] ), .B(
        \counterWait[21]_net_1 ), .Y(\DWACT_FDEC_E[16] ));
    NOR2B un2_cachedValue_1_I_6 (.A(\cachedValue[1] ), .B(
        \cachedValue[0] ), .Y(N_7));
    NOR2A \substate_RNO_21[1]  (.A(\state[4]_net_1 ), .B(
        \cachedPOINTER[1]_net_1 ), .Y(\substate_ns_0_a4_6_0[1] ));
    NOR2A \state_RNINH7I1[7]  (.A(\state[7]_net_1 ), .B(N_4), .Y(
        substate_5_sqmuxa_6));
    NOR3A \substate_RNI459E1[1]  (.A(N_1631), .B(N_70), .C(N_1493), .Y(
        N_1642));
    NOR3B \substate_RNO_17[1]  (.A(\state[3]_net_1 ), .B(state31), .C(
        N_37), .Y(N_1570));
    OR3 un3_counterWait_1_I_52 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[12] ), .Y(N_14_0));
    DFN1E0 \counterWait[25]  (.D(N_1966), .CLK(SCLK_c), .E(
        un1_counterWait_1_sqmuxa_1), .Q(\counterWait[25]_net_1 ));
    NOR3C \counterWait_RNO_1[1]  (.A(un1_state_23), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\counterWait_7[1] ), .Y(
        \counterWait_7_m[1] ));
    XNOR2 un3_counterWait_1_I_82 (.A(N_6), .B(\counterWait[26]_net_1 ), 
        .Y(I_82));
    NOR2B un1_counterPixelsCaptured_16_I_91 (.A(
        \DWACT_ADD_CI_0_g_array_3[0] ), .B(
        \counterPixelsCaptured[8]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_3[0] ));
    NOR2B incp_RNO (.A(N_806), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        incp_RNO_net_1));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_G0N_3  
        (.A(\counterPixelsCaptured[11]_net_1 ), .B(
        \counterPixelsCaptured[13]_net_1 ), .C(
        ADD_9x9_fast_I2_P0N_a5_0), .Y(ADD_9x9_fast_I3_G0N_2));
    XOR2 un1_counterPixelsCaptured_16_I_57 (.A(
        \counterPixelsCaptured[5]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_1[0] ), .Y(I_57));
    OA1 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_un1_Y_0  
        (.A(ADD_9x9_fast_I2_P0N_0_4), .B(ADD_9x9_fast_I2_P0N_0_5), .C(
        N132), .Y(ADD_9x9_fast_I11_un1_Y_0_0));
    NOR2A \substate_RNO_2[10]  (.A(N_69), .B(\substate[6]_net_1 ), .Y(
        \substate_ns_i_a4_0[10] ));
    MX2 incp_RNO_0 (.A(un1_substate_9_sqmuxa_1), .B(incp_c), .S(
        un1_substate_9_sqmuxa_4), .Y(N_806));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_P0N_0_3  
        (.A(ADD_9x9_fast_I2_P0N_a5), .B(ADD_9x9_fast_I17_Y_a3), .C(
        ADD_9x9_fast_I3_P0N_0_0), .Y(ADD_9x9_fast_I3_P0N_0_3));
    OR3 \state_RNO[9]  (.A(N_1730), .B(N_1728), .C(N_1729), .Y(
        \state_ns[9] ));
    NOR3 \substate_RNO[10]  (.A(\substate_ns_i_0[10] ), .B(N_1549), .C(
        N_1502), .Y(\substate_RNO[10]_net_1 ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I12_Y_1  
        (.A(ADD_9x9_fast_I12_Y_1_2), .B(ADD_9x9_fast_I12_Y_1_1), .C(
        ADD_9x9_fast_I12_Y_1_3), .Y(N148));
    MX2C 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I11_Y_1  
        (.A(mult1_un82_sum_i[6]), .B(\mult1_un82_sum[7] ), .S(
        ADD_9x9_fast_I11_Y_m3_0), .Y(N146_1));
    NOR3B \substate_RNIMMMP2[10]  (.A(\substate[10]_net_1 ), .B(
        \state[7]_net_1 ), .C(counterWait8), .Y(N_1557));
    NOR2 \state_RNO_1[7]  (.A(N_150), .B(\state[7]_net_1 ), .Y(N_1722));
    XNOR2 un3_counterWait_1_I_26 (.A(N_23), .B(\counterWait[9]_net_1 ), 
        .Y(I_26));
    NOR2B \state_RNI2VA81[11]  (.A(incp_1_sqmuxa_1), .B(
        \state[11]_net_1 ), .Y(substate_4_sqmuxa_4));
    VCC VCC_i (.Y(VCC));
    OA1A \counterPixelsCaptured_RNO[9]  (.A(N_155), .B(N_1105), .C(
        I_52), .Y(\counterPixelsCaptured_8[9] ));
    DFN1 \cachedValue_tile_DIN_REG1[4]  (.D(\state_RNIFU10B[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[4] ));
    NOR3C incv_RNO_3 (.A(un1_counterWait_3_sqmuxa_i_a2_1), .B(
        un1_counterWait_3_sqmuxa_i_a2_0), .C(N_1126), .Y(N_1118));
    XA1B \state_RNO[4]  (.A(\state[3]_net_1 ), .B(N_1690), .C(
        \state_ns_i_0[4] ), .Y(\state_RNO[4]_net_1 ));
    OR2 \state_RNIKAKC1[1]  (.A(N_1494), .B(\state[1]_net_1 ), .Y(N_69)
        );
    NOR3B \counterWait_RNO[11]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(I_32), 
        .C(N_158), .Y(N_42));
    AOI1 \state_RNO_0[3]  (.A(state20), .B(\state[2]_net_1 ), .C(
        \state[3]_net_1 ), .Y(N_1713));
    DFN1 \counterPixelsCaptured[8]  (.D(\counterPixelsCaptured_8[8] ), 
        .CLK(SCLK_c), .Q(\counterPixelsCaptured[8]_net_1 ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_3  
        (.A(ADD_9x9_fast_I12_Y_1_tz), .B(N146), .Y(
        ADD_9x9_fast_I12_Y_1));
    NOR2A \state_RNO_2[7]  (.A(resv_0_sqmuxa), .B(\state[6]_net_1 ), 
        .Y(N_1723));
    DFN1 \cachedValue_tile_DIN_REG1[3]  (.D(\state_RNI2OG99[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\DIN_REG1[3] ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_un1_Y  
        (.A(ADD_9x9_fast_I11_un1_Y_0_0), .B(N150_0), .Y(I11_un1_Y));
    AND2 un1_cachedPOINTER_3_I_1 (.A(un41lto0), .B(
        \substate_RNINGOVG[4]_net_1 ), .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    NOR3A \state_RNO[1]  (.A(\state_ns[0] ), .B(N_142), .C(N_143), .Y(
        \state_RNO[1]_net_1 ));
    DFN1 \cachedPOINTER[1]  (.D(\cachedPOINTER_23[1] ), .CLK(SCLK_c), 
        .Q(\cachedPOINTER[1]_net_1 ));
    XNOR2 un3_counterWait_1_I_59 (.A(N_12), .B(\counterWait[20]_net_1 )
        , .Y(I_59_0));
    MX2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I9_Y_0  
        (.A(ADD_9x9_fast_I12_un1_Y_a1_0), .B(I11_un1_Y), .S(
        ADD_9x9_fast_I9_Y_m3_0), .Y(N150_2));
    NOR2B \cachedPOINTER_RNI6GHJ[0]  (.A(\cachedPOINTER[2]_net_1 ), .B(
        un41lto0), .Y(state9_0));
    OR2A \substate_RNIBR0E2[11]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        N_1688), .Y(N_37));
    OR2 incp_RNO_2 (.A(un1_substate_9_sqmuxa_1), .B(
        un1_substate_10_sqmuxa), .Y(un1_substate_9_sqmuxa_2));
    AND3 un2_cachedValue_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\cachedValue[5] ), .Y(N_3_0));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3  
        (.A(ADD_9x9_fast_I17_Y_3_2), .B(ADD_9x9_fast_I17_Y_3_1), .Y(
        \mult1_un68_sum[7] ));
    XNOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I15_Y  
        (.A(ADD_9x9_fast_I15_Y_0), .B(\mult1_un96_sum_i[7] ), .Y(
        \mult1_un103_sum[5] ));
    XNOR2 un3_counterWait_1_I_89 (.A(N_4_0), .B(
        \counterWait[28]_net_1 ), .Y(I_89));
    NOR2A \substate_RNI5E8P5[15]  (.A(\substate_ns_0_a4_13_1[1] ), .B(
        N_76), .Y(\substate_ns_0_a4_13_2[1] ));
    NOR2A \state_RNO_3[6]  (.A(\state_ns_0_0_a2_1_0[6] ), .B(N_76), .Y(
        N_113));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I3_P0N_0  
        (.A(ADD_9x9_fast_I3_P0N_2), .B(ADD_9x9_fast_I3_P0N_a2), .C(
        ADD_9x9_fast_I3_P0N_0_3), .Y(N132));
    NOR2 \state_RNO[2]  (.A(\state_ns_i_1[2] ), .B(N_1712), .Y(
        \state_RNO[2]_net_1 ));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_a0_0  
        (.A(\counterPixelsCaptured[15]_net_1 ), .B(
        \counterPixelsCaptured[12]_net_1 ), .Y(
        ADD_9x9_fast_I2_P0N_a5_0));
    OA1 \substate_RNIVCCE1[3]  (.A(\substate[3]_net_1 ), .B(
        incp_1_sqmuxa_1), .C(\state[11]_net_1 ), .Y(
        counterWait_4_sqmuxa_1));
    DFN1 \substate[5]  (.D(\substate_ns[5] ), .CLK(SCLK_c), .Q(
        \substate[5]_net_1 ));
    OR3 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I2_P0N_0_4  
        (.A(ADD_9x9_fast_I2_P0N_a2), .B(ADD_9x9_fast_I2_P0N_a7), .C(
        ADD_9x9_fast_I2_P0N_0_1), .Y(ADD_9x9_fast_I2_P0N_0_4));
    DFN1 \substate[2]  (.D(\substate_ns[2] ), .CLK(SCLK_c), .Q(
        \substate[2]_net_1 ));
    NOR3B \counterWait_RNO[22]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        I_65_0), .C(N_158), .Y(N_64));
    AND2 un1_counterPixelsCaptured_16_I_95 (.A(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2[0] ));
    OR3 \counterWait_RNI9D44[22]  (.A(\counterWait[19]_net_1 ), .B(
        \counterWait[22]_net_1 ), .C(counterWait8lt30_6), .Y(
        counterWait8lt30_18));
    XOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I16_Y_m2  
        (.A(ADD_9x9_fast_I16_Y_m2_0), .B(N150_2), .Y(
        mult1_un82_sum_i[6]));
    DFN1 \state[9]  (.D(\state_ns[9] ), .CLK(SCLK_c), .Q(
        \state[9]_net_1 ));
    NOR2A 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I1_P0N_m1_e_0  
        (.A(\mult1_un89_sum[5] ), .B(\counterPixelsCaptured[8]_net_1 ), 
        .Y(ADD_9x9_fast_I1_P0N_m1_e_0));
    OR2A \state_RNIMLKI2[6]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(N_150), 
        .Y(N_1497));
    NOR3C \state_RNIP3M2E1[12]  (.A(N_52), .B(
        counterWait_1_sqmuxa_10_8), .C(counterWait_1_sqmuxa_10_1), .Y(
        counterWait_1_sqmuxa_10_10));
    INV cachedValue_tile_I_3_RNO (.A(N_14), .Y(N_14_i));
    NOR2B 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_un1_Y_a0_0  
        (.A(\counterPixelsCaptured[7]_net_1 ), .B(
        \counterPixelsCaptured[10]_net_1 ), .Y(
        ADD_9x9_fast_I9_un1_Y_a5_0));
    OR2 un3_counterWait_1_I_72 (.A(\DWACT_FDEC_E[15] ), .B(
        \DWACT_FDEC_E[17] ), .Y(\DWACT_FDEC_E[18] ));
    OR3 un3_counterWait_1_I_64 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[13] ), .C(\DWACT_FDEC_E[16] ), .Y(N_10));
    OR2 \state_RNIDAKC1[2]  (.A(\state[2]_net_1 ), .B(N_1499), .Y(
        un1_substate_9_sqmuxa_1_3_tz_2));
    NOR3A \substate_RNO_2[8]  (.A(\substate_ns_i_a4_1_0[8] ), .B(
        counterWait8), .C(\state[6]_net_1 ), .Y(N_1605));
    NOR2 
        \un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I12_Y_a1  
        (.A(N146), .B(\counterPixelsCaptured[6]_net_1 ), .Y(
        ADD_9x9_fast_I12_Y_a1));
    NOR3B \substate_RNO_4[2]  (.A(N_1631), .B(\state[7]_net_1 ), .C(
        N_1501), .Y(N_1578));
    NOR2B \substate_RNO_16[1]  (.A(N_2553_tz), .B(N_1635), .Y(N_1561));
    DFN1 \substate_i[0]  (.D(\substate_ns[0] ), .CLK(SCLK_c), .Q(
        \substate_i[0]_net_1 ));
    OA1A \counterPixelsCaptured_RNO[2]  (.A(N_155), .B(N_1105), .C(
        I_51), .Y(\counterPixelsCaptured_8[2] ));
    NOR2B \state_RNIFU10B[6]  (.A(I_12_0), .B(N_114), .Y(
        \state_RNIFU10B[6]_net_1 ));
    DFN1 writeEnable (.D(writeEnable_RNO_net_1), .CLK(SCLK_c), .Q(
        stonyman_0_writeEnable));
    NOR2B un1_counterPixelsCaptured_16_I_70 (.A(
        \DWACT_ADD_CI_0_g_array_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_1[0] ));
    MX2 \substate_i_RNO_8[0]  (.A(\state[12]_net_1 ), .B(state31), .S(
        \state[4]_net_1 ), .Y(N_1517));
    XNOR2 un3_counterWait_1_I_40 (.A(N_18), .B(\counterWait[14]_net_1 )
        , .Y(I_40));
    XOR2 un1_counterPixelsCaptured_16_I_51 (.A(N_674), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_51));
    OR3 \substate_RNO_0[3]  (.A(N_1588), .B(\substate_ns_0_2[3] ), .C(
        N_1583), .Y(\substate_ns_0_4[3] ));
    NOR2B \state_RNO_2[1]  (.A(\state_i[0]_net_1 ), .B(state9), .Y(
        \state_ns_i_0_a2_0_0[1] ));
    
endmodule


module imaging(
       CoreAPB3_0_APBmslave0_0_PRDATA,
       CoreAPB3_0_APBmslave0_0_PWDATA,
       CoreAPB3_0_APBmslave0_0_PADDR,
       mult1_un82_sum_i,
       led_0_c,
       led_net_0_c,
       TP_PENABLE_c,
       TP_PSEL_c,
       TP_PWRITE_c,
       ioreg_ready,
       r_m1,
       ADD_9x9_fast_I11_Y_m3_0,
       TP_START_CAPTURE_c,
       incp_c,
       resp_c,
       incv_c,
       resv_c,
       imaging_GND,
       imaging_VCC,
       px1_adc_din_c,
       px0_adc_din_c,
       MSS_CORE2_0_M2F_RESET_N,
       SCLK_c,
       CS_c
    );
output [3:0] CoreAPB3_0_APBmslave0_0_PRDATA;
input  [0:0] CoreAPB3_0_APBmslave0_0_PWDATA;
input  [7:0] CoreAPB3_0_APBmslave0_0_PADDR;
output [6:6] mult1_un82_sum_i;
output [3:0] led_0_c;
output [3:0] led_net_0_c;
input  TP_PENABLE_c;
input  TP_PSEL_c;
input  TP_PWRITE_c;
output ioreg_ready;
input  r_m1;
output ADD_9x9_fast_I11_Y_m3_0;
output TP_START_CAPTURE_c;
output incp_c;
output resp_c;
output incv_c;
output resv_c;
input  imaging_GND;
input  imaging_VCC;
input  px1_adc_din_c;
input  px0_adc_din_c;
input  MSS_CORE2_0_M2F_RESET_N;
input  SCLK_c;
output CS_c;

    wire NOR2A_0_Y, adc081s101_2_cs, adc081s101_3_cs, NOR2_2_Y, 
        adc081s101_2_conversionComplete, 
        adc081s101_3_conversionComplete, NOR2_1_Y, 
        adc081s101_0_conversionComplete, 
        adc081s101_1_conversionComplete, NOR2_0_Y, px_adc_Cs, 
        adc081s101_1_cs, AND2_1_Y, \adc081s101_0_dataout[0] , 
        \adc081s101_0_dataout[1] , stonyman_0_startAdcCapture, 
        \adc081s101_1_dataout[0] , \adc081s101_1_dataout[1] , 
        \stonyman_0_px0_out[0] , \stonyman_0_px0_out[1] , 
        \fifo_px_0_Q[0] , fifo_px_0_AFULL, fifo_px_0_OVERFLOW, 
        fifo_px_0_EMPTY, REP, stonyman_0_writeEnable, fifo_px_0_FULL, 
        \stonyman_0_px1_out[0] , \stonyman_0_px1_out[1] , 
        \fifo_px_1_Q[0] , fifo_px_1_AFULL, fifo_px_1_OVERFLOW, 
        fifo_px_1_EMPTY, REP_0, stonyman_0_busy, GND, VCC, GND_0, 
        VCC_0;
    
    adc081s101_adc081s101_0_3 adc081s101_3 (.SCLK_c(SCLK_c), 
        .stonyman_0_startAdcCapture(stonyman_0_startAdcCapture), 
        .adc081s101_3_conversionComplete(
        adc081s101_3_conversionComplete), .adc081s101_3_cs(
        adc081s101_3_cs), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N));
    AND2 AND2_0 (.A(NOR2_0_Y), .B(NOR2A_0_Y), .Y(CS_c));
    GND GND_i_0 (.Y(GND_0));
    AND2 AND2_1 (.A(NOR2_1_Y), .B(NOR2_2_Y), .Y(AND2_1_Y));
    adc081s101_adc081s101_0_2 adc081s101_2 (.SCLK_c(SCLK_c), 
        .adc081s101_2_conversionComplete(
        adc081s101_2_conversionComplete), .stonyman_0_startAdcCapture(
        stonyman_0_startAdcCapture), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .adc081s101_2_cs(adc081s101_2_cs));
    VCC VCC_i (.Y(VCC));
    stonyman_apb3 stonyman_apb3_0 (.CoreAPB3_0_APBmslave0_0_PADDR({
        CoreAPB3_0_APBmslave0_0_PADDR[7], 
        CoreAPB3_0_APBmslave0_0_PADDR[6], 
        CoreAPB3_0_APBmslave0_0_PADDR[5], 
        CoreAPB3_0_APBmslave0_0_PADDR[4], 
        CoreAPB3_0_APBmslave0_0_PADDR[3], 
        CoreAPB3_0_APBmslave0_0_PADDR[2], 
        CoreAPB3_0_APBmslave0_0_PADDR[1], 
        CoreAPB3_0_APBmslave0_0_PADDR[0]}), 
        .CoreAPB3_0_APBmslave0_0_PWDATA({
        CoreAPB3_0_APBmslave0_0_PWDATA[0]}), .fifo_px_0_Q({
        \fifo_px_0_Q[0] }), .fifo_px_1_Q({\fifo_px_1_Q[0] }), 
        .CoreAPB3_0_APBmslave0_0_PRDATA({
        CoreAPB3_0_APBmslave0_0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_0_PRDATA[0]}), .fifo_px_0_EMPTY(
        fifo_px_0_EMPTY), .fifo_px_1_EMPTY(fifo_px_1_EMPTY), .REP_0(
        REP_0), .REP(REP), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .ioreg_ready(ioreg_ready), 
        .TP_START_CAPTURE_c(TP_START_CAPTURE_c), .stonyman_0_busy(
        stonyman_0_busy), .fifo_px_0_OVERFLOW(fifo_px_0_OVERFLOW), 
        .fifo_px_1_OVERFLOW(fifo_px_1_OVERFLOW), .fifo_px_0_FULL(
        fifo_px_0_FULL), .fifo_px_1_AFULL(fifo_px_1_AFULL), 
        .fifo_px_0_AFULL(fifo_px_0_AFULL), .SCLK_c(SCLK_c), 
        .TP_PWRITE_c(TP_PWRITE_c), .TP_PSEL_c(TP_PSEL_c), 
        .TP_PENABLE_c(TP_PENABLE_c));
    fifo_px_1 fifo_px_1 (.stonyman_0_px1_out({\stonyman_0_px1_out[1] , 
        \stonyman_0_px1_out[0] }), .fifo_px_1_Q({\fifo_px_1_Q[0] }), 
        .fifo_px_1_AFULL(fifo_px_1_AFULL), .fifo_px_1_OVERFLOW(
        fifo_px_1_OVERFLOW), .fifo_px_1_EMPTY(fifo_px_1_EMPTY), .REP(
        REP_0), .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), 
        .fifo_px_1_VCC(imaging_VCC), .fifo_px_1_GND(imaging_GND), 
        .SCLK_c(SCLK_c), .stonyman_0_writeEnable(
        stonyman_0_writeEnable));
    fifo_px fifo_px_0 (.stonyman_0_px0_out({\stonyman_0_px0_out[1] , 
        \stonyman_0_px0_out[0] }), .fifo_px_0_Q({\fifo_px_0_Q[0] }), 
        .fifo_px_0_AFULL(fifo_px_0_AFULL), .fifo_px_0_OVERFLOW(
        fifo_px_0_OVERFLOW), .fifo_px_0_EMPTY(fifo_px_0_EMPTY), .REP(
        REP), .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), 
        .fifo_px_VCC(imaging_VCC), .fifo_px_GND(imaging_GND), .SCLK_c(
        SCLK_c), .stonyman_0_writeEnable(stonyman_0_writeEnable), 
        .fifo_px_0_FULL(fifo_px_0_FULL));
    NOR2A NOR2A_0 (.A(adc081s101_2_cs), .B(adc081s101_3_cs), .Y(
        NOR2A_0_Y));
    GND GND_i (.Y(GND));
    VCC VCC_i_0 (.Y(VCC_0));
    adc081s101_adc081s101_0 adc081s101_0 (.adc081s101_0_dataout({
        \adc081s101_0_dataout[1] , \adc081s101_0_dataout[0] }), 
        .SCLK_c(SCLK_c), .stonyman_0_startAdcCapture(
        stonyman_0_startAdcCapture), .px_adc_Cs(px_adc_Cs), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), 
        .adc081s101_0_conversionComplete(
        adc081s101_0_conversionComplete), .px0_adc_din_c(px0_adc_din_c)
        );
    NOR2 NOR2_1 (.A(adc081s101_0_conversionComplete), .B(
        adc081s101_1_conversionComplete), .Y(NOR2_1_Y));
    adc081s101_adc081s101_0_1 adc081s101_1 (.adc081s101_1_dataout({
        \adc081s101_1_dataout[1] , \adc081s101_1_dataout[0] }), 
        .SCLK_c(SCLK_c), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N), .stonyman_0_startAdcCapture(
        stonyman_0_startAdcCapture), .adc081s101_1_conversionComplete(
        adc081s101_1_conversionComplete), .adc081s101_1_cs(
        adc081s101_1_cs), .px1_adc_din_c(px1_adc_din_c));
    stonyman stonyman_0 (.adc081s101_1_dataout({
        \adc081s101_1_dataout[1] , \adc081s101_1_dataout[0] }), 
        .stonyman_0_px1_out({\stonyman_0_px1_out[1] , 
        \stonyman_0_px1_out[0] }), .adc081s101_0_dataout({
        \adc081s101_0_dataout[1] , \adc081s101_0_dataout[0] }), 
        .stonyman_0_px0_out({\stonyman_0_px0_out[1] , 
        \stonyman_0_px0_out[0] }), .led_net_0_c({led_net_0_c[3], 
        led_net_0_c[2], led_net_0_c[1], led_net_0_c[0]}), .led_0_c({
        led_0_c[3], led_0_c[2], led_0_c[1], led_0_c[0]}), 
        .mult1_un82_sum_i({mult1_un82_sum_i[6]}), .stonyman_VCC(
        imaging_VCC), .stonyman_GND(imaging_GND), .SCLK_c(SCLK_c), 
        .AND2_1_Y(AND2_1_Y), .resv_c(resv_c), .incv_c(incv_c), 
        .stonyman_0_writeEnable(stonyman_0_writeEnable), 
        .stonyman_0_startAdcCapture(stonyman_0_startAdcCapture), 
        .resp_c(resp_c), .incp_c(incp_c), .TP_START_CAPTURE_c(
        TP_START_CAPTURE_c), .stonyman_0_busy(stonyman_0_busy), 
        .ADD_9x9_fast_I11_Y_m3_0(ADD_9x9_fast_I11_Y_m3_0), .r_m1(r_m1), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N));
    NOR2 NOR2_0 (.A(px_adc_Cs), .B(adc081s101_1_cs), .Y(NOR2_0_Y));
    NOR2 NOR2_2 (.A(adc081s101_2_conversionComplete), .B(
        adc081s101_3_conversionComplete), .Y(NOR2_2_Y));
    
endmodule


module TOPLEVEL(
       CLK50,
       MAC_CRSDV,
       MAC_RXD,
       MAC_RXER,
       MAINXIN,
       MSS_RESET_N,
       UART_0_RXD,
       px0_adc_din,
       px1_adc_din,
       px2_adc_din,
       CS,
       MAC_MDC,
       MAC_TXD,
       MAC_TXEN,
       SCLK,
       TP_BUSY,
       TP_EMPTY,
       TP_FULL,
       TP_PADDR_BIT2,
       TP_PENABLE,
       TP_PREADY,
       TP_PSEL,
       TP_PWRITE,
       TP_RDEN,
       TP_START_CAPTURE,
       TP_WREN,
       UART_0_TXD,
       incp,
       incv,
       inphi,
       led,
       psram_address,
       psram_nbyte_en,
       psram_ncs0,
       psram_ncs1,
       psram_noe0,
       psram_noe1,
       psram_nwe,
       resp,
       resv,
       rs485_de,
       rs485_nre,
       MAC_MDIO,
       psram_data
    );
input  CLK50;
input  MAC_CRSDV;
input  [1:0] MAC_RXD;
input  MAC_RXER;
input  MAINXIN;
input  MSS_RESET_N;
input  UART_0_RXD;
input  px0_adc_din;
input  px1_adc_din;
input  px2_adc_din;
output CS;
output MAC_MDC;
output [1:0] MAC_TXD;
output MAC_TXEN;
output SCLK;
output TP_BUSY;
output TP_EMPTY;
output TP_FULL;
output TP_PADDR_BIT2;
output TP_PENABLE;
output TP_PREADY;
output TP_PSEL;
output TP_PWRITE;
output TP_RDEN;
output TP_START_CAPTURE;
output TP_WREN;
output UART_0_TXD;
output incp;
output incv;
output inphi;
output [7:0] led;
output [24:0] psram_address;
output [1:0] psram_nbyte_en;
output psram_ncs0;
output psram_ncs1;
output psram_noe0;
output psram_noe1;
output psram_nwe;
output resp;
output resv;
output rs485_de;
output rs485_nre;
inout  MAC_MDIO;
inout  [15:0] psram_data;

    wire FAB_CLK, MSS_CORE2_0_M2F_RESET_N, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] , 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] , 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] , 
        CoreAHBLite_0_AHBmslave5_HREADY, 
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] , 
        CoreAHBLite_0_AHBmslave6_HREADY, 
        \CoreAPB3_0_APBmslave0_0_PADDR[0] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[1] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[2] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[3] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[4] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[5] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[6] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[7] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[8] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[9] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[10] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[11] , 
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] , 
        COREAHBTOAPB3_0_APBmaster_PSELx, 
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] , N_8, 
        \CAHBLTl00I_RNINQKO3[5] , \CAHBLTl00I_RNIPQKO3[5] , 
        \CAHBLTl00I_RNIRQKO3[5] , \CAHBLTl00I_RNITQKO3[5] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv , 
        \psram_cr_0.cr_int_i0.data_reg[0] , 
        \psram_cr_0.cr_int_i0.active_data , 
        \psram_cr_0.cr_int_i0.data_reg[1] , 
        \psram_cr_0.cr_int_i0.data_reg[2] , 
        \psram_cr_0.cr_int_i0.data_reg[3] , 
        \psram_cr_0.cr_int_i0.data_reg[4] , 
        \psram_cr_0.cr_int_i0.data_reg[5] , 
        \psram_cr_0.cr_int_i0.data_reg[6] , 
        \psram_cr_0.cr_int_i0.data_reg[7] , 
        \psram_cr_0.cr_int_i0.data_reg[8] , 
        \psram_cr_0.cr_int_i0.data_reg[9] , 
        \psram_cr_0.cr_int_i0.data_reg[10] , 
        \psram_cr_0.cr_int_i0.data_reg[11] , 
        \psram_cr_0.cr_int_i0.data_reg[12] , 
        \psram_cr_0.cr_int_i0.data_reg[13] , 
        \psram_cr_0.cr_int_i0.data_reg[14] , 
        \psram_cr_0.cr_int_i0.data_reg[15] , 
        \imaging_0.stonyman_apb3_0.ioreg_ready , \psram_data_in[0] , 
        \psram_data_in[1] , \psram_data_in[2] , \psram_data_in[3] , 
        \psram_data_in[4] , \psram_data_in[5] , \psram_data_in[6] , 
        \psram_data_in[7] , \psram_data_in[8] , \psram_data_in[9] , 
        \psram_data_in[10] , \psram_data_in[11] , \psram_data_in[12] , 
        \psram_data_in[13] , \psram_data_in[14] , \psram_data_in[15] , 
        CLK50_c, px0_adc_din_c, px1_adc_din_c, CS_c, SCLK_c, 
        TP_PENABLE_c, TP_PSEL_c, TP_PWRITE_c, TP_START_CAPTURE_c, 
        incp_c, incv_c, \led_0_c[0] , \led_0_c[1] , \led_0_c[2] , 
        \led_0_c[3] , \led_net_0_c[0] , \led_net_0_c[1] , 
        \led_net_0_c[2] , \led_net_0_c[3] , \psram_address_c[0] , 
        \psram_address_c[1] , \psram_address_c[2] , 
        \psram_address_c[3] , \psram_address_c[4] , 
        \psram_address_c[5] , \psram_address_c[6] , 
        \psram_address_c[7] , \psram_address_c[8] , 
        \psram_address_c[9] , \psram_address_c[10] , 
        \psram_address_c[11] , \psram_address_c[12] , 
        \psram_address_c[13] , \psram_address_c[14] , 
        \psram_address_c[15] , \psram_address_c[16] , 
        \psram_address_c[17] , \psram_address_c[18] , 
        \psram_address_c[19] , \psram_address_c[20] , 
        \psram_address_c[21] , \psram_address_c[22] , 
        \psram_address_c[23] , \psram_address_c[24] , psram_ncs0_c_c_c, 
        psram_noe0_c, psram_nwe_c, resp_c, resv_c, VCC, GND, 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 , 
        COREAHBTOAPB3_0_APBmaster_PREADY, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] , 
        CoreAHBLite_0_AHBmslave5_HWRITE, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll , 
        \CoreAHBLite_0_AHBmslave6_HADDR[7] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 , 
        \CoreAHBLite_0_AHBmslave6_HADDR[10] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[11] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI , 
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] , 
        CoreAHBLite_0_AHBmslave5_HREADY_i_m, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HSIZE[0] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[0] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] , ADD_9x9_fast_I11_Y_m3_0, 
        r_m1_net_1, 
        \imaging_0.stonyman_0.un1_counterPixelsCaptured_13.if_generate_plus.mult1_un82_sum_i[6] , 
        GND_0, VCC_0;
    
    OUTBUF \psram_nbyte_en_pad[1]  (.D(psram_ncs0_c_c_c), .PAD(
        psram_nbyte_en[1]));
    OUTBUF TP_FULL_pad (.D(GND), .PAD(TP_FULL));
    BIBUF \psram_data_pad[0]  (.PAD(psram_data[0]), .D(
        \psram_cr_0.cr_int_i0.data_reg[0] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[0] ));
    OUTBUF \psram_address_pad[10]  (.D(\psram_address_c[10] ), .PAD(
        psram_address[10]));
    BIBUF \psram_data_pad[11]  (.PAD(psram_data[11]), .D(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[11] ));
    OUTBUF \psram_address_pad[9]  (.D(\psram_address_c[9] ), .PAD(
        psram_address[9]));
    OUTBUF \psram_address_pad[11]  (.D(\psram_address_c[11] ), .PAD(
        psram_address[11]));
    OUTBUF \psram_address_pad[17]  (.D(\psram_address_c[17] ), .PAD(
        psram_address[17]));
    OUTBUF TP_PWRITE_pad (.D(TP_PWRITE_c), .PAD(TP_PWRITE));
    OUTBUF \psram_address_pad[15]  (.D(\psram_address_c[15] ), .PAD(
        psram_address[15]));
    clkgenerator clkgenerator_0 (.FAB_CLK(FAB_CLK), .SCLK_c(SCLK_c));
    XOR2 r_m1 (.A(ADD_9x9_fast_I11_Y_m3_0), .B(
        \imaging_0.stonyman_0.un1_counterPixelsCaptured_13.if_generate_plus.mult1_un82_sum_i[6] )
        , .Y(r_m1_net_1));
    OUTBUF \psram_address_pad[23]  (.D(\psram_address_c[23] ), .PAD(
        psram_address[23]));
    OUTBUF \psram_address_pad[22]  (.D(\psram_address_c[22] ), .PAD(
        psram_address[22]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \psram_address_pad[8]  (.D(\psram_address_c[8] ), .PAD(
        psram_address[8]));
    CoreAPB3_Z4 CoreAPB3_0 (.COREAHBTOAPB3_0_APBmaster_PRDATA({
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave0_0_PRDATA({
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave0_0_PADDR({
        \CoreAPB3_0_APBmslave0_0_PADDR[11] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[10] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[9] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[8] }), 
        .COREAHBTOAPB3_0_APBmaster_PREADY(
        COREAHBTOAPB3_0_APBmaster_PREADY), .ioreg_ready(
        \imaging_0.stonyman_apb3_0.ioreg_ready ), .TP_PSEL_c(TP_PSEL_c)
        , .COREAHBTOAPB3_0_APBmaster_PSELx(
        COREAHBTOAPB3_0_APBmaster_PSELx));
    OUTBUF \led_pad[3]  (.D(\led_0_c[3] ), .PAD(led[3]));
    OUTBUF incv_pad (.D(incv_c), .PAD(incv));
    INBUF px1_adc_din_pad (.PAD(px1_adc_din), .Y(px1_adc_din_c));
    BIBUF \psram_data_pad[6]  (.PAD(psram_data[6]), .D(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[6] ));
    OUTBUF \psram_address_pad[6]  (.D(\psram_address_c[6] ), .PAD(
        psram_address[6]));
    OUTBUF TP_PREADY_pad (.D(GND), .PAD(TP_PREADY));
    OUTBUF psram_nwe_pad (.D(psram_nwe_c), .PAD(psram_nwe));
    BIBUF \psram_data_pad[2]  (.PAD(psram_data[2]), .D(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[2] ));
    BIBUF \psram_data_pad[3]  (.PAD(psram_data[3]), .D(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[3] ));
    OUTBUF \led_pad[6]  (.D(\led_net_0_c[2] ), .PAD(led[6]));
    OUTBUF rs485_de_pad (.D(VCC), .PAD(rs485_de));
    OUTBUF \led_pad[5]  (.D(\led_net_0_c[1] ), .PAD(led[5]));
    OUTBUF resv_pad (.D(resv_c), .PAD(resv));
    OUTBUF \psram_address_pad[18]  (.D(\psram_address_c[18] ), .PAD(
        psram_address[18]));
    psram_cr psram_cr_0 (.psram_data_in({\psram_data_in[15] , 
        \psram_data_in[14] , \psram_data_in[13] , \psram_data_in[12] , 
        \psram_data_in[11] , \psram_data_in[10] , \psram_data_in[9] , 
        \psram_data_in[8] , \psram_data_in[7] , \psram_data_in[6] , 
        \psram_data_in[5] , \psram_data_in[4] , \psram_data_in[3] , 
        \psram_data_in[2] , \psram_data_in[1] , \psram_data_in[0] }), 
        .psram_address_c({\psram_address_c[24] , \psram_address_c[23] , 
        \psram_address_c[22] , \psram_address_c[21] , 
        \psram_address_c[20] , \psram_address_c[19] , 
        \psram_address_c[18] , \psram_address_c[17] , 
        \psram_address_c[16] , \psram_address_c[15] , 
        \psram_address_c[14] , \psram_address_c[13] , 
        \psram_address_c[12] , \psram_address_c[11] , 
        \psram_address_c[10] , \psram_address_c[9] , 
        \psram_address_c[8] , \psram_address_c[7] , 
        \psram_address_c[6] , \psram_address_c[5] , 
        \psram_address_c[4] , \psram_address_c[3] , 
        \psram_address_c[2] , \psram_address_c[1] , 
        \psram_address_c[0] }), .data_reg({
        \psram_cr_0.cr_int_i0.data_reg[15] , 
        \psram_cr_0.cr_int_i0.data_reg[14] , 
        \psram_cr_0.cr_int_i0.data_reg[13] , 
        \psram_cr_0.cr_int_i0.data_reg[12] , 
        \psram_cr_0.cr_int_i0.data_reg[11] , 
        \psram_cr_0.cr_int_i0.data_reg[10] , 
        \psram_cr_0.cr_int_i0.data_reg[9] , 
        \psram_cr_0.cr_int_i0.data_reg[8] , 
        \psram_cr_0.cr_int_i0.data_reg[7] , 
        \psram_cr_0.cr_int_i0.data_reg[6] , 
        \psram_cr_0.cr_int_i0.data_reg[5] , 
        \psram_cr_0.cr_int_i0.data_reg[4] , 
        \psram_cr_0.cr_int_i0.data_reg[3] , 
        \psram_cr_0.cr_int_i0.data_reg[2] , 
        \psram_cr_0.cr_int_i0.data_reg[1] , 
        \psram_cr_0.cr_int_i0.data_reg[0] }), .CAHBLTOO0l({
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] }), 
        .CAHBLTl0ll({\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] }), 
        .CoreAHBLite_0_AHBmslave5_HSIZE({
        \CoreAHBLite_0_AHBmslave5_HSIZE[0] }), 
        .CoreAHBLite_0_AHBmslave5_HADDR({
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] }), 
        .CoreAHBLite_0_AHBmslave5_HWDATA({
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] }), 
        .CoreAHBLite_0_AHBmslave5_HRDATA({
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] }), .active_data(
        \psram_cr_0.cr_int_i0.active_data ), .psram_nwe_c(psram_nwe_c), 
        .psram_noe0_c(psram_noe0_c), .psram_ncs0_c_c_c(
        psram_ncs0_c_c_c), .CAHBLTIIlI_iv(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), 
        .CAHBLTI1lII(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), 
        .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), .CAHBLTO1ll(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), 
        .CoreAHBLite_0_AHBmslave5_HREADY_i_m(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), .CAHBLTllIl113(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), 
        .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), .FAB_CLK(FAB_CLK));
    OUTBUF \led_pad[4]  (.D(\led_net_0_c[0] ), .PAD(led[4]));
    CoreAHBLite_Z3 CoreAHBLite_0 (
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] }), .CAHBLTl0ll({
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] }), 
        .CAHBLTl00I_RNINQKO3({\CAHBLTl00I_RNINQKO3[5] }), 
        .CAHBLTl00I_RNIPQKO3({\CAHBLTl00I_RNIPQKO3[5] }), 
        .CAHBLTl00I_RNIRQKO3({\CAHBLTl00I_RNIRQKO3[5] }), 
        .CoreAHBLite_0_AHBmslave6_HRDATA({
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] }), .CAHBLTl00I_RNITQKO3({
        \CAHBLTl00I_RNITQKO3[5] }), .CoreAHBLite_0_AHBmslave5_HRDATA({
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] }), 
        .CoreAHBLite_0_AHBmslave5_HADDR({
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] }), 
        .CoreAHBLite_0_AHBmslave5_HSIZE({
        \CoreAHBLite_0_AHBmslave5_HSIZE[0] }), .CAHBLTOO0l({
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] }), 
        .CoreAHBLite_0_AHBmslave5_HWDATA({
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] }), 
        .CoreAHBLite_0_AHBmslave6_HADDR({
        \CoreAHBLite_0_AHBmslave6_HADDR[11] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[10] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[0] }), 
        .CoreAHBLite_0_AHBmslave6_HWDATA({
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] }), .CAHBLTlOII_iv(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .N_8(
        N_8), .CAHBLTIIlI_iv(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .FAB_CLK(
        FAB_CLK), .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .CAHBLTI1ll(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .CAHBLTllIl113(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), 
        .CAHBLTI1lII(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), 
        .CAHBLTO1ll(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), 
        .CoreAHBLite_0_AHBmslave5_HREADY_i_m(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), 
        .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), 
        .CoreAHBLite_0_AHBmslave5_HWRITE(
        CoreAHBLite_0_AHBmslave5_HWRITE), 
        .CoreAHBLite_0_AHBmslave5_HREADY(
        CoreAHBLite_0_AHBmslave5_HREADY), .CAHBLTI1Il6(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), 
        .un1_CAHBLTI1OI(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI ));
    OUTBUF \psram_address_pad[4]  (.D(\psram_address_c[4] ), .PAD(
        psram_address[4]));
    BIBUF \psram_data_pad[5]  (.PAD(psram_data[5]), .D(
        \psram_cr_0.cr_int_i0.data_reg[5] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[5] ));
    INBUF px0_adc_din_pad (.PAD(px0_adc_din), .Y(px0_adc_din_c));
    COREAHBTOAPB3_15s COREAHBTOAPB3_0 (.CoreAHBLite_0_AHBmslave6_HADDR({
        \CoreAHBLite_0_AHBmslave6_HADDR[11] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[10] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[0] }), 
        .CoreAPB3_0_APBmslave0_0_PADDR({
        \CoreAPB3_0_APBmslave0_0_PADDR[11] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[10] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[9] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[8] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[7] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[6] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[5] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[4] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[3] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[2] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[1] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[0] }), 
        .CoreAHBLite_0_AHBmslave6_HRDATA({
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] }), 
        .COREAHBTOAPB3_0_APBmaster_PRDATA({
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave0_0_PWDATA({
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] }), 
        .CoreAHBLite_0_AHBmslave6_HWDATA({
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] }), .TP_PWRITE_c(
        TP_PWRITE_c), .CAHBLTO1ll(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), 
        .CoreAHBLite_0_AHBmslave6_HREADY(
        CoreAHBLite_0_AHBmslave6_HREADY), .un1_CAHBLTI1OI(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI ), 
        .CAHBLTI1Il6(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), 
        .CAHBLTI1ll(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), 
        .COREAHBTOAPB3_0_APBmaster_PREADY(
        COREAHBTOAPB3_0_APBmaster_PREADY), .TP_PENABLE_c(TP_PENABLE_c), 
        .COREAHBTOAPB3_0_APBmaster_PSELx(
        COREAHBTOAPB3_0_APBmaster_PSELx), .FAB_CLK(FAB_CLK), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N));
    BIBUF \psram_data_pad[15]  (.PAD(psram_data[15]), .D(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[15] ));
    OUTBUF inphi_pad (.D(GND), .PAD(inphi));
    OUTBUF \psram_address_pad[24]  (.D(\psram_address_c[24] ), .PAD(
        psram_address[24]));
    OUTBUF psram_ncs0_pad (.D(psram_ncs0_c_c_c), .PAD(psram_ncs0));
    GND GND_i (.Y(GND));
    BIBUF \psram_data_pad[13]  (.PAD(psram_data[13]), .D(
        \psram_cr_0.cr_int_i0.data_reg[13] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[13] ));
    OUTBUF SCLK_pad (.D(SCLK_c), .PAD(SCLK));
    BIBUF \psram_data_pad[8]  (.PAD(psram_data[8]), .D(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[8] ));
    OUTBUF TP_RDEN_pad (.D(GND), .PAD(TP_RDEN));
    OUTBUF TP_PSEL_pad (.D(TP_PSEL_c), .PAD(TP_PSEL));
    OUTBUF \led_pad[1]  (.D(\led_0_c[1] ), .PAD(led[1]));
    OUTBUF CS_pad (.D(CS_c), .PAD(CS));
    BIBUF \psram_data_pad[4]  (.PAD(psram_data[4]), .D(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[4] ));
    OUTBUF \psram_address_pad[20]  (.D(\psram_address_c[20] ), .PAD(
        psram_address[20]));
    TRIBUFF TP_PADDR_BIT2_pad (.D(GND), .E(GND), .PAD(TP_PADDR_BIT2));
    OUTBUF TP_EMPTY_pad (.D(GND), .PAD(TP_EMPTY));
    OUTBUF \psram_address_pad[21]  (.D(\psram_address_c[21] ), .PAD(
        psram_address[21]));
    OUTBUF \psram_address_pad[13]  (.D(\psram_address_c[13] ), .PAD(
        psram_address[13]));
    OUTBUF \psram_address_pad[12]  (.D(\psram_address_c[12] ), .PAD(
        psram_address[12]));
    MSS_CORE2 MSS_CORE2_0 (.MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] }), 
        .CAHBLTl00I_RNITQKO3({\CAHBLTl00I_RNITQKO3[5] }), 
        .CAHBLTl00I_RNIRQKO3({\CAHBLTl00I_RNIRQKO3[5] }), 
        .CAHBLTl00I_RNIPQKO3({\CAHBLTl00I_RNIPQKO3[5] }), 
        .CAHBLTl00I_RNINQKO3({\CAHBLTl00I_RNINQKO3[5] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR({
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] }), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS_1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .MAC_RXD({
        MAC_RXD[1], MAC_RXD[0]}), .MAC_TXD({MAC_TXD[1], MAC_TXD[0]}), 
        .MAINXIN(MAINXIN), .CLK50_c(CLK50_c), .N_8(N_8), 
        .CAHBLTlOII_iv(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), 
        .MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .MSS_CORE2_GND(GND), 
        .FAB_CLK(FAB_CLK), .MSS_CORE2_VCC(VCC), .MAC_CRSDV(MAC_CRSDV), 
        .MAC_MDC(MAC_MDC), .MAC_MDIO(MAC_MDIO), .MAC_RXER(MAC_RXER), 
        .MAC_TXEN(MAC_TXEN), .MSS_RESET_N(MSS_RESET_N), .UART_0_RXD(
        UART_0_RXD), .UART_0_TXD(UART_0_TXD), .MSS_CORE2_0_M2F_RESET_N(
        MSS_CORE2_0_M2F_RESET_N));
    INBUF CLK50_pad (.PAD(CLK50), .Y(CLK50_c));
    BIBUF \psram_data_pad[7]  (.PAD(psram_data[7]), .D(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[7] ));
    OUTBUF \psram_address_pad[0]  (.D(\psram_address_c[0] ), .PAD(
        psram_address[0]));
    OUTBUF \led_pad[0]  (.D(\led_0_c[0] ), .PAD(led[0]));
    OUTBUF psram_noe1_pad (.D(VCC), .PAD(psram_noe1));
    OUTBUF \led_pad[7]  (.D(\led_net_0_c[3] ), .PAD(led[7]));
    BIBUF \psram_data_pad[10]  (.PAD(psram_data[10]), .D(
        \psram_cr_0.cr_int_i0.data_reg[10] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[10] ));
    OUTBUF \psram_address_pad[19]  (.D(\psram_address_c[19] ), .PAD(
        psram_address[19]));
    BIBUF \psram_data_pad[9]  (.PAD(psram_data[9]), .D(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[9] ));
    OUTBUF \psram_address_pad[16]  (.D(\psram_address_c[16] ), .PAD(
        psram_address[16]));
    OUTBUF TP_PENABLE_pad (.D(TP_PENABLE_c), .PAD(TP_PENABLE));
    OUTBUF \psram_address_pad[7]  (.D(\psram_address_c[7] ), .PAD(
        psram_address[7]));
    OUTBUF \psram_address_pad[1]  (.D(\psram_address_c[1] ), .PAD(
        psram_address[1]));
    OUTBUF rs485_nre_pad (.D(GND), .PAD(rs485_nre));
    OUTBUF TP_START_CAPTURE_pad (.D(TP_START_CAPTURE_c), .PAD(
        TP_START_CAPTURE));
    OUTBUF resp_pad (.D(resp_c), .PAD(resp));
    BIBUF \psram_data_pad[1]  (.PAD(psram_data[1]), .D(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[1] ));
    OUTBUF \psram_address_pad[2]  (.D(\psram_address_c[2] ), .PAD(
        psram_address[2]));
    BIBUF \psram_data_pad[12]  (.PAD(psram_data[12]), .D(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[12] ));
    OUTBUF TP_BUSY_pad (.D(GND), .PAD(TP_BUSY));
    imaging imaging_0 (.CoreAPB3_0_APBmslave0_0_PRDATA({
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave0_0_PWDATA({
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] }), 
        .CoreAPB3_0_APBmslave0_0_PADDR({
        \CoreAPB3_0_APBmslave0_0_PADDR[7] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[6] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[5] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[4] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[3] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[2] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[1] , 
        \CoreAPB3_0_APBmslave0_0_PADDR[0] }), .mult1_un82_sum_i({
        \imaging_0.stonyman_0.un1_counterPixelsCaptured_13.if_generate_plus.mult1_un82_sum_i[6] })
        , .led_0_c({\led_0_c[3] , \led_0_c[2] , \led_0_c[1] , 
        \led_0_c[0] }), .led_net_0_c({\led_net_0_c[3] , 
        \led_net_0_c[2] , \led_net_0_c[1] , \led_net_0_c[0] }), 
        .TP_PENABLE_c(TP_PENABLE_c), .TP_PSEL_c(TP_PSEL_c), 
        .TP_PWRITE_c(TP_PWRITE_c), .ioreg_ready(
        \imaging_0.stonyman_apb3_0.ioreg_ready ), .r_m1(r_m1_net_1), 
        .ADD_9x9_fast_I11_Y_m3_0(ADD_9x9_fast_I11_Y_m3_0), 
        .TP_START_CAPTURE_c(TP_START_CAPTURE_c), .incp_c(incp_c), 
        .resp_c(resp_c), .incv_c(incv_c), .resv_c(resv_c), 
        .imaging_GND(GND), .imaging_VCC(VCC), .px1_adc_din_c(
        px1_adc_din_c), .px0_adc_din_c(px0_adc_din_c), 
        .MSS_CORE2_0_M2F_RESET_N(MSS_CORE2_0_M2F_RESET_N), .SCLK_c(
        SCLK_c), .CS_c(CS_c));
    OUTBUF TP_WREN_pad (.D(GND), .PAD(TP_WREN));
    OUTBUF psram_noe0_pad (.D(psram_noe0_c), .PAD(psram_noe0));
    OUTBUF psram_ncs1_pad (.D(VCC), .PAD(psram_ncs1));
    OUTBUF \psram_nbyte_en_pad[0]  (.D(psram_ncs0_c_c_c), .PAD(
        psram_nbyte_en[0]));
    BIBUF \psram_data_pad[14]  (.PAD(psram_data[14]), .D(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .Y(\psram_data_in[14] ));
    OUTBUF \led_pad[2]  (.D(\led_0_c[2] ), .PAD(led[2]));
    OUTBUF incp_pad (.D(incp_c), .PAD(incp));
    OUTBUF \psram_address_pad[5]  (.D(\psram_address_c[5] ), .PAD(
        psram_address[5]));
    OUTBUF \psram_address_pad[14]  (.D(\psram_address_c[14] ), .PAD(
        psram_address[14]));
    OUTBUF \psram_address_pad[3]  (.D(\psram_address_c[3] ), .PAD(
        psram_address[3]));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
