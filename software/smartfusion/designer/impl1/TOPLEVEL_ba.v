`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1
// File used only for Simulation


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
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0, 
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
        \CoreAHBLite_0_AHBmslave6_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[31] , 
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
        \CoreAPB3_0_APBmslave0_0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[8] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[9] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[10] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[11] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[12] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[13] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[14] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[15] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[16] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[17] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[18] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[19] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[20] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[21] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[22] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[23] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[24] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[25] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[26] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[27] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[28] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[29] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[30] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[31] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] , 
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
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] , 
        \imaging_0.stonyman_apb3_0.ioreg_ready , fifoRden_0__RNIUKTE, 
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
        \psram_cr_0.cr_int_i0.data_reg[15] , \psram_data_in[0] , 
        \psram_data_in[1] , \psram_data_in[2] , \psram_data_in[3] , 
        \psram_data_in[4] , \psram_data_in[5] , \psram_data_in[6] , 
        \psram_data_in[7] , \psram_data_in[8] , \psram_data_in[9] , 
        \psram_data_in[10] , \psram_data_in[11] , \psram_data_in[12] , 
        \psram_data_in[13] , \psram_data_in[14] , \psram_data_in[15] , 
        CLK50_c, CS_c, SCLK_c, TP_EMPTY_c, TP_FULL_c, TP_PENABLE_c, 
        TP_PSEL_c, TP_PWRITE_c, \psram_address_c[0] , 
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
        psram_noe0_c, psram_nwe_c, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[13] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[15] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 , N_91, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[14] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[6] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[4] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[7] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[9] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[11] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[25] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[27] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[28] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[31] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[26] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[23] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[22] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[21] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[18] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[19] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[17] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[30] , 
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] , 
        CoreAHBLite_0_AHBmslave5_HWRITE, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[16] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[10] , 
        CoreAHBLite_0_AHBmslave6_HREADY_i_m, 
        CoreAHBLite_0_AHBmslave5_HREADY_i_m, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] , 
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
        \CoreAHBLite_0_AHBmslave6_HADDR[11] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[0] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[24] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[12] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[10] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[8] , 
        \COREAHBTOAPB3_0_APBmaster_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_0_PADDR_i[7] , 
        \CoreAPB3_0_APBmslave0_0_PADDR_i[6] , 
        \CoreAPB3_0_APBmslave0_0_PADDR_i[5] , 
        \CoreAPB3_0_APBmslave0_0_PADDR_i[4] , 
        \CoreAPB3_0/CAPB3O11_2[0]_net_1 , \psram_cr_0/data_from_cr[0] , 
        \psram_cr_0/data_from_cr[1] , \psram_cr_0/data_from_cr[2] , 
        \psram_cr_0/data_from_cr[3] , \psram_cr_0/data_from_cr[4] , 
        \psram_cr_0/data_from_cr[5] , \psram_cr_0/data_from_cr[6] , 
        \psram_cr_0/data_from_cr[7] , \psram_cr_0/data_from_cr[8] , 
        \psram_cr_0/data_from_cr[9] , \psram_cr_0/data_from_cr[10] , 
        \psram_cr_0/data_from_cr[11] , \psram_cr_0/data_from_cr[12] , 
        \psram_cr_0/data_from_cr[13] , \psram_cr_0/data_from_cr[14] , 
        \psram_cr_0/data_from_cr[15] , \psram_cr_0/max_addr[17] , 
        \psram_cr_0/max_addr[19] , \psram_cr_0/max_addr[0] , 
        \psram_cr_0/max_addr[15] , \psram_cr_0/max_addr[14] , 
        \psram_cr_0/max_addr[24] , \psram_cr_0/max_addr[23] , 
        \psram_cr_0/max_addr[22] , \psram_cr_0/max_addr[21] , 
        \psram_cr_0/max_addr[20] , \psram_cr_0/max_addr[18] , 
        \psram_cr_0/max_addr[16] , \psram_cr_0/max_addr[13] , 
        \psram_cr_0/max_addr[12] , \psram_cr_0/max_addr[11] , 
        \psram_cr_0/max_addr[10] , \psram_cr_0/max_addr[9] , 
        \psram_cr_0/max_addr[8] , \psram_cr_0/max_addr[7] , 
        \psram_cr_0/max_addr[6] , \psram_cr_0/max_addr[5] , 
        \psram_cr_0/max_addr[4] , \psram_cr_0/max_addr[3] , 
        \psram_cr_0/max_addr[2] , \psram_cr_0/max_addr[1] , 
        \psram_cr_0/reg_addr[0] , \psram_cr_0/reg_addr[1] , 
        \psram_cr_0/reg_addr[2] , \psram_cr_0/reg_addr[3] , 
        \psram_cr_0/reg_addr[4] , \psram_cr_0/reg_addr[5] , 
        \psram_cr_0/reg_addr[6] , \psram_cr_0/reg_addr[7] , 
        \psram_cr_0/reg_addr[8] , \psram_cr_0/reg_addr[9] , 
        \psram_cr_0/reg_addr[10] , \psram_cr_0/reg_addr[11] , 
        \psram_cr_0/reg_addr[12] , \psram_cr_0/reg_addr[13] , 
        \psram_cr_0/reg_addr[14] , \psram_cr_0/reg_addr[15] , 
        \psram_cr_0/data_to_cr[0] , \psram_cr_0/data_to_cr[1] , 
        \psram_cr_0/data_to_cr[2] , \psram_cr_0/data_to_cr[3] , 
        \psram_cr_0/data_to_cr[4] , \psram_cr_0/data_to_cr[5] , 
        \psram_cr_0/data_to_cr[6] , \psram_cr_0/data_to_cr[7] , 
        \psram_cr_0/data_to_cr[8] , \psram_cr_0/data_to_cr[9] , 
        \psram_cr_0/data_to_cr[10] , \psram_cr_0/data_to_cr[11] , 
        \psram_cr_0/data_to_cr[12] , \psram_cr_0/data_to_cr[13] , 
        \psram_cr_0/data_to_cr[14] , \psram_cr_0/data_to_cr[15] , 
        \psram_cr_0/start_0_0 , \psram_cr_0/dt_req , 
        \psram_cr_0/dt_ack , \psram_cr_0/dt_rw , 
        \psram_cr_0/cr_int_i0/op_counter_n3_i_1 , 
        \psram_cr_0/cr_int_i0/N_74 , 
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter_n2_i_0 , 
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_1 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_76 , 
        \psram_cr_0/cr_int_i0/noe0_0_sqmuxa_i_0 , 
        \psram_cr_0/cr_int_i0/N_71 , 
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 , 
        \psram_cr_0/cr_int_i0/enable_net_1 , 
        \psram_cr_0/cr_int_i0/N_93 , \psram_cr_0/cr_int_i0/N_77 , 
        \psram_cr_0/cr_int_i0/N_20 , \psram_cr_0/cr_int_i0/N_98 , 
        \psram_cr_0/cr_int_i0/N_97 , \psram_cr_0/cr_int_i0/N_63 , 
        \psram_cr_0/cr_int_i0/ac_countere , 
        \psram_cr_0/cr_int_i0/N_65 , \psram_cr_0/cr_int_i0/N_54 , 
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/un1_clr_i_1 , 
        \psram_cr_0/cr_int_i0/N_56 , 
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_69 , 
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_347 , \psram_cr_0/cr_int_i0/N_68 , 
        \psram_cr_0/cr_int_i0/start_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/start_0_net_1 , 
        \psram_cr_0/cr_int_i0/start_1_net_1 , 
        \psram_cr_0/cr_int_i0/N_231 , 
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_232 , \psram_cr_0/cr_int_i0/N_233 , 
        \psram_cr_0/cr_int_i0/N_234 , \psram_cr_0/cr_int_i0/N_235 , 
        \psram_cr_0/cr_int_i0/N_236 , \psram_cr_0/cr_int_i0/N_237 , 
        \psram_cr_0/cr_int_i0/N_238 , \psram_cr_0/cr_int_i0/N_239 , 
        \psram_cr_0/cr_int_i0/N_240 , \psram_cr_0/cr_int_i0/N_241 , 
        \psram_cr_0/cr_int_i0/N_242 , \psram_cr_0/cr_int_i0/N_243 , 
        \psram_cr_0/cr_int_i0/N_244 , \psram_cr_0/cr_int_i0/N_249 , 
        \psram_cr_0/cr_int_i0/address_5[1] , 
        \psram_cr_0/cr_int_i0/un1_op_counter_1 , 
        \psram_cr_0/cr_int_i0/N_250 , 
        \psram_cr_0/cr_int_i0/address_5[2] , 
        \psram_cr_0/cr_int_i0/N_251 , 
        \psram_cr_0/cr_int_i0/address_5[3] , 
        \psram_cr_0/cr_int_i0/N_252 , 
        \psram_cr_0/cr_int_i0/address_5[4] , 
        \psram_cr_0/cr_int_i0/N_253 , 
        \psram_cr_0/cr_int_i0/address_5[5] , 
        \psram_cr_0/cr_int_i0/N_254 , 
        \psram_cr_0/cr_int_i0/address_5[6] , 
        \psram_cr_0/cr_int_i0/N_255 , 
        \psram_cr_0/cr_int_i0/address_5[7] , 
        \psram_cr_0/cr_int_i0/N_257 , 
        \psram_cr_0/cr_int_i0/address_5[9] , 
        \psram_cr_0/cr_int_i0/N_259 , 
        \psram_cr_0/cr_int_i0/address_5[11] , 
        \psram_cr_0/cr_int_i0/N_260 , 
        \psram_cr_0/cr_int_i0/address_5[12] , 
        \psram_cr_0/cr_int_i0/N_261 , 
        \psram_cr_0/cr_int_i0/address_5[13] , 
        \psram_cr_0/cr_int_i0/N_264 , 
        \psram_cr_0/cr_int_i0/address_5[16] , 
        \psram_cr_0/cr_int_i0/N_266 , 
        \psram_cr_0/cr_int_i0/address_5[18] , 
        \psram_cr_0/cr_int_i0/N_267 , 
        \psram_cr_0/cr_int_i0/address_5[19] , 
        \psram_cr_0/cr_int_i0/N_268 , 
        \psram_cr_0/cr_int_i0/address_5[20] , 
        \psram_cr_0/cr_int_i0/N_269 , 
        \psram_cr_0/cr_int_i0/address_5[21] , 
        \psram_cr_0/cr_int_i0/N_270 , 
        \psram_cr_0/cr_int_i0/address_5[22] , 
        \psram_cr_0/cr_int_i0/N_271 , 
        \psram_cr_0/cr_int_i0/address_5[23] , 
        \psram_cr_0/cr_int_i0/N_272 , 
        \psram_cr_0/cr_int_i0/address_5[24] , 
        \psram_cr_0/cr_int_i0/N_211 , 
        \psram_cr_0/cr_int_i0/data_reg_6[0] , 
        \psram_cr_0/cr_int_i0/N_348 , \psram_cr_0/cr_int_i0/N_212 , 
        \psram_cr_0/cr_int_i0/data_reg_6[1] , 
        \psram_cr_0/cr_int_i0/N_213 , 
        \psram_cr_0/cr_int_i0/data_reg_6[2] , 
        \psram_cr_0/cr_int_i0/N_217 , 
        \psram_cr_0/cr_int_i0/data_reg_6[6] , 
        \psram_cr_0/cr_int_i0/N_221 , 
        \psram_cr_0/cr_int_i0/data_reg_6[10] , 
        \psram_cr_0/cr_int_i0/N_222 , 
        \psram_cr_0/cr_int_i0/data_reg_6[11] , 
        \psram_cr_0/cr_int_i0/N_223 , 
        \psram_cr_0/cr_int_i0/data_reg_6[12] , 
        \psram_cr_0/cr_int_i0/N_224 , 
        \psram_cr_0/cr_int_i0/data_reg_6[13] , 
        \psram_cr_0/cr_int_i0/N_226 , 
        \psram_cr_0/cr_int_i0/data_reg_6[15] , 
        \psram_cr_0/cr_int_i0/N_32 , \psram_cr_0/cr_int_i0/N_40 , 
        \psram_cr_0/cr_int_i0/N_42 , \psram_cr_0/cr_int_i0/N_44 , 
        \psram_cr_0/cr_int_i0/N_46 , \psram_cr_0/cr_int_i0/N_50 , 
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 , 
        \psram_cr_0/cr_int_i0/N_162 , 
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_156 , \psram_cr_0/cr_int_i0/N_157 , 
        \psram_cr_0/cr_int_i0/N_158 , \psram_cr_0/cr_int_i0/N_171 , 
        \psram_cr_0/cr_int_i0/N_168 , \psram_cr_0/cr_int_i0/N_169 , 
        \psram_cr_0/cr_int_i0/N_166 , \psram_cr_0/cr_int_i0/N_167 , 
        \psram_cr_0/cr_int_i0/address_5[0] , 
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_248 , 
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_111 , \psram_cr_0/cr_int_i0/N_78 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/start_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_6[9] , 
        \psram_cr_0/cr_int_i0/N_165 , 
        \psram_cr_0/cr_int_i0/data_reg_6[14] , 
        \psram_cr_0/cr_int_i0/N_170 , 
        \psram_cr_0/cr_int_i0/data_reg_6[8] , 
        \psram_cr_0/cr_int_i0/N_164 , 
        \psram_cr_0/cr_int_i0/data_reg_6[7] , 
        \psram_cr_0/cr_int_i0/N_163 , 
        \psram_cr_0/cr_int_i0/address_5[17] , 
        \psram_cr_0/cr_int_i0/address_5[8] , 
        \psram_cr_0/cr_int_i0/data_reg_6[5] , 
        \psram_cr_0/cr_int_i0/N_161 , 
        \psram_cr_0/cr_int_i0/data_reg_6[4] , 
        \psram_cr_0/cr_int_i0/N_160 , 
        \psram_cr_0/cr_int_i0/data_reg_6[3] , 
        \psram_cr_0/cr_int_i0/N_159 , 
        \psram_cr_0/cr_int_i0/address_5[14] , 
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 , 
        \psram_cr_0/cr_int_i0/N_265 , 
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 , 
        \psram_cr_0/cr_int_i0/N_262 , 
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 , 
        \psram_cr_0/cr_int_i0/N_256 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/N_215 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_214 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 , 
        \psram_cr_0/cr_int_i0/N_245 , \psram_cr_0/cr_int_i0/N_48 , 
        \psram_cr_0/cr_int_i0/N_225 , \psram_cr_0/cr_int_i0/N_38 , 
        \psram_cr_0/cr_int_i0/N_220 , \psram_cr_0/cr_int_i0/N_36 , 
        \psram_cr_0/cr_int_i0/N_219 , \psram_cr_0/cr_int_i0/N_34 , 
        \psram_cr_0/cr_int_i0/N_218 , \psram_cr_0/cr_int_i0/N_30 , 
        \psram_cr_0/cr_int_i0/N_216 , \psram_cr_0/cr_int_i0/N_230 , 
        \psram_cr_0/cr_int_i0/un1_op_counter18 , 
        \psram_cr_0/cr_int_i0/N_99 , \psram_cr_0/cr_int_i0/N_72 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_95 , \psram_cr_0/cr_int_i0/N_22 , 
        \psram_cr_0/cr_int_i0/N_61 , \psram_cr_0/cr_int_i0/N_227 , 
        \psram_cr_0/cr_int_i0/nwe_5 , \psram_cr_0/cr_int_i0/N_229 , 
        \psram_cr_0/cr_int_i0/noe0_5 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_100 , \psram_cr_0/cr_int_i0/N_101 , 
        \psram_cr_0/cr_int_i0/N_102 , 
        \psram_cr_0/cr_int_i0/op_counter_n0 , 
        \psram_cr_0/cr_int_i0/N_58 , \psram_cr_0/cr_int_i0/N_82 , 
        \psram_cr_0/cr_int_i0/address_5[10] , 
        \psram_cr_0/cr_int_i0/address_5[15] , 
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 , 
        \psram_cr_0/cr_int_i0/N_263 , 
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 , 
        \psram_cr_0/cr_int_i0/N_258 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 , 
        \psram_cr_0/cr_int_i0/N_246 , 
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 , 
        \psram_cr_0/ahb0/hwrite_reg4_3 , 
        \psram_cr_0/ahb0/hwrite_reg4_2 , 
        \psram_cr_0/ahb0/hwrite_reg4_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] , 
        \psram_cr_0/ahb0/data_out[7]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa , 
        \psram_cr_0/ahb0/operation_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] , 
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] , 
        \psram_cr_0/ahb0/data_out[1]_net_1 , 
        \psram_cr_0/ahb0/operation_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] , 
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] , 
        \psram_cr_0/ahb0/data_out[5]_net_1 , 
        \psram_cr_0/ahb0/operation_m[5] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] , 
        \psram_cr_0/ahb0/N_111 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] , 
        \psram_cr_0/ahb0/data_out[15]_net_1 , 
        \psram_cr_0/ahb0/operation_m[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] , 
        \psram_cr_0/ahb0/data_out[2]_net_1 , 
        \psram_cr_0/ahb0/operation_m[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] , 
        \psram_cr_0/ahb0/data_out[13]_net_1 , 
        \psram_cr_0/ahb0/operation_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[12] , 
        \psram_cr_0/ahb0/data_in_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa , 
        \psram_cr_0/ahb0/psram_addr_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] , 
        \psram_cr_0/ahb0/data_out[0]_net_1 , 
        \psram_cr_0/ahb0/operation_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] , 
        \psram_cr_0/ahb0/N_87 , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] , 
        \psram_cr_0/ahb0/data_in_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] , 
        \psram_cr_0/ahb0/data_out[9]_net_1 , 
        \psram_cr_0/ahb0/operation_m[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] , 
        \psram_cr_0/ahb0/data_out[10]_net_1 , 
        \psram_cr_0/ahb0/operation_m[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] , 
        \psram_cr_0/ahb0/data_out[4]_net_1 , 
        \psram_cr_0/ahb0/operation_m[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] , 
        \psram_cr_0/ahb0/data_out[8]_net_1 , 
        \psram_cr_0/ahb0/operation_m[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] , 
        \psram_cr_0/ahb0/data_out[14]_net_1 , 
        \psram_cr_0/ahb0/operation_m[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[6] , 
        \psram_cr_0/ahb0/data_in_m[6] , 
        \psram_cr_0/ahb0/psram_addr_m[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] , 
        \psram_cr_0/ahb0/data_out[11]_net_1 , \psram_cr_0/ahb0/N_71 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_1[3] , 
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa , \psram_cr_0/ahb0/N_74 , 
        \psram_cr_0/ahb0/un1_haddr_reg_8_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_9 , 
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 , 
        \psram_cr_0/ahb0/fsm_net_1 , 
        \psram_cr_0/ahb0/hwrite_reg_net_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 , 
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 , \psram_cr_0/ahb0/N_97 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 , 
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 , 
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 , 
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[15] , 
        \psram_cr_0/ahb0/psram_addr_m[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17[14] , 
        \psram_cr_0/ahb0/psram_addr_m[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17[12] , 
        \psram_cr_0/ahb0/operation_m[12] , 
        \psram_cr_0/ahb0/data_out_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_17[10] , 
        \psram_cr_0/ahb0/psram_addr_m[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17[8] , 
        \psram_cr_0/ahb0/psram_addr_m[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17[7] , 
        \psram_cr_0/ahb0/psram_addr_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17[1] , 
        \psram_cr_0/ahb0/psram_addr_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17[13] , 
        \psram_cr_0/ahb0/psram_addr_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17[9] , 
        \psram_cr_0/ahb0/psram_addr_m[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17[6] , 
        \psram_cr_0/ahb0/operation_m[6] , 
        \psram_cr_0/ahb0/data_out_m[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17[5] , 
        \psram_cr_0/ahb0/psram_addr_m[5] , 
        \psram_cr_0/ahb0/hrdata_reg_17[4] , 
        \psram_cr_0/ahb0/psram_addr_m[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17[2] , 
        \psram_cr_0/ahb0/psram_addr_m[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17[3] , \psram_cr_0/ahb0/N_75 , 
        \psram_cr_0/ahb0/N_73 , \psram_cr_0/ahb0/hrdata_reg_17[11] , 
        \psram_cr_0/ahb0/N_70 , \psram_cr_0/ahb0/N_68 , 
        \psram_cr_0/ahb0/hrdata_reg_17[31] , \psram_cr_0/ahb0/N_64 , 
        \psram_cr_0/ahb0/N_63 , \psram_cr_0/ahb0/N_62 , 
        \psram_cr_0/ahb0/N_56 , \psram_cr_0/ahb0/N_85 , 
        \psram_cr_0/ahb0/N_18 , \psram_cr_0/ahb0/N_57 , 
        \psram_cr_0/ahb0/N_113 , \psram_cr_0/ahb0/haddr_reg[2]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 , \psram_cr_0/ahb0/N_95 , 
        \psram_cr_0/ahb0/N_84 , \psram_cr_0/ahb0/hrdata_reg_17[0] , 
        \psram_cr_0/ahb0/psram_addr_m[0] , 
        \psram_cr_0/ahb0/un1_haddr_reg_5 , 
        \psram_cr_0/ahb0/hwrite_reg4 , \psram_cr_0/ahb0/N_167 , 
        \psram_cr_0/ahb0/N_169 , \psram_cr_0/ahb0/fsm_0_sqmuxa , 
        \psram_cr_0/ahb0/N_170 , \psram_cr_0/ahb0/N_171 , 
        \psram_cr_0/ahb0/N_172 , \psram_cr_0/ahb0/N_173 , 
        \psram_cr_0/ahb0/N_174 , \psram_cr_0/ahb0/N_175 , 
        \psram_cr_0/ahb0/N_176 , \psram_cr_0/ahb0/N_177 , 
        \psram_cr_0/ahb0/N_178 , \psram_cr_0/ahb0/N_180 , 
        \psram_cr_0/ahb0/operation5 , \psram_cr_0/ahb0/N_181 , 
        \psram_cr_0/ahb0/N_182 , \psram_cr_0/ahb0/N_183 , 
        \psram_cr_0/ahb0/N_184 , \psram_cr_0/ahb0/N_185 , 
        \psram_cr_0/ahb0/N_186 , \psram_cr_0/ahb0/N_187 , 
        \psram_cr_0/ahb0/N_188 , \psram_cr_0/ahb0/N_189 , 
        \psram_cr_0/ahb0/N_190 , \psram_cr_0/ahb0/N_191 , 
        \psram_cr_0/ahb0/N_192 , \psram_cr_0/ahb0/N_195 , 
        \psram_cr_0/ahb0/N_197 , \psram_cr_0/ahb0/operation[18]_net_1 , 
        \psram_cr_0/ahb0/N_199 , \psram_cr_0/ahb0/operation[20]_net_1 , 
        \psram_cr_0/ahb0/N_200 , \psram_cr_0/ahb0/operation[21]_net_1 , 
        \psram_cr_0/ahb0/N_201 , \psram_cr_0/ahb0/operation[22]_net_1 , 
        \psram_cr_0/ahb0/N_202 , \psram_cr_0/ahb0/operation[23]_net_1 , 
        \psram_cr_0/ahb0/N_204 , \psram_cr_0/ahb0/operation[25]_net_1 , 
        \psram_cr_0/ahb0/N_206 , \psram_cr_0/ahb0/operation[27]_net_1 , 
        \psram_cr_0/ahb0/N_207 , \psram_cr_0/ahb0/operation[28]_net_1 , 
        \psram_cr_0/ahb0/N_212 , \psram_cr_0/ahb0/psram_addr5 , 
        \psram_cr_0/ahb0/N_213 , \psram_cr_0/ahb0/N_214 , 
        \psram_cr_0/ahb0/N_215 , \psram_cr_0/ahb0/N_216 , 
        \psram_cr_0/ahb0/N_217 , \psram_cr_0/ahb0/N_218 , 
        \psram_cr_0/ahb0/N_219 , \psram_cr_0/ahb0/N_220 , 
        \psram_cr_0/ahb0/N_221 , \psram_cr_0/ahb0/N_222 , 
        \psram_cr_0/ahb0/N_223 , \psram_cr_0/ahb0/N_224 , 
        \psram_cr_0/ahb0/N_227 , \psram_cr_0/ahb0/N_229 , 
        \psram_cr_0/ahb0/N_231 , \psram_cr_0/ahb0/N_232 , 
        \psram_cr_0/ahb0/N_233 , \psram_cr_0/ahb0/N_234 , 
        \psram_cr_0/ahb0/N_236 , \psram_cr_0/ahb0/max_addr[25] , 
        \psram_cr_0/ahb0/N_238 , \psram_cr_0/ahb0/max_addr[27] , 
        \psram_cr_0/ahb0/N_239 , \psram_cr_0/ahb0/max_addr[28] , 
        \psram_cr_0/ahb0/N_244 , \psram_cr_0/ahb0/data_in7 , 
        \psram_cr_0/ahb0/N_245 , \psram_cr_0/ahb0/N_246 , 
        \psram_cr_0/ahb0/N_247 , \psram_cr_0/ahb0/N_248 , 
        \psram_cr_0/ahb0/N_249 , \psram_cr_0/ahb0/N_250 , 
        \psram_cr_0/ahb0/N_251 , \psram_cr_0/ahb0/N_252 , 
        \psram_cr_0/ahb0/N_253 , \psram_cr_0/ahb0/N_254 , 
        \psram_cr_0/ahb0/N_255 , \psram_cr_0/ahb0/N_256 , 
        \psram_cr_0/ahb0/N_258 , \psram_cr_0/ahb0/N_260 , 
        \psram_cr_0/ahb0/N_4 , \psram_cr_0/ahb0/N_261 , 
        \psram_cr_0/ahb0/N_262 , \psram_cr_0/ahb0/data_out[3]_net_1 , 
        \psram_cr_0/ahb0/N_263 , \psram_cr_0/ahb0/N_264 , 
        \psram_cr_0/ahb0/N_265 , \psram_cr_0/ahb0/data_out[6]_net_1 , 
        \psram_cr_0/ahb0/N_266 , \psram_cr_0/ahb0/N_268 , 
        \psram_cr_0/ahb0/N_269 , \psram_cr_0/ahb0/N_270 , 
        \psram_cr_0/ahb0/N_271 , \psram_cr_0/ahb0/data_out[12]_net_1 , 
        \psram_cr_0/ahb0/N_272 , \psram_cr_0/ahb0/N_274 , 
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa , 
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa , \psram_cr_0/ahb0/N_59 , 
        \psram_cr_0/ahb0/N_61 , \psram_cr_0/ahb0/hrdata_reg_17[16] , 
        \psram_cr_0/ahb0/hrdata_reg_17[24] , 
        \psram_cr_0/ahb0/operation[24]_net_1 , 
        \psram_cr_0/ahb0/operation_m[18] , 
        \psram_cr_0/ahb0/hrdata_reg_17[18] , 
        \psram_cr_0/ahb0/operation_m[20] , 
        \psram_cr_0/ahb0/hrdata_reg_17[20] , 
        \psram_cr_0/ahb0/operation_m[21] , 
        \psram_cr_0/ahb0/hrdata_reg_17[21] , 
        \psram_cr_0/ahb0/operation_m[22] , 
        \psram_cr_0/ahb0/hrdata_reg_17[22] , 
        \psram_cr_0/ahb0/operation_m[23] , 
        \psram_cr_0/ahb0/hrdata_reg_17[23] , 
        \psram_cr_0/ahb0/operation_m[25] , 
        \psram_cr_0/ahb0/hrdata_reg_17[25] , 
        \psram_cr_0/ahb0/operation_m[27] , 
        \psram_cr_0/ahb0/hrdata_reg_17[27] , 
        \psram_cr_0/ahb0/operation_m[28] , 
        \psram_cr_0/ahb0/hrdata_reg_17[28] , 
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/fsm_0_sqmuxa_1 , 
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/N_210 , 
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/N_242 , 
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/N_168 , \psram_cr_0/ahb0/operation_sel_net_1 , 
        \psram_cr_0/ahb0/busy_net_1 , \psram_cr_0/ahb0/max_addr[31] , 
        \psram_cr_0/ahb0/operation[31]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_sel_net_1 , 
        \psram_cr_0/ahb0/data_in_sel_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_179 , 
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_211 , 
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_243 , 
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_259 , \psram_cr_0/ahb0/un1_haddr_reg_6 , 
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/N_209 , 
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/N_241 , \psram_cr_0/ahb0/hrdata_reg_17[30] , 
        \psram_cr_0/ahb0/max_addr[30] , 
        \psram_cr_0/ahb0/operation_m[30] , 
        \psram_cr_0/ahb0/operation[30]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/N_208 , 
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/N_240 , \psram_cr_0/ahb0/hrdata_reg_17[29] , 
        \psram_cr_0/ahb0/max_addr[29] , 
        \psram_cr_0/ahb0/operation_m[29] , 
        \psram_cr_0/ahb0/operation[29]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/N_198 , 
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/N_230 , \psram_cr_0/ahb0/hrdata_reg_17[19] , 
        \psram_cr_0/ahb0/operation_m[19] , 
        \psram_cr_0/ahb0/operation[19]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/N_205 , 
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/N_237 , \psram_cr_0/ahb0/hrdata_reg_17[26] , 
        \psram_cr_0/ahb0/max_addr[26] , 
        \psram_cr_0/ahb0/operation_m[26] , 
        \psram_cr_0/ahb0/operation[26]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/N_203 , 
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/N_196 , 
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_193 , 
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/N_235 , 
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/N_228 , 
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_225 , 
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_257 , 
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_273 , 
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/N_267 , \psram_cr_0/ahb0/hrdata_reg_17[17] , 
        \psram_cr_0/ahb0/operation_m[17] , 
        \psram_cr_0/ahb0/operation[17]_net_1 , 
        \psram_cr_0/ahb0/dt_req_RNO_net_1 , \psram_cr_0/ahb0/N_65 , 
        \psram_cr_0/ahb0/N_24 , 
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/N_194 , 
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/N_226 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1II_0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/N_160 , 
        \CoreAHBLite_0/CAHBLTO1I0l/N_161 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_1[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_i_a5_2_m2_e_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIG8Q05[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_75 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114_0_o2_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_8 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2tt_m2_0_a2_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_8 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_5 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_7 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0II_i_m , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI00II_i_m , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRLJC3[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_646 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_647 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_649 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_650 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_651 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_652 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_653 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_654 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_655 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_656 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_657 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_165 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_167 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_169 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_171 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_173 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_177 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_181 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_183 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_185 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_187 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_189 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_195 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_199 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_197 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_658 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_648 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_191 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_179 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_193 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_104 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 , 
        \COREAHBTOAPB3_0/N_172 , \COREAHBTOAPB3_0/CAHBtoAPB3Ol , 
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lI , \COREAHBTOAPB3_0/CAHBtoAPB3II , 
        \COREAHBTOAPB3_0/N_152 , \COREAHBTOAPB3_0/CAHBtoAPB3OI , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Il_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_tz , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_a3_0[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_162 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_163 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_177 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns_0_a3_0[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 , 
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn , 
        \MSS_CORE2_0/MSS_UART_0_TXD_D , \MSS_CORE2_0/MSS_UART_0_RXD_Y , 
        \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y , 
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D , \MSS_CORE2_0/MACTXD_net_0[1] , 
        \MSS_CORE2_0/MACTXD_net_0[0] , \MSS_CORE2_0/MSS_MAC_0_RXER_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_1_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y , 
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y , \MSS_CORE2_0/MSS_MAC_0_MDIO_D , 
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E , \MSS_CORE2_0/MSS_MAC_0_MDC_D , 
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y , 
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK , \MSS_CORE2_0/GLA0 , 
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC , 
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK , GLMUXINT_GND, 
        \MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC , 
        \imaging_0/fifo_px_0_Q[0] , \imaging_0/fifo_px_0_Q[1] , 
        \imaging_0/fifo_px_0_Q[2] , \imaging_0/fifo_px_0_Q[3] , 
        \imaging_0/fifo_px_0_Q[4] , \imaging_0/fifo_px_0_Q[5] , 
        \imaging_0/fifo_px_0_Q[6] , \imaging_0/fifo_px_0_Q[7] , 
        \imaging_0/fifo_px_0_Q[8] , \imaging_0/fifo_px_0_Q[9] , 
        \imaging_0/fifo_px_0_Q[10] , \imaging_0/fifo_px_0_Q[11] , 
        \imaging_0/fifo_px_0_Q[12] , \imaging_0/fifo_px_0_Q[13] , 
        \imaging_0/fifo_px_0_Q[14] , \imaging_0/fifo_px_0_Q[15] , 
        \imaging_0/fifo_px_0_Q[16] , \imaging_0/fifo_px_0_Q[17] , 
        \imaging_0/fifo_px_0_Q[18] , \imaging_0/fifo_px_0_Q[19] , 
        \imaging_0/fifo_px_0_Q[20] , \imaging_0/fifo_px_0_Q[21] , 
        \imaging_0/fifo_px_0_Q[22] , \imaging_0/fifo_px_0_Q[23] , 
        \imaging_0/fifo_px_0_Q[24] , \imaging_0/fifo_px_0_Q[25] , 
        \imaging_0/fifo_px_0_Q[26] , \imaging_0/fifo_px_0_Q[27] , 
        \imaging_0/fifo_px_0_Q[28] , \imaging_0/fifo_px_0_Q[29] , 
        \imaging_0/fifo_px_0_Q[30] , \imaging_0/fifo_px_0_Q[31] , 
        \imaging_0/fifo_px_0_OVERFLOW , \imaging_0/DFN1C0_AFULL , 
        \imaging_0/fifo_px_1_Q[0] , \imaging_0/fifo_px_1_Q[1] , 
        \imaging_0/fifo_px_1_Q[2] , \imaging_0/fifo_px_1_Q[3] , 
        \imaging_0/fifo_px_1_Q[4] , \imaging_0/fifo_px_1_Q[5] , 
        \imaging_0/fifo_px_1_Q[6] , \imaging_0/fifo_px_1_Q[7] , 
        \imaging_0/fifo_px_1_Q[8] , \imaging_0/fifo_px_1_Q[9] , 
        \imaging_0/fifo_px_1_Q[10] , \imaging_0/fifo_px_1_Q[11] , 
        \imaging_0/fifo_px_1_Q[12] , \imaging_0/fifo_px_1_Q[13] , 
        \imaging_0/fifo_px_1_Q[14] , \imaging_0/fifo_px_1_Q[15] , 
        \imaging_0/fifo_px_1_Q[16] , \imaging_0/fifo_px_1_Q[17] , 
        \imaging_0/fifo_px_1_Q[18] , \imaging_0/fifo_px_1_Q[19] , 
        \imaging_0/fifo_px_1_Q[20] , \imaging_0/fifo_px_1_Q[21] , 
        \imaging_0/fifo_px_1_Q[22] , \imaging_0/fifo_px_1_Q[23] , 
        \imaging_0/fifo_px_1_Q[24] , \imaging_0/fifo_px_1_Q[25] , 
        \imaging_0/fifo_px_1_Q[26] , \imaging_0/fifo_px_1_Q[27] , 
        \imaging_0/fifo_px_1_Q[28] , \imaging_0/fifo_px_1_Q[29] , 
        \imaging_0/fifo_px_1_Q[30] , \imaging_0/fifo_px_1_Q[31] , 
        \imaging_0/fifo_px_1_OVERFLOW , \imaging_0/fifo_px_1_AFULL , 
        \imaging_0/fifo_px_1_EMPTY , \imaging_0/REP , 
        \imaging_0/fifo_px_0/XNOR2_14_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[5] , 
        \imaging_0/fifo_px_0/MEM_WADDR[7] , 
        \imaging_0/fifo_px_0/XNOR2_12_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[9] , 
        \imaging_0/fifo_px_0/MEM_WADDR[11] , 
        \imaging_0/fifo_px_0/XNOR2_23_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[6] , 
        \imaging_0/fifo_px_0/MEM_WADDR[8] , 
        \imaging_0/fifo_px_0/XOR2_16_Y , 
        \imaging_0/fifo_px_0/AO1_49_Y , 
        \imaging_0/fifo_px_0/AND2_24_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[7] , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[10] , 
        \imaging_0/fifo_px_0/AND3_9_Y , 
        \imaging_0/fifo_px_0/AND3_10_Y , 
        \imaging_0/fifo_px_0/AND3_8_Y , \imaging_0/fifo_px_0/AND3_6_Y , 
        \imaging_0/fifo_px_0/XOR2_68_Y , \imaging_0/fifo_px_0/AO1_0_Y , 
        \imaging_0/fifo_px_0/AND2_21_Y , 
        \imaging_0/fifo_px_0/AO1_25_Y , 
        \imaging_0/fifo_px_0/XNOR2_27_Y , 
        \imaging_0/fifo_px_0/MEM_WADDR[12] , 
        \imaging_0/fifo_px_0/MEMORYRE , \imaging_0/fifo_px_0/REP , 
        \imaging_0/fifo_px_0/AND2_87_Y , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[3] , 
        \imaging_0/fifo_px_0/XNOR2_18_Y , 
        \imaging_0/fifo_px_0/MEM_WADDR[5] , 
        \imaging_0/fifo_px_0/XOR2_8_Y , 
        \imaging_0/fifo_px_0/AND2_70_Y , 
        \imaging_0/fifo_px_0/XNOR2_25_Y , 
        \imaging_0/fifo_px_0/MEM_WADDR[9] , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[4] , 
        \imaging_0/fifo_px_0/XNOR2_21_Y , 
        \imaging_0/fifo_px_0/AO1_24_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[8] , 
        \imaging_0/fifo_px_0/XNOR2_28_Y , 
        \imaging_0/fifo_px_0/MEM_WADDR[6] , 
        \imaging_0/fifo_px_0/EMPTYINT , 
        \imaging_0/fifo_px_0/MEM_WADDR[10] , 
        \imaging_0/fifo_px_0/XOR2_9_Y , 
        \imaging_0/fifo_px_0/G_11_0_o3_1 , 
        \imaging_0/fifo_px_0/XNOR2_5_Y , 
        \imaging_0/fifo_px_0/XNOR2_16_Y , 
        \imaging_0/fifo_px_0/OR2_0_Y , \imaging_0/fifo_px_0/WDIFF[9] , 
        \imaging_0/fifo_px_0/AND2_25_Y , 
        \imaging_0/fifo_px_0/AND3_1_Y , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[2] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] , 
        \imaging_0/fifo_px_0/XNOR2_8_Y , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] , 
        \imaging_0/fifo_px_0/QXI[29] , \imaging_0/fifo_px_0/DVLDI , 
        \imaging_0/fifo_px_0/AND2_37_Y , 
        \imaging_0/fifo_px_0/MEM_WADDR[0] , 
        \imaging_0/fifo_px_0/MEMORYWE , \imaging_0/fifo_px_0/QXI[1] , 
        \imaging_0/fifo_px_0/QXI[9] , \imaging_0/fifo_px_0/QXI[17] , 
        \imaging_0/fifo_px_0/QXI[25] , 
        \imaging_0/fifo_px_0/MEM_WADDR[1] , 
        \imaging_0/fifo_px_0/MEM_WADDR[2] , 
        \imaging_0/fifo_px_0/MEM_WADDR[3] , 
        \imaging_0/fifo_px_0/MEM_WADDR[4] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] , 
        \imaging_0/fifo_px_0/MEMWENEG , \imaging_0/fifo_px_0/MEMRENEG , 
        \imaging_0/fifo_px_0/AO1_4_Y , \imaging_0/fifo_px_0/XOR2_45_Y , 
        \imaging_0/fifo_px_0/AND2_92_Y , 
        \imaging_0/fifo_px_0/AND2_33_Y , 
        \imaging_0/fifo_px_0/XOR2_0_Y , \imaging_0/fifo_px_0/AO1_37_Y , 
        \imaging_0/fifo_px_0/AO1_1_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[1] , 
        \imaging_0/fifo_px_0/AND3_4_Y , 
        \imaging_0/fifo_px_0/XNOR2_2_Y , 
        \imaging_0/fifo_px_0/XNOR2_22_Y , 
        \imaging_0/fifo_px_0/XNOR2_26_Y , \imaging_0/fifo_px_0/QXI[8] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] , 
        \imaging_0/fifo_px_0/QXI[22] , 
        \imaging_0/fifo_px_0/XNOR2_17_Y , 
        \imaging_0/fifo_px_0/AO1_17_Y , 
        \imaging_0/fifo_px_0/XOR2_94_Y , 
        \imaging_0/fifo_px_0/AND2_18_Y , 
        \imaging_0/fifo_px_0/AND2_88_Y , 
        \imaging_0/fifo_px_0/AO1_16_Y , 
        \imaging_0/fifo_px_0/XOR2_15_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] , 
        \imaging_0/fifo_px_0/INV_7_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] , 
        \imaging_0/fifo_px_0/QXI[14] , \imaging_0/fifo_px_0/INV_9_Y , 
        \imaging_0/fifo_px_0/QXI[15] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] , 
        \imaging_0/fifo_px_0/INV_3_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[1] , 
        \imaging_0/fifo_px_0/INV_10_Y , \imaging_0/fifo_px_0/INV_6_Y , 
        \imaging_0/fifo_px_0/XOR2_18_Y , 
        \imaging_0/fifo_px_0/XOR2_6_Y , \imaging_0/fifo_px_0/AO1_18_Y , 
        \imaging_0/fifo_px_0/AND2_38_Y , \imaging_0/fifo_px_0/QXI[20] , 
        \imaging_0/fifo_px_0/QXI[2] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] , 
        \imaging_0/fifo_px_0/INV_12_Y , 
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[12] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[12] , 
        \imaging_0/fifo_px_0/FULLINT , \imaging_0/fifo_px_0/QXI[21] , 
        \imaging_0/fifo_px_0/AO1_15_Y , \imaging_0/fifo_px_0/AO1_44_Y , 
        \imaging_0/fifo_px_0/XOR2_89_Y , 
        \imaging_0/fifo_px_0/AND2_41_Y , 
        \imaging_0/fifo_px_0/AND2_69_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] , 
        \imaging_0/fifo_px_0/AO1_22_Y , \imaging_0/fifo_px_0/INV_0_Y , 
        \imaging_0/fifo_px_0/QXI[4] , \imaging_0/fifo_px_0/QXI[12] , 
        \imaging_0/fifo_px_0/QXI[28] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] , 
        \imaging_0/fifo_px_0/QXI[13] , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] , 
        \imaging_0/fifo_px_0/INV_4_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[0] , 
        \imaging_0/fifo_px_0/AND2_29_Y , 
        \imaging_0/fifo_px_0/AO1_47_Y , \imaging_0/fifo_px_0/AO1_2_Y , 
        \imaging_0/fifo_px_0/XOR2_80_Y , 
        \imaging_0/fifo_px_0/XOR2_78_Y , \imaging_0/fifo_px_0/QXI[3] , 
        \imaging_0/fifo_px_0/XNOR2_24_Y , 
        \imaging_0/fifo_px_0/XOR2_41_Y , 
        \imaging_0/fifo_px_0/AO1_10_Y , 
        \imaging_0/fifo_px_0/AND2_34_Y , \imaging_0/fifo_px_0/QXI[19] , 
        \imaging_0/fifo_px_0/INV_8_Y , \imaging_0/fifo_px_0/AND2_62_Y , 
        \imaging_0/fifo_px_0/AND2A_0_Y , \imaging_0/fifo_px_0/QXI[6] , 
        \imaging_0/fifo_px_0/QXI[30] , \imaging_0/fifo_px_0/QXI[26] , 
        \imaging_0/fifo_px_0/AO1_52_Y , 
        \imaging_0/fifo_px_0/XOR2_40_Y , 
        \imaging_0/fifo_px_0/AO1_45_Y , 
        \imaging_0/fifo_px_0/AND2_58_Y , \imaging_0/fifo_px_0/QXI[7] , 
        \imaging_0/fifo_px_0/QXI[23] , \imaging_0/fifo_px_0/QXI[31] , 
        \imaging_0/fifo_px_0/XNOR2_10_Y , 
        \imaging_0/fifo_px_0/QXI[11] , \imaging_0/fifo_px_0/QXI[27] , 
        \imaging_0/fifo_px_0/QXI[10] , \imaging_0/fifo_px_0/QXI[18] , 
        \imaging_0/fifo_px_0/AND2_90_Y , \imaging_0/fifo_px_0/QXI[5] , 
        \imaging_0/fifo_px_0/AO1_12_Y , 
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] , 
        \imaging_0/fifo_px_0/AND3_2_Y , 
        \imaging_0/fifo_px_0/XNOR2_1_Y , \imaging_0/fifo_px_0/AO1_6_Y , 
        \imaging_0/fifo_px_0/XOR2_57_Y , 
        \imaging_0/fifo_px_0/AND2_89_Y , 
        \imaging_0/fifo_px_0/AND2_84_Y , 
        \imaging_0/fifo_px_0/AND2_10_Y , 
        \imaging_0/fifo_px_0/XNOR2_15_Y , 
        \imaging_0/fifo_px_0/RBINNXTSHIFT[0] , 
        \imaging_0/fifo_px_0/XOR2_11_Y , 
        \imaging_0/fifo_px_0/XNOR2_3_Y , 
        \imaging_0/fifo_px_0/AND2_86_Y , 
        \imaging_0/fifo_px_0/XOR2_22_Y , 
        \imaging_0/fifo_px_0/AND2_65_Y , \imaging_0/fifo_px_0/QXI[0] , 
        \imaging_0/fifo_px_0/QXI[16] , \imaging_0/fifo_px_0/QXI[24] , 
        \imaging_0/fifo_px_0/WDIFF[12] , 
        \imaging_0/fifo_px_0/AND2_74_Y , 
        \imaging_0/fifo_px_0/XNOR2_9_Y , 
        \imaging_0/fifo_px_0/AND2_49_Y , 
        \imaging_0/fifo_px_0/XOR2_21_Y , 
        \imaging_0/fifo_px_0/AND3_3_Y , 
        \imaging_0/fifo_px_0/XNOR2_19_Y , 
        \imaging_0/fifo_px_0/INV_1_Y , 
        \imaging_0/clkgenerator_0/px_adc_sclk_i , 
        \imaging_0/clkgenerator_0/px_adc_sclk_i_i , 
        \imaging_0/stonyman_apb3_0/bus_write_enable_net_1 , 
        \imaging_0/stonyman_apb3_0/bus_read_enable_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam1_fifo_rden , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam0_fifo_rden , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_3 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_28 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_o2_0_0_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_2_sqmuxa_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_41 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_40 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_39 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_489 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[5] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_492 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[8] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_494 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[10] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_496 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[12] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_497 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[13] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_500 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[16] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_508 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[24] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[24]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[8]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[10]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[12]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[13]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[16]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_356 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_359 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_361 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_363 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_364 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_367 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_375 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[31] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_382 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[31]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_515 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[30] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_381 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[30]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_514 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[29] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_380 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[29]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_513 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_504 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[20] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_505 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[21] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_506 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[22] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_507 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[23] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_509 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[25] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_510 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[26] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[20]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[21]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[22]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[23]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[25]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[26]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_371 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_372 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_373 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_374 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_376 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_377 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[4] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_355 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[7] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_358 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[9] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_360 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[11] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_362 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[27] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_378 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[28] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_379 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[11]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_495 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[9]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_493 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_491 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[28]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_512 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[27]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_511 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_488 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_502 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[18] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_503 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[19] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[19]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[18]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_369 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_370 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_485 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[1] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_386 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_352 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_312 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam0full_m , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_518 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_45 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_519 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_46 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_574s , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575s , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_32 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_49 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3[2] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[6] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_357 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_322 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1overflow_m , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_317 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1empty_m , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_388 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_354 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_385 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_351 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[3] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[0] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_490 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_487 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_484 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[14] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_365 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[14]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_498 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_499 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[15] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_501 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[17] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[15]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[17]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_366 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_368 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_387 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_353 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[2] , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 , 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_486 , 
        \imaging_0/fifo_px_1/XNOR2_14_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[5] , 
        \imaging_0/fifo_px_1/MEM_WADDR[7] , 
        \imaging_0/fifo_px_1/XNOR2_12_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[9] , 
        \imaging_0/fifo_px_1/MEM_WADDR[11] , 
        \imaging_0/fifo_px_1/XNOR2_23_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[6] , 
        \imaging_0/fifo_px_1/MEM_WADDR[8] , 
        \imaging_0/fifo_px_1/XOR2_16_Y , 
        \imaging_0/fifo_px_1/AO1_49_Y , \imaging_0/fifo_px_1/AO1_29_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[7] , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[10] , 
        \imaging_0/fifo_px_1/AND3_9_Y , 
        \imaging_0/fifo_px_1/AND3_10_Y , 
        \imaging_0/fifo_px_1/AND3_8_Y , \imaging_0/fifo_px_1/AND3_6_Y , 
        \imaging_0/fifo_px_1/XOR2_68_Y , \imaging_0/fifo_px_1/AO1_0_Y , 
        \imaging_0/fifo_px_1/AND2_21_Y , 
        \imaging_0/fifo_px_1/AO1_25_Y , 
        \imaging_0/fifo_px_1/XNOR2_27_Y , 
        \imaging_0/fifo_px_1/MEM_WADDR[12] , 
        \imaging_0/fifo_px_1/MEMORYRE , 
        \imaging_0/fifo_px_1/AND2_87_Y , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] , 
        \imaging_0/fifo_px_1/XOR2_8_Y , 
        \imaging_0/fifo_px_1/XNOR2_25_Y , 
        \imaging_0/fifo_px_1/MEM_WADDR[9] , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[4] , 
        \imaging_0/fifo_px_1/XNOR2_21_Y , 
        \imaging_0/fifo_px_1/AO1_24_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[8] , 
        \imaging_0/fifo_px_1/XNOR2_28_Y , 
        \imaging_0/fifo_px_1/MEM_WADDR[6] , 
        \imaging_0/fifo_px_1/EMPTYINT , 
        \imaging_0/fifo_px_1/MEM_WADDR[10] , 
        \imaging_0/fifo_px_1/XOR2_9_Y , 
        \imaging_0/fifo_px_1/XNOR2_18_Y , 
        \imaging_0/fifo_px_1/G_11_0_o3_1_0 , 
        \imaging_0/fifo_px_1/XNOR2_16_Y , 
        \imaging_0/fifo_px_1/OR2_0_Y , 
        \imaging_0/fifo_px_1/fifo_px_1_FULL , 
        \imaging_0/fifo_px_1/WDIFF[9] , 
        \imaging_0/fifo_px_1/AND2_25_Y , 
        \imaging_0/fifo_px_1/AND3_1_Y , 
        \imaging_0/fifo_px_1/WDIFF[11] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[2] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[3] , 
        \imaging_0/fifo_px_1/XNOR2_8_Y , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] , 
        \imaging_0/fifo_px_1/QXI[29] , \imaging_0/fifo_px_1/DVLDI , 
        \imaging_0/fifo_px_1/AND2_37_Y , 
        \imaging_0/fifo_px_1/MEM_WADDR[0] , 
        \imaging_0/fifo_px_1/MEMORYWE , \imaging_0/fifo_px_1/QXI[1] , 
        \imaging_0/fifo_px_1/QXI[9] , \imaging_0/fifo_px_1/QXI[17] , 
        \imaging_0/fifo_px_1/QXI[25] , 
        \imaging_0/fifo_px_1/MEM_WADDR[1] , 
        \imaging_0/fifo_px_1/MEM_WADDR[2] , 
        \imaging_0/fifo_px_1/MEM_WADDR[3] , 
        \imaging_0/fifo_px_1/MEM_WADDR[4] , 
        \imaging_0/fifo_px_1/MEM_WADDR[5] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] , 
        \imaging_0/fifo_px_1/MEMWENEG , \imaging_0/fifo_px_1/MEMRENEG , 
        \imaging_0/fifo_px_1/AO1_4_Y , \imaging_0/fifo_px_1/XOR2_45_Y , 
        \imaging_0/fifo_px_1/AND2_92_Y , 
        \imaging_0/fifo_px_1/AND2_33_Y , 
        \imaging_0/fifo_px_1/XOR2_0_Y , \imaging_0/fifo_px_1/AO1_37_Y , 
        \imaging_0/fifo_px_1/AO1_1_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[1] , 
        \imaging_0/fifo_px_1/AND3_4_Y , 
        \imaging_0/fifo_px_1/XNOR2_2_Y , 
        \imaging_0/fifo_px_1/XNOR2_22_Y , 
        \imaging_0/fifo_px_1/XNOR2_26_Y , \imaging_0/fifo_px_1/QXI[8] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] , 
        \imaging_0/fifo_px_1/QXI[22] , 
        \imaging_0/fifo_px_1/XNOR2_17_Y , 
        \imaging_0/fifo_px_1/AO1_17_Y , 
        \imaging_0/fifo_px_1/XOR2_94_Y , 
        \imaging_0/fifo_px_1/AND2_18_Y , 
        \imaging_0/fifo_px_1/AND2_88_Y , 
        \imaging_0/fifo_px_1/AO1_16_Y , 
        \imaging_0/fifo_px_1/XOR2_15_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] , 
        \imaging_0/fifo_px_1/INV_7_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] , 
        \imaging_0/fifo_px_1/QXI[14] , \imaging_0/fifo_px_1/INV_9_Y , 
        \imaging_0/fifo_px_1/QXI[15] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] , 
        \imaging_0/fifo_px_1/INV_3_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[1] , 
        \imaging_0/fifo_px_1/INV_10_Y , \imaging_0/fifo_px_1/INV_6_Y , 
        \imaging_0/fifo_px_1/XOR2_18_Y , 
        \imaging_0/fifo_px_1/XOR2_6_Y , \imaging_0/fifo_px_1/AO1_18_Y , 
        \imaging_0/fifo_px_1/AND2_38_Y , \imaging_0/fifo_px_1/QXI[20] , 
        \imaging_0/fifo_px_1/QXI[2] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] , 
        \imaging_0/fifo_px_1/INV_12_Y , 
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[12] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[12] , 
        \imaging_0/fifo_px_1/FULLINT , \imaging_0/fifo_px_1/QXI[21] , 
        \imaging_0/fifo_px_1/AO1_15_Y , \imaging_0/fifo_px_1/AO1_44_Y , 
        \imaging_0/fifo_px_1/XOR2_89_Y , 
        \imaging_0/fifo_px_1/AND2_41_Y , 
        \imaging_0/fifo_px_1/AND2_69_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] , 
        \imaging_0/fifo_px_1/AO1_22_Y , \imaging_0/fifo_px_1/INV_0_Y , 
        \imaging_0/fifo_px_1/QXI[4] , \imaging_0/fifo_px_1/QXI[12] , 
        \imaging_0/fifo_px_1/QXI[28] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] , 
        \imaging_0/fifo_px_1/QXI[13] , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] , 
        \imaging_0/fifo_px_1/INV_4_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[0] , 
        \imaging_0/fifo_px_1/AND2_29_Y , 
        \imaging_0/fifo_px_1/AO1_47_Y , \imaging_0/fifo_px_1/AO1_2_Y , 
        \imaging_0/fifo_px_1/XOR2_80_Y , 
        \imaging_0/fifo_px_1/XOR2_78_Y , \imaging_0/fifo_px_1/QXI[3] , 
        \imaging_0/fifo_px_1/XNOR2_24_Y , 
        \imaging_0/fifo_px_1/XOR2_41_Y , 
        \imaging_0/fifo_px_1/AO1_10_Y , \imaging_0/fifo_px_1/QXI[19] , 
        \imaging_0/fifo_px_1/INV_8_Y , \imaging_0/fifo_px_1/AO1_23_Y , 
        \imaging_0/fifo_px_1/AND2A_0_Y , \imaging_0/fifo_px_1/QXI[6] , 
        \imaging_0/fifo_px_1/QXI[30] , \imaging_0/fifo_px_1/QXI[26] , 
        \imaging_0/fifo_px_1/AO1_52_Y , 
        \imaging_0/fifo_px_1/XOR2_40_Y , 
        \imaging_0/fifo_px_1/AO1_45_Y , 
        \imaging_0/fifo_px_1/AND2_58_Y , \imaging_0/fifo_px_1/QXI[7] , 
        \imaging_0/fifo_px_1/QXI[23] , \imaging_0/fifo_px_1/QXI[31] , 
        \imaging_0/fifo_px_1/XNOR2_10_Y , 
        \imaging_0/fifo_px_1/QXI[11] , \imaging_0/fifo_px_1/QXI[27] , 
        \imaging_0/fifo_px_1/QXI[10] , \imaging_0/fifo_px_1/QXI[18] , 
        \imaging_0/fifo_px_1/AND2_90_Y , \imaging_0/fifo_px_1/QXI[5] , 
        \imaging_0/fifo_px_1/AO1_12_Y , 
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] , 
        \imaging_0/fifo_px_1/AND3_2_Y , 
        \imaging_0/fifo_px_1/XNOR2_1_Y , 
        \imaging_0/fifo_px_1/AND2_63_Y , \imaging_0/fifo_px_1/AO1_6_Y , 
        \imaging_0/fifo_px_1/XOR2_57_Y , 
        \imaging_0/fifo_px_1/AND2_89_Y , 
        \imaging_0/fifo_px_1/AND2_84_Y , 
        \imaging_0/fifo_px_1/AND2_10_Y , 
        \imaging_0/fifo_px_1/XNOR2_15_Y , 
        \imaging_0/fifo_px_1/RBINNXTSHIFT[0] , 
        \imaging_0/fifo_px_1/XOR2_11_Y , 
        \imaging_0/fifo_px_1/XNOR2_3_Y , 
        \imaging_0/fifo_px_1/AND2_86_Y , 
        \imaging_0/fifo_px_1/XOR2_22_Y , 
        \imaging_0/fifo_px_1/AND2_65_Y , \imaging_0/fifo_px_1/QXI[0] , 
        \imaging_0/fifo_px_1/QXI[16] , \imaging_0/fifo_px_1/QXI[24] , 
        \imaging_0/fifo_px_1/AND2_79_Y , 
        \imaging_0/fifo_px_1/WDIFF[12] , 
        \imaging_0/fifo_px_1/AND2_74_Y , 
        \imaging_0/fifo_px_1/XNOR2_9_Y , 
        \imaging_0/fifo_px_1/AND2_49_Y , 
        \imaging_0/fifo_px_1/XOR2_21_Y , 
        \imaging_0/fifo_px_1/AND3_3_Y , 
        \imaging_0/fifo_px_1/XNOR2_19_Y , 
        \imaging_0/fifo_px_1/AND2_15_Y , \imaging_0/fifo_px_1/INV_1_Y , 
        \imaging_0/adc081s101_0/bitsRead_n2_i_0 , 
        \imaging_0/adc081s101_0/bitsRead[2]_net_1 , 
        \imaging_0/adc081s101_0/N_42 , 
        \imaging_0/adc081s101_0/bitsRead_n1_i_0 , 
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 , 
        \imaging_0/adc081s101_0/bitsRead[1]_net_1 , 
        \imaging_0/adc081s101_0/cntrWaitQuiet_n2_i_a2_0 , 
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 , 
        \imaging_0/adc081s101_0/cntrWaitQuiet[1]_net_1 , 
        \imaging_0/adc081s101_0/cntrWaitQuiet[2]_net_1 , 
        \imaging_0/adc081s101_0/cntrWaitTrailinglde_0_a2_0 , 
        \imaging_0/adc081s101_0/N_41 , \imaging_0/adc081s101_0/N_95 , 
        \imaging_0/adc081s101_0/bitsReade_0_a2_0 , 
        \imaging_0/adc081s101_0/cntrWaitLeading[1]_net_1 , 
        \imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 , 
        \imaging_0/adc081s101_0/bitsRead[3]_net_1 , 
        \imaging_0/adc081s101_0/N_103 , \imaging_0/adc081s101_0/N_75 , 
        \imaging_0/adc081s101_0/N_34 , \imaging_0/adc081s101_0/N_76 , 
        \imaging_0/adc081s101_0/N_36 , \imaging_0/adc081s101_0/cs16 , 
        \imaging_0/adc081s101_0/N_102 , \imaging_0/adc081s101_0/N_70 , 
        \imaging_0/adc081s101_0/N_58 , \imaging_0/adc081s101_0/N_62 , 
        \imaging_0/adc081s101_0/N_136 , 
        \imaging_0/adc081s101_0/cntrWaitTrailing[0]_net_1 , 
        \imaging_0/adc081s101_0/N_69 , 
        \imaging_0/adc081s101_0/cntrWaitLeading_6[0] , 
        \imaging_0/adc081s101_0/cntrWaitLeading_6[1] , 
        \imaging_0/adc081s101_0/cntrWaitTrailinge , 
        \imaging_0/adc081s101_0/bitsReade , 
        \imaging_0/adc081s101_0/N_137 , 
        \imaging_0/adc081s101_0/cntrWaitTrailing[1]_net_1 , 
        \imaging_0/adc081s101_0/N_30 , \imaging_0/adc081s101_0/N_40 , 
        \imaging_0/adc081s101_0/cntrWaitTrailing[2]_net_1 , 
        \imaging_0/adc081s101_0/N_38 , \imaging_0/adc081s101_0/N_61 , 
        \imaging_0/adc081s101_0/un1_reset_i_1 , 
        \imaging_0/adc081s101_0/cntrWaitQuiete , 
        \imaging_0/adc081s101_0/N_43 , \imaging_0/adc081s101_0/N_134 , 
        \imaging_0/adc081s101_0/N_26_1 , 
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_partial_sum[1] , 
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_TMP[0] , 
        \TP_PENABLE_pad/U0/NET1 , \TP_PENABLE_pad/U0/NET2 , 
        \CS_pad/U0/NET1 , \CS_pad/U0/NET2 , \TP_PSEL_pad/U0/NET1 , 
        \TP_PSEL_pad/U0/NET2 , \psram_address_pad[21]/U0/NET1 , 
        \psram_address_pad[21]/U0/NET2 , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET , 
        \led_pad[0]/U0/NET1 , \led_pad[0]/U0/NET2 , 
        \psram_data_pad[5]/U0/NET1 , \psram_data_pad[5]/U0/NET2 , 
        \psram_data_pad[5]/U0/NET3 , \psram_data_pad[8]/U0/NET1 , 
        \psram_data_pad[8]/U0/NET2 , \psram_data_pad[8]/U0/NET3 , 
        \TP_PREADY_pad/U0/NET1 , \TP_PREADY_pad/U0/NET2 , 
        \psram_address_pad[1]/U0/NET1 , \psram_address_pad[1]/U0/NET2 , 
        \psram_data_pad[11]/U0/NET1 , \psram_data_pad[11]/U0/NET2 , 
        \psram_data_pad[11]/U0/NET3 , \psram_address_pad[4]/U0/NET1 , 
        \psram_address_pad[4]/U0/NET2 , \psram_address_pad[5]/U0/NET1 , 
        \psram_address_pad[5]/U0/NET2 , \led_pad[5]/U0/NET1 , 
        \led_pad[5]/U0/NET2 , \psram_address_pad[19]/U0/NET1 , 
        \psram_address_pad[19]/U0/NET2 , 
        \psram_address_pad[13]/U0/NET1 , 
        \psram_address_pad[13]/U0/NET2 , \psram_data_pad[13]/U0/NET1 , 
        \psram_data_pad[13]/U0/NET2 , \psram_data_pad[13]/U0/NET3 , 
        \TP_WREN_pad/U0/NET1 , \TP_WREN_pad/U0/NET2 , 
        \SCLK_pad/U0/NET1 , \SCLK_pad/U0/NET2 , 
        \psram_nwe_pad/U0/NET1 , \psram_nwe_pad/U0/NET2 , 
        \psram_address_pad[15]/U0/NET1 , 
        \psram_address_pad[15]/U0/NET2 , \psram_data_pad[1]/U0/NET1 , 
        \psram_data_pad[1]/U0/NET2 , \psram_data_pad[1]/U0/NET3 , 
        \psram_address_pad[24]/U0/NET1 , 
        \psram_address_pad[24]/U0/NET2 , \psram_ncs0_pad/U0/NET1 , 
        \psram_ncs0_pad/U0/NET2 , \psram_nbyte_en_pad[1]/U0/NET1 , 
        \psram_nbyte_en_pad[1]/U0/NET2 , \led_pad[7]/U0/NET1 , 
        \led_pad[7]/U0/NET2 , \psram_data_pad[2]/U0/NET1 , 
        \psram_data_pad[2]/U0/NET2 , \psram_data_pad[2]/U0/NET3 , 
        \psram_address_pad[3]/U0/NET1 , \psram_address_pad[3]/U0/NET2 , 
        \led_pad[3]/U0/NET1 , \led_pad[3]/U0/NET2 , 
        \psram_address_pad[20]/U0/NET1 , 
        \psram_address_pad[20]/U0/NET2 , 
        \psram_address_pad[11]/U0/NET1 , 
        \psram_address_pad[11]/U0/NET2 , 
        \psram_nbyte_en_pad[0]/U0/NET1 , 
        \psram_nbyte_en_pad[0]/U0/NET2 , 
        \psram_address_pad[8]/U0/NET1 , \psram_address_pad[8]/U0/NET2 , 
        \resp_pad/U0/NET1 , \resp_pad/U0/NET2 , 
        \psram_data_pad[14]/U0/NET1 , \psram_data_pad[14]/U0/NET2 , 
        \psram_data_pad[14]/U0/NET3 , \psram_address_pad[16]/U0/NET1 , 
        \psram_address_pad[16]/U0/NET2 , 
        \psram_address_pad[14]/U0/NET1 , 
        \psram_address_pad[14]/U0/NET2 , 
        \psram_address_pad[18]/U0/NET1 , 
        \psram_address_pad[18]/U0/NET2 , \resv_pad/U0/NET1 , 
        \resv_pad/U0/NET2 , \led_pad[1]/U0/NET1 , \led_pad[1]/U0/NET2 , 
        \psram_noe0_pad/U0/NET1 , \psram_noe0_pad/U0/NET2 , 
        \psram_address_pad[2]/U0/NET1 , \psram_address_pad[2]/U0/NET2 , 
        \TP_START_CAPTURE_pad/U0/NET1 , \TP_START_CAPTURE_pad/U0/NET2 , 
        \psram_address_pad[6]/U0/NET1 , \psram_address_pad[6]/U0/NET2 , 
        \psram_address_pad[10]/U0/NET1 , 
        \psram_address_pad[10]/U0/NET2 , \rs485_nre_pad/U0/NET1 , 
        \rs485_nre_pad/U0/NET2 , \led_pad[2]/U0/NET1 , 
        \led_pad[2]/U0/NET2 , \inphi_pad/U0/NET1 , \inphi_pad/U0/NET2 , 
        \TP_PWRITE_pad/U0/NET1 , \TP_PWRITE_pad/U0/NET2 , 
        \psram_data_pad[3]/U0/NET1 , \psram_data_pad[3]/U0/NET2 , 
        \psram_data_pad[3]/U0/NET3 , \psram_data_pad[0]/U0/NET1 , 
        \psram_data_pad[0]/U0/NET2 , \psram_data_pad[0]/U0/NET3 , 
        \psram_address_pad[17]/U0/NET1 , 
        \psram_address_pad[17]/U0/NET2 , \psram_noe1_pad/U0/NET1 , 
        \psram_noe1_pad/U0/NET2 , \psram_address_pad[22]/U0/NET1 , 
        \psram_address_pad[22]/U0/NET2 , \psram_ncs1_pad/U0/NET1 , 
        \psram_ncs1_pad/U0/NET2 , \TP_FULL_pad/U0/NET1 , 
        \TP_FULL_pad/U0/NET2 , \psram_data_pad[12]/U0/NET1 , 
        \psram_data_pad[12]/U0/NET2 , \psram_data_pad[12]/U0/NET3 , 
        \psram_data_pad[6]/U0/NET1 , \psram_data_pad[6]/U0/NET2 , 
        \psram_data_pad[6]/U0/NET3 , \led_pad[4]/U0/NET1 , 
        \led_pad[4]/U0/NET2 , \CLK50_pad/U0/NET1 , 
        \psram_data_pad[9]/U0/NET1 , \psram_data_pad[9]/U0/NET2 , 
        \psram_data_pad[9]/U0/NET3 , \psram_address_pad[7]/U0/NET1 , 
        \psram_address_pad[7]/U0/NET2 , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT , PLLEN_VCC, 
        \psram_data_pad[10]/U0/NET1 , \psram_data_pad[10]/U0/NET2 , 
        \psram_data_pad[10]/U0/NET3 , \incp_pad/U0/NET1 , 
        \incp_pad/U0/NET2 , \psram_data_pad[4]/U0/NET1 , 
        \psram_data_pad[4]/U0/NET2 , \psram_data_pad[4]/U0/NET3 , 
        \psram_address_pad[9]/U0/NET1 , \psram_address_pad[9]/U0/NET2 , 
        \TP_PADDR_BIT2_pad/U0/NET1 , \TP_PADDR_BIT2_pad/U0/NET2 , 
        \rs485_de_pad/U0/NET1 , \rs485_de_pad/U0/NET2 , 
        \psram_data_pad[15]/U0/NET1 , \psram_data_pad[15]/U0/NET2 , 
        \psram_data_pad[15]/U0/NET3 , \TP_RDEN_pad/U0/NET1 , 
        \TP_RDEN_pad/U0/NET2 , \led_pad[6]/U0/NET1 , 
        \led_pad[6]/U0/NET2 , \TP_EMPTY_pad/U0/NET1 , 
        \TP_EMPTY_pad/U0/NET2 , \TP_BUSY_pad/U0/NET1 , 
        \TP_BUSY_pad/U0/NET2 , \psram_address_pad[23]/U0/NET1 , 
        \psram_address_pad[23]/U0/NET2 , \psram_data_pad[7]/U0/NET1 , 
        \psram_data_pad[7]/U0/NET2 , \psram_data_pad[7]/U0/NET3 , 
        \incv_pad/U0/NET1 , \incv_pad/U0/NET2 , 
        \psram_address_pad[12]/U0/NET1 , 
        \psram_address_pad[12]/U0/NET2 , 
        \psram_address_pad[0]/U0/NET1 , \psram_address_pad[0]/U0/NET2 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GLMUXINT_GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign PLLEN_VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_66  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNI79GT2[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .C(
        \psram_cr_0/ahb0/N_85 ), .Y(\psram_cr_0/ahb0/N_87 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[14]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[14]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[14] ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] )
        );
    NOR2B \imaging_0/fifo_px_0/AND2_10  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .B(
        \imaging_0/fifo_px_0/XOR2_21_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_10_Y ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_AFULL  (.D(
        \imaging_0/fifo_px_1/OR2_0_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_1_AFULL ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[8]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_31  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[31] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[31] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_15  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[0] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_15_Y ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_255 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_74  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    IOPAD_BI \MSS_CORE2_0/MSS_MAC_0_MDIO  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_D ), .E(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E ), .Y(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y ), .PAD(MAC_MDIO));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1_  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO_net_1 )
        , .CLK(SCLK_c), .Q(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam1_fifo_rden )
        );
    DFN1 \psram_cr_0/ahb0/operation[3]  (.D(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[3] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[12]  (.A(
        \psram_cr_0/cr_int_i0/N_168 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[12] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(\psram_cr_0/data_to_cr[9] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_165 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_220 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2ANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[3] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_169 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIEVEG[2]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 ));
    IOTRI_OB_EB \psram_address_pad[23]/U0/U1  (.D(
        \psram_address_c[23] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[23]/U0/NET1 ), .EOUT(
        \psram_address_pad[23]/U0/NET2 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[7] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 )
        , .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        );
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[16]  (.A(
        \psram_cr_0/cr_int_i0/N_264 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[0]  (.D(
        \psram_cr_0/cr_int_i0/N_102 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_244 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_243 ));
    NOR3A \psram_cr_0/ahb0/hrdata_reg_RNO_3[1]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/ahb0/N_113 ), .C(
        \psram_cr_0/ahb0/N_87 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m[1] ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIL3UL[17]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_227 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PWDATA[0]  (.D(
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3OI ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PWDATA[0] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[15]  (.D(
        \psram_cr_0/cr_int_i0/N_50 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[15] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNITBBA[14]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[31]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_382 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[31] ));
    DFN1 \psram_cr_0/ahb0/operation[31]  (.D(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[31]_net_1 ));
    AX1C \imaging_0/fifo_px_0/XOR2_42_RNIU4TL1  (.A(
        \imaging_0/fifo_px_0/XOR2_8_Y ), .B(
        \imaging_0/fifo_px_0/AO1_24_Y ), .C(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[3] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIINTL[14]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[27]  
        (.A(\imaging_0/fifo_px_0_Q[27] ), .B(
        \imaging_0/fifo_px_1_Q[27] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_378 ));
    OR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        );
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_221 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[9]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[9] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[26]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[26] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[18] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[10] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[2] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[31]  (.A(
        \psram_cr_0/ahb0/busy_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_63 ));
    IOBI_IB_OB_EB \psram_data_pad[4]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[4]/U0/NET3 ), .DOUT(
        \psram_data_pad[4]/U0/NET1 ), .EOUT(
        \psram_data_pad[4]/U0/NET2 ), .Y(\psram_data_in[4] ));
    DFN1 \psram_cr_0/cr_int_i0/address[3]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[3] ));
    INV \imaging_0/fifo_px_1/INV_8  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .Y(
        \imaging_0/fifo_px_1/INV_8_Y ));
    IOTRI_OB_EB \TP_FULL_pad/U0/U1  (.D(TP_FULL_c), .E(PLLEN_VCC), 
        .DOUT(\TP_FULL_pad/U0/NET1 ), .EOUT(\TP_FULL_pad/U0/NET2 ));
    AX1C \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[7]  (.A(
        \imaging_0/fifo_px_1/XOR2_0_Y ), .B(
        \imaging_0/fifo_px_1/AO1_15_Y ), .C(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_223 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[13]  (.D(
        \imaging_0/fifo_px_1/QXI[13] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[13] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        );
    IOTRI_OB_EB \psram_ncs0_pad/U0/U1  (.D(psram_ncs0_c_c_c), .E(
        PLLEN_VCC), .DOUT(\psram_ncs0_pad/U0/NET1 ), .EOUT(
        \psram_ncs0_pad/U0/NET2 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_57  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_0/INV_1_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_57_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_7  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[5]  (.D(
        \imaging_0/fifo_px_0/QXI[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[5] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[7]  (.D(
        \psram_cr_0/cr_int_i0/N_34 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[7] ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]_net_1 )
        );
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_254 ));
    IOTRI_OB_EB \TP_PREADY_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\TP_PREADY_pad/U0/NET1 ), .EOUT(\TP_PREADY_pad/U0/NET2 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_263 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[15]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[15] ));
    DFN1 \psram_cr_0/ahb0/operation[25]  (.D(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[25]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[24]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[24]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[24] ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitTrailing[2]  (.D(
        \imaging_0/adc081s101_0/N_30 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitTrailinge ), .Q(
        \imaging_0/adc081s101_0/cntrWaitTrailing[2]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[0]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[0] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_21  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[21] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[21] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(\psram_cr_0/data_to_cr[14] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_170 ));
    IOTRI_OB_EB \rs485_nre_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\rs485_nre_pad/U0/NET1 ), .EOUT(\rs485_nre_pad/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_205 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIIFP41  (.A(
        CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[10]  (.D(
        \psram_cr_0/cr_int_i0/N_40 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[10] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[9]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[9] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[8]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_74 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_1[3] ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_15  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[0] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_15_Y ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[5]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(\psram_data_in[13] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_244 ));
    XNOR2 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_1  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[12] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_27_Y ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_252 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[13]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[13] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[13] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_242 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[0]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .B(
        \imaging_0/fifo_px_0/MEMORYWE ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[0] ));
    INV \imaging_0/fifo_px_1/MEMWEBUBBLE  (.A(
        \imaging_0/fifo_px_1/MEMORYWE ), .Y(
        \imaging_0/fifo_px_1/MEMWENEG ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[10]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[10] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[10] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_9_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_OVERFLOW  (.D(
        \imaging_0/fifo_px_0/AND2_65_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_0_OVERFLOW ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_57  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_in[14]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[14] ));
    AND3B \CoreAPB3_0/CAPB3O11[0]  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[10] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[11] ), .C(
        \CoreAPB3_0/CAPB3O11_2[0]_net_1 ), .Y(TP_PSEL_c));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_173 ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[3]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[22]  
        (.A(\imaging_0/fifo_px_0_Q[22] ), .B(
        \imaging_0/fifo_px_1_Q[22] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_373 ));
    AND2 \imaging_0/adc081s101_0/un1_cntrWaitLeading_I_1  (.A(
        \imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/N_58 ), .Y(
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_TMP[0] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[2] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[19]  (.D(
        \imaging_0/fifo_px_0/QXI[19] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[19] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[11]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_362 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[11] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[7]  (.A(
        \psram_cr_0/data_from_cr[7] ), .B(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_266 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[12]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_496 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[12]_net_1 )
        );
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[29]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_380 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[29] ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNIBSIM[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitTrailing[1]  (.D(
        \imaging_0/adc081s101_0/N_137 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitTrailinge ), .Q(
        \imaging_0/adc081s101_0/cntrWaitTrailing[1]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_19[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[17] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_214 ));
    IOTRI_OB_EB \psram_address_pad[3]/U0/U1  (.D(\psram_address_c[3] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[3]/U0/NET1 ), .EOUT(
        \psram_address_pad[3]/U0/NET2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_67  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    XA1A \imaging_0/fifo_px_0/AND2_25  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ), .C(
        \imaging_0/fifo_px_0/AND3_1_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_25_Y ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNIA52K3[4]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ));
    NOR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_RNI63PM  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[11]  (.D(
        \imaging_0/fifo_px_0/QXI[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[11] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[8]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .B(
        \imaging_0/fifo_px_1/AO1_10_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_221 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_40 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[21] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[21] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[15]  (.D(
        \imaging_0/fifo_px_0/QXI[15] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[15] ));
    NOR3C \psram_cr_0/cr_int_i0/active_data_RNO_0  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0.cr_int_i0.active_data ), .C(
        \psram_cr_0/cr_int_i0/N_77 ), .Y(\psram_cr_0/cr_int_i0/N_93 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[6]  (.A(
        \psram_cr_0/data_from_cr[6] ), .B(\psram_data_in[6] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_237 ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[12]  (.A(
        \imaging_0/fifo_px_0/AND2_62_Y ), .B(
        \imaging_0/fifo_px_0/AO1_10_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[12] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[12] ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_1  (.D(
        \MSS_CORE2_0/MACTXD_net_0[1] ), .E(PLLEN_VCC), .PAD(MAC_TXD[1])
        );
    XNOR2 \imaging_0/fifo_px_1/XNOR2_26  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_26_Y ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI01UQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[11] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_185 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[15]  
        (.A(\imaging_0/fifo_px_0_Q[15] ), .B(
        \imaging_0/fifo_px_1_Q[15] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_366 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[12]  (.D(
        \imaging_0/fifo_px_0/QXI[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[12] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_6[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/N_95 ), .Y(\psram_cr_0/ahb0/un1_haddr_reg_9 ));
    OR2 \imaging_0/adc081s101_0/cntrWaitQuiet_RNID1A21[2]  (.A(
        \imaging_0/adc081s101_0/N_76 ), .B(
        \imaging_0/adc081s101_0/N_103 ), .Y(
        \imaging_0/adc081s101_0/N_43 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_2  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_2_Y ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_199 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[9] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_181 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_181 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBIT14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_648 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[3]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[3] ));
    NOR3B \psram_cr_0/cr_int_i0/start_RNO  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\psram_cr_0/cr_int_i0/start_0_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_70 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIR870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[1] ));
    DFN1E1 \imaging_0/adc081s101_0/bitsRead[1]  (.D(
        \imaging_0/adc081s101_0/N_34 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/bitsReade ), .Q(
        \imaging_0/adc081s101_0/bitsRead[1]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_FULL  (.D(
        \imaging_0/fifo_px_1/FULLINT ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/fifo_px_1_FULL ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[22]  (.A(
        \psram_cr_0/ahb0/N_201 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 ));
    IOPAD_TRI \psram_ncs1_pad/U0/U0  (.D(\psram_ncs1_pad/U0/NET1 ), .E(
        \psram_ncs1_pad/U0/NET2 ), .PAD(psram_ncs1));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[5]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[5] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[5] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_216 )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_237 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 ));
    CLKSRC \MSS_CORE2_0/MSS_ADLIB_INST_RNI7863/U_CLKSRC  (.A(
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn ), .Y(
        MSS_CORE2_0_M2F_RESET_N));
    NOR2B \imaging_0/fifo_px_1/AND2_10  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .B(
        \imaging_0/fifo_px_1/XOR2_21_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_10_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[20]  (.A(
        \psram_cr_0/cr_int_i0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[9]  (.D(
        \imaging_0/fifo_px_0/QXI[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[9] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_33  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET ));
    AO1A \imaging_0/adc081s101_0/cntrWaitQuiet_RNO[2]  (.A(
        \imaging_0/adc081s101_0/un1_reset_i_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitQuiet_n2_i_a2_0 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/N_26_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[6]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[6] ));
    DFN1 \psram_cr_0/ahb0/operation[14]  (.D(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[14] ));
    INV \imaging_0/fifo_px_0/INV_4  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .Y(
        \imaging_0/fifo_px_0/INV_4_Y ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[8]  (.A(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_177 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[1]  (.A(
        \psram_cr_0/cr_int_i0/N_157 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[1] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[7]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[7] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_255 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNI7CIM[1]  (.A(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ));
    XNOR2 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_1  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[12] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_27_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_22[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[8] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[9]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_493 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[9]_net_1 )
        );
    XOR2 \imaging_0/adc081s101_0/bitsRead_RNO_0[2]  (.A(
        \imaging_0/adc081s101_0/bitsRead[2]_net_1 ), .B(
        \imaging_0/adc081s101_0/N_42 ), .Y(
        \imaging_0/adc081s101_0/bitsRead_n2_i_0 ));
    DFN1 \psram_cr_0/cr_int_i0/address[23]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[23] ));
    NOR3C \imaging_0/fifo_px_0/AND2_34  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .B(
        \imaging_0/fifo_px_0/XOR2_0_Y ), .C(
        \imaging_0/fifo_px_0/AND2_84_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_34_Y ));
    AO1A \imaging_0/adc081s101_0/cs_RNO_0  (.A(
        \imaging_0/adc081s101_0/N_76 ), .B(CS_c), .C(
        \imaging_0/adc081s101_0/cs16 ), .Y(
        \imaging_0/adc081s101_0/N_102 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_205 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[10]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[10] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_50  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52_0[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[2]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] ));
    NOR3A \imaging_0/adc081s101_0/bitsRead_RNO[3]  (.A(
        \imaging_0/adc081s101_0/bitsRead[2]_net_1 ), .B(
        \imaging_0/adc081s101_0/N_42 ), .C(CS_c), .Y(
        \imaging_0/adc081s101_0/N_38 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[11]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_222 )
        );
    AND2 \imaging_0/fifo_px_0/AND2_89  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_0/INV_1_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_89_Y ));
    OA1A \psram_cr_0/ahb0/hready_reg_RNIEN5JG  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), .C(
        \psram_cr_0/ahb0/hwrite_reg4_2 ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_3 ));
    OR2 \psram_cr_0/cr_int_i0/ac_counter_lb1_RNIJVME  (.A(
        \psram_cr_0/cr_int_i0/N_72 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[3]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_214 )
        );
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[19] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_251 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_246 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI4ANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[4] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_171 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNIQ9MH3[1]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_32 ), .B(
        \imaging_0/stonyman_apb3_0/bus_read_enable_net_1 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[29]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[29] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[29] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_513 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_26  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[26] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[26] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEBHQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[26] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_655 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[12]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[12] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[1]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[1] ));
    DFN1 \psram_cr_0/ahb0/operation[6]  (.D(
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[6] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_60  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .PIN3(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET ), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPITK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[12] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_187 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_23  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[23] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[23] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_89  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/INV_10_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_89_Y ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIVCV9[6]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_13[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[23] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[17]  (.A(
        \psram_cr_0/cr_int_i0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ));
    NOR2B \imaging_0/adc081s101_0/cntrWaitTrailing_RNIERDR1[2]  (.A(
        \imaging_0/adc081s101_0/N_41 ), .B(
        \imaging_0/adc081s101_0/N_95 ), .Y(
        \imaging_0/adc081s101_0/cntrWaitTrailinglde_0_a2_0 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[8]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_249 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[12]/U0/U1  (.D(
        \psram_address_c[12] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[12]/U0/NET1 ), .EOUT(
        \psram_address_pad[12]/U0/NET2 ));
    OA1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_2  (.A(
        \imaging_0.stonyman_apb3_0.ioreg_ready ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_32 ), .C(
        \imaging_0/stonyman_apb3_0/bus_read_enable_net_1 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_39 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[31] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[7]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[7] ));
    OR3A \psram_cr_0/cr_int_i0/noe0_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/N_78 ), .B(\psram_cr_0/cr_int_i0/N_71 ), 
        .C(\psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_5 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[2]  (.A(
        \psram_cr_0/data_from_cr[2] ), .B(
        \psram_cr_0/ahb0/data_out[2]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_261 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_227 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[12]  (.A(
        \psram_cr_0/ahb0/operation_m[12] ), .B(
        \psram_cr_0/ahb0/data_out_m[12] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[12] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[12] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[0]  (.A(
        \psram_address_c[0] ), .B(\psram_cr_0/cr_int_i0/address_5[0] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_248 ));
    INV \imaging_0/fifo_px_1/INV_7  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .Y(
        \imaging_0/fifo_px_1/INV_7_Y ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[0]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[0] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUOTQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[10] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_183 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] ));
    AO1 \imaging_0/adc081s101_0/cs_RNIQVBD3  (.A(
        \imaging_0/adc081s101_0/cntrWaitTrailinglde_0_a2_0 ), .B(
        \imaging_0/adc081s101_0/N_103 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/cntrWaitTrailinge ));
    AND2A \imaging_0/fifo_px_0/AND2A_0  (.A(TP_EMPTY_c), .B(
        \imaging_0/fifo_px_0/REP ), .Y(\imaging_0/fifo_px_0/AND2A_0_Y )
        );
    IOPAD_TRI \psram_address_pad[12]/U0/U0  (.D(
        \psram_address_pad[12]/U0/NET1 ), .E(
        \psram_address_pad[12]/U0/NET2 ), .PAD(psram_address[12]));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[8]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[3]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(\psram_cr_0/reg_addr[12] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_168 ));
    AND2 \imaging_0/fifo_px_1/AND2_18  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_1/INV_9_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_18_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[22]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_2[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[12] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[14]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[14] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[16]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_500 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[16]_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/operation[28]  (.D(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[28]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[15]/U0/U1  (.D(
        \psram_address_c[15] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[15]/U0/NET1 ), .EOUT(
        \psram_address_pad[15]/U0/NET2 ));
    DFN1 \psram_cr_0/cr_int_i0/address[21]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI5I8K[8]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[30]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_185 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[22]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_506 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[22]_net_1 )
        );
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNILPBK51_0[0]  
        (.A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), 
        .B(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .Y(
        \COREAHBTOAPB3_0/N_172 ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_RNI14O3_1[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_71 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_210 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIU870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_235 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[7]  (.A(
        \imaging_0/fifo_px_0/XOR2_0_Y ), .B(
        \imaging_0/fifo_px_0/AO1_15_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_179 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[18]  
        (.A(\imaging_0/fifo_px_0_Q[18] ), .B(
        \imaging_0/fifo_px_1_Q[18] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_369 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[5]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] ));
    IOPAD_TRI \psram_address_pad[15]/U0/U0  (.D(
        \psram_address_pad[15]/U0/NET1 ), .E(
        \psram_address_pad[15]/U0/NET2 ), .PAD(psram_address[15]));
    NOR2B \psram_cr_0/ahb0/operation_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_179 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[6]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] ));
    XA1C \imaging_0/adc081s101_0/cntrWaitQuiet_RNO[1]  (.A(
        \imaging_0/adc081s101_0/cntrWaitQuiet[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 ), .C(
        \imaging_0/adc081s101_0/un1_reset_i_1 ), .Y(
        \imaging_0/adc081s101_0/N_134 ));
    NOR3C \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_1  (.A(
        \imaging_0/stonyman_apb3_0/bus_write_enable_net_1 ), .B(
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_3 ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_41 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_22  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_1/INV_0_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_22_Y ));
    AND3 \imaging_0/fifo_px_1/AND3_2  (.A(
        \imaging_0/fifo_px_1/XNOR2_24_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_1_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_8_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_2_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI1970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[6]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_486 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 )
        );
    IOPAD_BI \psram_data_pad[0]/U0/U0  (.D(\psram_data_pad[0]/U0/NET1 )
        , .E(\psram_data_pad[0]/U0/NET2 ), .Y(
        \psram_data_pad[0]/U0/NET3 ), .PAD(psram_data[0]));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNITH8K[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[30]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[30] ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_3  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_3_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[4]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[4] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_215 )
        );
    IOTRI_OB_EB \psram_address_pad[19]/U0/U1  (.D(
        \psram_address_c[19] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[19]/U0/NET1 ), .EOUT(
        \psram_address_pad[19]/U0/NET2 ));
    XNOR2 \imaging_0/fifo_px_0/AND3_6_RNO_1  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_14_Y ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[9]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[9] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[9] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI4I8K[7]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ));
    AO1 \imaging_0/fifo_px_1/AO1_52  (.A(
        \imaging_0/fifo_px_1/XOR2_15_Y ), .B(
        \imaging_0/fifo_px_1/AO1_16_Y ), .C(
        \imaging_0/fifo_px_1/AND2_41_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_52_Y ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[28]  (.D(
        \imaging_0/fifo_px_0/QXI[28] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[28] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[10] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_272 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[18]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[18]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[18] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[13] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_178 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[2]  (.A(
        \psram_cr_0/cr_int_i0/N_158 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2NQBA[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_75 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(\psram_cr_0/reg_addr[1] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_157 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_17[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[19] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[14]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_365 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[14] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_198 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ));
    IOPAD_TRI \psram_address_pad[19]/U0/U0  (.D(
        \psram_address_pad[19]/U0/NET1 ), .E(
        \psram_address_pad[19]/U0/NET2 ), .PAD(psram_address[19]));
    AND2 \imaging_0/fifo_px_1/AND2_89  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_1/INV_1_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_89_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIC3HQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[25] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_654 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[5]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[3]  (.A(
        \psram_cr_0/cr_int_i0/N_159 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[31]  (.D(
        \imaging_0/fifo_px_0/QXI[31] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[31] ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_0  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .C(
        \COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 ));
    IOPAD_TRI \psram_address_pad[3]/U0/U0  (.D(
        \psram_address_pad[3]/U0/NET1 ), .E(
        \psram_address_pad[3]/U0/NET2 ), .PAD(psram_address[3]));
    INV \imaging_0/fifo_px_1/MEMREBUBBLE  (.A(
        \imaging_0/fifo_px_1/MEMORYRE ), .Y(
        \imaging_0/fifo_px_1/MEMRENEG ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_225 ));
    NOR2B \imaging_0/fifo_px_0/AND2_21_RNI1AJU2  (.A(
        \imaging_0/fifo_px_0/AND2_21_Y ), .B(
        \imaging_0/fifo_px_0/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_0_Y ));
    IOPAD_TRI \psram_address_pad[23]/U0/U0  (.D(
        \psram_address_pad[23]/U0/NET1 ), .E(
        \psram_address_pad[23]/U0/NET2 ), .PAD(psram_address[23]));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNI9SIVD  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY_i_m), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m ), .C(
        CoreAHBLite_0_AHBmslave6_HREADY_i_m), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[19]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGBUP[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_38  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[1]  (.D(
        \psram_cr_0/cr_int_i0/N_54 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[7]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] ));
    IOPAD_BI \psram_data_pad[14]/U0/U0  (.D(
        \psram_data_pad[14]/U0/NET1 ), .E(\psram_data_pad[14]/U0/NET2 )
        , .Y(\psram_data_pad[14]/U0/NET3 ), .PAD(psram_data[14]));
    NOR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_25[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[5] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[9]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[14]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[14] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[14] ));
    OR3A 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNI4LAQ1[1]  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[7] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 )
        , .C(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_49 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_32 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[3]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ));
    AOI1 \imaging_0/adc081s101_0/bitsRead_RNO[2]  (.A(
        \imaging_0/adc081s101_0/N_76 ), .B(CS_c), .C(
        \imaging_0/adc081s101_0/bitsRead_n2_i_0 ), .Y(
        \imaging_0/adc081s101_0/N_36 ));
    OA1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_177 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[12]  (.D(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[12] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_228 ));
    OR3A \psram_cr_0/ahb0/haddr_reg_RNI74PR6[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/ahb0/N_57 ), .C(
        \psram_cr_0/ahb0/N_56 ), .Y(\psram_cr_0/ahb0/N_18 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_231 ));
    INV \imaging_0/fifo_px_1/INV_12  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .Y(
        \imaging_0/fifo_px_1/INV_12_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_222 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[11]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[11] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[11] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_495 ));
    AO1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_233 ));
    IOPAD_BI \psram_data_pad[1]/U0/U0  (.D(\psram_data_pad[1]/U0/NET1 )
        , .E(\psram_data_pad[1]/U0/NET2 ), .Y(
        \psram_data_pad[1]/U0/NET3 ), .PAD(psram_data[1]));
    NOR2A \psram_cr_0/ahb0/dt_req_RNO_0  (.A(\psram_cr_0/start_0_0 ), 
        .B(\psram_cr_0/dt_ack ), .Y(\psram_cr_0/ahb0/N_65 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ));
    XNOR2 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_7  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_21_Y ));
    AO1 \imaging_0/fifo_px_1/AO1_18  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/INV_12_Y ), .C(
        \imaging_0/fifo_px_1/XOR2_11_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_18_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[8]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[8] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[8] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_492 ));
    INV \imaging_0/clkgenerator_0/clkCameraSS_RNO  (.A(
        \imaging_0/clkgenerator_0/px_adc_sclk_i ), .Y(
        \imaging_0/clkgenerator_0/px_adc_sclk_i_i ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[6]  (.A(\psram_cr_0/ahb0/N_249 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIE7TL[10]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[3]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[3] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[5]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ));
    NOR2 \psram_cr_0/cr_int_i0/enable_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/start_net_1 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_97 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[25]  
        (.A(\imaging_0/fifo_px_0_Q[25] ), .B(
        \imaging_0/fifo_px_1_Q[25] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_376 ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[29]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[29] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[21] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[13] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[5] ));
    XNOR2 \imaging_0/fifo_px_0/AND3_6_RNO  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_18_Y ));
    IOPAD_BI \psram_data_pad[10]/U0/U0  (.D(
        \psram_data_pad[10]/U0/NET1 ), .E(\psram_data_pad[10]/U0/NET2 )
        , .Y(\psram_data_pad[10]/U0/NET3 ), .PAD(psram_data[10]));
    NOR2B \imaging_0/fifo_px_0/AO1_1  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .B(
        \imaging_0/fifo_px_0/AND2_37_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_1_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[1]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_352 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_312 ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_386 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[28]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[28]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[28] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[7]  
        (.A(\imaging_0/fifo_px_0_Q[7] ), .B(\imaging_0/fifo_px_1_Q[7] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_358 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[24]  (.A(
        \psram_address_c[24] ), .B(
        \psram_cr_0/cr_int_i0/address_5[24] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_272 ));
    DFN1P0 \imaging_0/fifo_px_1/DFN1P0_EMPTY  (.D(
        \imaging_0/fifo_px_1/EMPTYINT ), .CLK(SCLK_c), .PRE(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_1_EMPTY ));
    INV \imaging_0/fifo_px_1/INV_6  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .Y(
        \imaging_0/fifo_px_1/INV_6_Y ));
    NOR2 \imaging_0/adc081s101_0/bitsRead_RNIDGT8_0[1]  (.A(
        \imaging_0/adc081s101_0/bitsRead[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_75 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ));
    BUFF \imaging_0/fifo_px_0/XOR2_8  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .Y(
        \imaging_0/fifo_px_0/XOR2_8_Y ));
    NOR2 \imaging_0/adc081s101_0/cntrWaitQuiet_RNO[0]  (.A(
        \imaging_0/adc081s101_0/un1_reset_i_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_61 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[26] ));
    IOTRI_OB_EB \led_pad[2]/U0/U1  (.D(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[6] ), .E(PLLEN_VCC), .DOUT(
        \led_pad[2]/U0/NET1 ), .EOUT(\led_pad[2]/U0/NET2 ));
    OR2A 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNIUKTE  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam0_fifo_rden )
        , .B(TP_EMPTY_c), .Y(fifoRden_0__RNIUKTE));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[11]  (.D(
        \imaging_0/fifo_px_1/QXI[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[11] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_93  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET ));
    OA1 \imaging_0/adc081s101_0/cntrWaitLeading_RNIOI7Q[1]  (.A(
        \imaging_0/adc081s101_0/cntrWaitLeading[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 ), .C(
        \imaging_0/adc081s101_0/N_95 ), .Y(
        \imaging_0/adc081s101_0/N_58 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(\psram_data_in[12] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_243 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[6]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_357 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[6] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[16]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[16] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[14]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[14] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[14] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[26]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_510 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[26]_net_1 )
        );
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_5[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        );
    XNOR2 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_5  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_23_Y ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[0]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI81VQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[15] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_193 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_45  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_0/INV_8_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_45_Y ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_216 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[4]  
        (.A(\imaging_0/fifo_px_0_Q[4] ), .B(\imaging_0/fifo_px_1_Q[4] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_355 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_200 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_193 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        );
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[13]  (.D(
        \imaging_0/fifo_px_0/QXI[13] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[13] ));
    AO1 \imaging_0/fifo_px_1/AO1_47  (.A(
        \imaging_0/fifo_px_1/AND2_86_Y ), .B(
        \imaging_0/fifo_px_1/AO1_18_Y ), .C(
        \imaging_0/fifo_px_1/AO1_6_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_47_Y ));
    NOR2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_4  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[2] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[7] ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_1 ));
    DFN1 \imaging_0/adc081s101_0/cs  (.D(\imaging_0/adc081s101_0/N_62 )
        , .CLK(SCLK_c), .Q(CS_c));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAPS61[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_8 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[13]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_364 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[13] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[8]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_219 )
        );
    AND3 \imaging_0/fifo_px_0/AND3_4  (.A(
        \imaging_0/fifo_px_0/XNOR2_2_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_22_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_26_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_4_Y ));
    DFN1 \psram_cr_0/cr_int_i0/address[22]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[22] ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_lb1_RNI6OFH  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_72 ), .Y(
        \psram_cr_0/cr_int_i0/ac_countere ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[12]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[12] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXER  (.PAD(MAC_RXER), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXER_Y ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[13]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_497 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[13]_net_1 )
        );
    AND2 \imaging_0/fifo_px_0/AND2_49  (.A(
        \imaging_0/fifo_px_0/XOR2_22_Y ), .B(
        \imaging_0/fifo_px_0/XOR2_45_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_49_Y ));
    INV \imaging_0/fifo_px_0/INV_1  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .Y(
        \imaging_0/fifo_px_0/INV_1_Y ));
    XOR3 \imaging_0/fifo_px_1/XOR2_WDIFF[9]  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/INV_7_Y ), .C(
        \imaging_0/fifo_px_1/AO1_16_Y ), .Y(
        \imaging_0/fifo_px_1/WDIFF[9] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_19_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[17] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_264 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ));
    NOR3C \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO  (.A(
        \imaging_0/fifo_px_1/AND3_9_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_12_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_27_Y ), .Y(
        \imaging_0/fifo_px_1/EMPTYINT ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[4]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[4] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[4] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_488 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[5]  (.A(\psram_cr_0/ahb0/N_248 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_11  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/INV_12_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_11_Y ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        );
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ));
    XNOR2 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_7  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_21_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[23]  (.D(
        \imaging_0/fifo_px_1/QXI[23] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[23] ));
    AO1 \imaging_0/fifo_px_1/AO1_44  (.A(
        \imaging_0/fifo_px_1/XOR2_89_Y ), .B(
        \imaging_0/fifo_px_1/AND2_41_Y ), .C(
        \imaging_0/fifo_px_1/AND2_69_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_44_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_243 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[23]  (.A(
        \psram_address_c[23] ), .B(
        \psram_cr_0/cr_int_i0/address_5[23] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_271 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIUQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        );
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNIIOFN61  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .C(
        \COREAHBTOAPB3_0/N_152 ), .Y(\COREAHBTOAPB3_0/CAHBtoAPB3Ol ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_208 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_RNI1L5I2[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .B(
        \psram_cr_0/cr_int_i0/N_78 ), .Y(\psram_cr_0/cr_int_i0/N_111 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[15]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[15] ));
    AO1 \imaging_0/adc081s101_0/cntrWaitTrailing_RNO[2]  (.A(
        \imaging_0/adc081s101_0/N_40 ), .B(
        \imaging_0/adc081s101_0/cntrWaitTrailing[2]_net_1 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/N_30 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6PUQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[14] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_191 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] ));
    OR2A \imaging_0/adc081s101_0/cs_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\imaging_0/adc081s101_0/N_102 ), .Y(
        \imaging_0/adc081s101_0/N_62 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[0]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[0] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[0] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_484 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[16]  
        (.A(\imaging_0/fifo_px_0_Q[16] ), .B(
        \imaging_0/fifo_px_1_Q[16] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_367 ));
    AO1 \imaging_0/fifo_px_1/AO1_2  (.A(
        \imaging_0/fifo_px_1/AND2_74_Y ), .B(
        \imaging_0/fifo_px_1/AO1_4_Y ), .C(
        \imaging_0/fifo_px_1/AO1_17_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_2_Y ));
    NOR3C \imaging_0/fifo_px_1/AND2_24_RNIIVHG3  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .B(
        \imaging_0/fifo_px_1/XOR2_16_Y ), .C(
        \imaging_0/fifo_px_1/AO1_49_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_29_Y ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIQETK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[31] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_199 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[9]  
        (.A(\imaging_0/fifo_px_0_Q[9] ), .B(\imaging_0/fifo_px_1_Q[9] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_360 ));
    NOR2B \imaging_0/fifo_px_0/AND2_48_RNIN9S31  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/AND2_87_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_24_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[0]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 ));
    NOR3C \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO  (.A(
        \imaging_0/fifo_px_0/AND3_9_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_12_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_27_Y ), .Y(
        \imaging_0/fifo_px_0/EMPTYINT ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI0ANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[2] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_167 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[13]  (.D(
        \psram_cr_0/cr_int_i0/N_46 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[13] ));
    OR2A \imaging_0/adc081s101_0/cntrWaitTrailing_RNO[0]  (.A(
        \imaging_0/adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(CS_c), 
        .Y(\imaging_0/adc081s101_0/N_136 ));
    IOBI_IB_OB_EB \psram_data_pad[2]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[2]/U0/NET3 ), .DOUT(
        \psram_data_pad[2]/U0/NET1 ), .EOUT(
        \psram_data_pad[2]/U0/NET2 ), .Y(\psram_data_in[2] ));
    DFN1P0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        , .CLK(FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        );
    AOI1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3SQI4[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_212 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[9]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ));
    AND2 \imaging_0/fifo_px_0/AND2_86  (.A(
        \imaging_0/fifo_px_0/XOR2_6_Y ), .B(
        \imaging_0/fifo_px_0/XOR2_57_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_86_Y ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter_n2_i_0 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_63 ));
    AO1 \imaging_0/fifo_px_0/AO1_47  (.A(
        \imaging_0/fifo_px_0/AND2_86_Y ), .B(
        \imaging_0/fifo_px_0/AO1_18_Y ), .C(
        \imaging_0/fifo_px_0/AO1_6_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_47_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[7]  (.D(
        \imaging_0/fifo_px_1/QXI[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[7] ));
    IOPAD_TRI \led_pad[1]/U0/U0  (.D(\led_pad[1]/U0/NET1 ), .E(
        \led_pad[1]/U0/NET2 ), .PAD(led[1]));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[1]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ));
    AOI1 \imaging_0/adc081s101_0/bitsRead_RNO[0]  (.A(
        \imaging_0/adc081s101_0/N_76 ), .B(CS_c), .C(
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_69 ));
    AX1C \imaging_0/fifo_px_0/XOR2_7_RNIVDEQ3  (.A(
        \imaging_0/fifo_px_0/AND2_24_Y ), .B(
        \imaging_0/fifo_px_0/AO1_49_Y ), .C(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[12] ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[10] ));
    DFN1 \psram_cr_0/ahb0/operation[24]  (.D(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[24]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[7]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[28]  
        (.A(\imaging_0/fifo_px_0_Q[28] ), .B(
        \imaging_0/fifo_px_1_Q[28] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_379 ));
    XNOR2 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_5  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_23_Y ));
    CLKSRC \imaging_0/clkgenerator_0/clkCameraSS_RNI8HH8/U_CLKSRC  (.A(
        \imaging_0/clkgenerator_0/px_adc_sclk_i ), .Y(SCLK_c));
    OR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI6F912[2]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4_net_1 ), .B(
        TP_PWRITE_c), .Y(\COREAHBTOAPB3_0/N_152 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_16[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[20] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[15] ));
    BUFF \imaging_0/fifo_px_0/XOR2_78  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .Y(
        \imaging_0/fifo_px_0/XOR2_78_Y ));
    BUFF \imaging_0/fifo_px_0/XOR2_0  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .Y(
        \imaging_0/fifo_px_0/XOR2_0_Y ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[7]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_358 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[7] ));
    OA1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI5TJ471[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lI ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[2] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[21]  (.A(
        \psram_address_c[21] ), .B(
        \psram_cr_0/cr_int_i0/address_5[21] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_269 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_192 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ));
    XNOR3 \imaging_0/fifo_px_1/XNOR2_16  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/INV_10_Y ), .C(
        \imaging_0/fifo_px_1/AO1_52_Y ), .Y(
        \imaging_0/fifo_px_1/XNOR2_16_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_RNIAQGQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHMSF1_0[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ));
    IOPAD_TRI \led_pad[7]/U0/U0  (.D(\led_pad[7]/U0/NET1 ), .E(
        \led_pad[7]/U0/NET2 ), .PAD(led[7]));
    IOTRI_OB_EB \inphi_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\inphi_pad/U0/NET1 ), .EOUT(\inphi_pad/U0/NET2 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        );
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[17]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[17]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[17] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[3]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[3] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[3] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_487 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[29]  (.D(
        \imaging_0/fifo_px_0/QXI[29] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[29] ));
    OR2A \imaging_0/adc081s101_0/cntrWaitQuiet_RNIMOKJ[2]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\imaging_0/adc081s101_0/N_76 ), 
        .Y(\imaging_0/adc081s101_0/un1_reset_i_1 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_CRSDV  (.PAD(MAC_CRSDV), .Y(
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[13]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[13]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[13] ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[24]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[24] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[16] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[8] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[0] ));
    NOR3C \imaging_0/adc081s101_0/cs_RNIEJ201  (.A(CS_c), .B(
        \imaging_0/adc081s101_0/N_76 ), .C(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\imaging_0/adc081s101_0/N_70 ));
    IOPAD_TRI \psram_nbyte_en_pad[1]/U0/U0  (.D(
        \psram_nbyte_en_pad[1]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[1]/U0/NET2 ), .PAD(psram_nbyte_en[1]));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[15]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_499 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[15]_net_1 )
        );
    AO1 \imaging_0/fifo_px_0/AO1_44  (.A(
        \imaging_0/fifo_px_0/XOR2_89_Y ), .B(
        \imaging_0/fifo_px_0/AND2_41_Y ), .C(
        \imaging_0/fifo_px_0/AND2_69_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_44_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[7]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[7]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[7] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[7]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[0]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[8]  (.A(\psram_cr_0/ahb0/N_251 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[9]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[9] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[30]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[30] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[30] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_52  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_229 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[21]  (.D(
        \imaging_0/fifo_px_0/QXI[21] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[21] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[16]  (.D(
        \imaging_0/fifo_px_0/QXI[16] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[16] ));
    NOR3A \psram_cr_0/ahb0/hrdata_reg_RNO_3[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_8_1 ), .C(
        \psram_cr_0/ahb0/un1_haddr_reg_9 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ));
    MSS_XTLOSC \MSS_CORE2_0/MSS_CCC_0/I_XTLOSC  (.XTL(MAINXIN), 
        .CLKOUT(\MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_244 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[14] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_59  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE2  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN5(FAB_CLK), .PIN2INT(), .PIN3INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .PIN5INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNITQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIG8Q05[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/N_99 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_i_a5_2_m2_e_0 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1II_0[6] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIG8Q05[0]_net_1 )
        );
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[25]  (.D(
        \imaging_0/fifo_px_0/QXI[25] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[25] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_237 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[8]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_492 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[8]_net_1 )
        );
    INV \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNI0G49[4]  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[4] ), .Y(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[4] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[14]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[14] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[14] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_498 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(\psram_cr_0/data_to_cr[8] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_164 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[8]  (.A(
        \psram_address_c[8] ), .B(\psram_cr_0/cr_int_i0/address_5[8] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_256 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[7]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[7] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_218 )
        );
    IOPAD_TRI \incv_pad/U0/U0  (.D(\incv_pad/U0/NET1 ), .E(
        \incv_pad/U0/NET2 ), .PAD(incv));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[10]  (.A(
        \psram_address_c[10] ), .B(
        \psram_cr_0/cr_int_i0/address_5[10] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_258 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[22]  (.D(
        \imaging_0/fifo_px_0/QXI[22] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[22] ));
    AND2 \imaging_0/fifo_px_1/AND2_49  (.A(
        \imaging_0/fifo_px_1/XOR2_22_Y ), .B(
        \imaging_0/fifo_px_1/XOR2_45_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_49_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_62  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[22]  (.A(
        \psram_address_c[22] ), .B(
        \psram_cr_0/cr_int_i0/address_5[22] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_270 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[8]  (.D(
        \imaging_0/fifo_px_0/QXI[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[8] ));
    DFN1 \psram_cr_0/cr_int_i0/address[6]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[6] ));
    NOR2B \imaging_0/fifo_px_0/AO1_10  (.A(
        \imaging_0/fifo_px_0/AND2_34_Y ), .B(
        \imaging_0/fifo_px_0/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_10_Y ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[7]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[21]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_372 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[21] ));
    IOTRI_OB_EB \led_pad[0]/U0/U1  (.D(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[4] ), .E(PLLEN_VCC), .DOUT(
        \led_pad[0]/U0/NET1 ), .EOUT(\led_pad[0]/U0/NET2 ));
    BUFF \imaging_0/fifo_px_0/XOR2_21  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .Y(
        \imaging_0/fifo_px_0/XOR2_21_Y ));
    IOPAD_TRI \psram_nwe_pad/U0/U0  (.D(\psram_nwe_pad/U0/NET1 ), .E(
        \psram_nwe_pad/U0/NET2 ), .PAD(psram_nwe));
    AO1 \psram_cr_0/cr_int_i0/ac_counter_RNIVCLA2[0]  (.A(
        \psram_cr_0/dt_rw ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_76 ), .Y(\psram_cr_0/cr_int_i0/N_78 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[11]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_495 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[11]_net_1 )
        );
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9TRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[3] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_169 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[25] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ));
    OR2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_o2_0_0  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[4] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[0] ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_o2_0_0_net_1 )
        );
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[31]  (.D(
        \imaging_0/fifo_px_1/QXI[31] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[31] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_36  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .PIN4INT(), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET ));
    XOR2 \imaging_0/fifo_px_0/XOR2_22  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_0/INV_0_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_22_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[13]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[13] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[13] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_224 )
        );
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_518 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO_net_1 )
        );
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6TRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[0] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_RBINNXTSHIFT[2]  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .B(
        \imaging_0/fifo_px_0/AO1_24_Y ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[2] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_6  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/INV_4_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_6_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[17]  (.D(
        \imaging_0/fifo_px_1/QXI[17] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[17] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[23]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_507 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[23]_net_1 )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_236 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ));
    IOPAD_TRI \psram_ncs0_pad/U0/U0  (.D(\psram_ncs0_pad/U0/NET1 ), .E(
        \psram_ncs0_pad/U0/NET2 ), .PAD(psram_ncs0));
    BUFF \imaging_0/fifo_px_0/XOR2_68  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .Y(
        \imaging_0/fifo_px_0/XOR2_68_Y ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] ));
    NOR2 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4_0_a2  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[6] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[5] ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ));
    XO1 \psram_cr_0/cr_int_i0/op_counter_RNI28G7[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(\psram_cr_0/cr_int_i0/N_77 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_230 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[8] ));
    AO1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_4[1]  
        (.A(\imaging_0/fifo_px_1_AFULL ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam0full_m ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_312 ));
    IOTRI_OB_EB \TP_START_CAPTURE_pad/U0/U1  (.D(GLMUXINT_GND), .E(
        PLLEN_VCC), .DOUT(\TP_START_CAPTURE_pad/U0/NET1 ), .EOUT(
        \TP_START_CAPTURE_pad/U0/NET2 ));
    DFN1 \psram_cr_0/cr_int_i0/address[2]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[2] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIIQSF1_0[13]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ));
    BUFF \imaging_0/fifo_px_1/AND2_65  (.A(
        \imaging_0/fifo_px_1/fifo_px_1_FULL ), .Y(
        \imaging_0/fifo_px_1/AND2_65_Y ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[8]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[8]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[8] ));
    OA1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI2AU83[0]  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_a3_0[1] ));
    OA1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIPA2F1[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_i_a5_2_m2_e_0 )
        );
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[27]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[27]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[27] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[11]  (.A(
        \psram_cr_0/cr_int_i0/N_167 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[8]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[8] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[8] ));
    DFN1 \psram_cr_0/ahb0/psram_addr_sel  (.D(
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/psram_addr_sel_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[23]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[23]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[23] ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7QS14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_655 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] ));
    DFN1 \psram_cr_0/ahb0/operation[10]  (.D(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[10] ));
    NOR3C \imaging_0/fifo_px_1/AO1_23  (.A(
        \imaging_0/fifo_px_1/AND2_10_Y ), .B(
        \imaging_0/fifo_px_1/AND2_15_Y ), .C(
        \imaging_0/fifo_px_1/AO1_10_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_23_Y ));
    AND2 \imaging_0/fifo_px_1/AND2_33  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_1/INV_8_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_33_Y ));
    XNOR3 \imaging_0/fifo_px_0/XNOR2_16  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/INV_10_Y ), .C(
        \imaging_0/fifo_px_0/AO1_52_Y ), .Y(
        \imaging_0/fifo_px_0/XNOR2_16_Y ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPATK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[30] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_197 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[10] ));
    DFN1 \psram_cr_0/ahb0/data_in[0]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[13] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_0  (.PAD(MAC_RXD[0]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIIQSF1[13]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ));
    OR2A \psram_cr_0/cr_int_i0/op_counter_RNI14O3[3]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_24  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_24_Y ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_213 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_183 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ));
    NOR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIDDFN1[5]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/N_161 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0II_i_m ));
    BUFF \imaging_0/fifo_px_1/XOR2_18  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .Y(
        \imaging_0/fifo_px_1/XOR2_18_Y ));
    DFN1 \psram_cr_0/cr_int_i0/active_data  (.D(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.active_data ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_57  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_1/INV_1_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_57_Y ));
    OA1 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] )
        );
    DFN1 \psram_cr_0/cr_int_i0/address[7]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[7] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_235 ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[26]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[26] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[18] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[10] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[2] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_14  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[14] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[14] ));
    INV \imaging_0/fifo_px_1/INV_3  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .Y(
        \imaging_0/fifo_px_1/INV_3_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_51  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[0]  (.A(
        \psram_cr_0/cr_int_i0/N_156 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[0] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNI39L72[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_43  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET ), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[3]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_388 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[3] ));
    IOPAD_BI \psram_data_pad[12]/U0/U0  (.D(
        \psram_data_pad[12]/U0/NET1 ), .E(\psram_data_pad[12]/U0/NET2 )
        , .Y(\psram_data_pad[12]/U0/NET3 ), .PAD(psram_data[12]));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_2  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[5]  (.A(
        \psram_address_c[5] ), .B(\psram_cr_0/cr_int_i0/address_5[5] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_253 ));
    IOTRI_OB_EB \psram_address_pad[6]/U0/U1  (.D(\psram_address_c[6] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[6]/U0/NET1 ), .EOUT(
        \psram_address_pad[6]/U0/NET2 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI5IS14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_654 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] ));
    NOR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNICPNH1  (.A(
        CoreAHBLite_0_AHBmslave6_HREADY), .B(N_91), .Y(
        CoreAHBLite_0_AHBmslave6_HREADY_i_m));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_83  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIQ870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNIICRPA1  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[21]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[21] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[21] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_505 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/max_addr[27] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_238 ));
    IOTRI_OB_EB \psram_ncs1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_ncs1_pad/U0/NET1 ), .EOUT(
        \psram_ncs1_pad/U0/NET2 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2I8K[5]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[13]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[13] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[13] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_497 ));
    AO1 \imaging_0/fifo_px_0/AO1_12  (.A(
        \imaging_0/fifo_px_0/XOR2_41_Y ), .B(
        \imaging_0/fifo_px_0/AO1_45_Y ), .C(
        \imaging_0/fifo_px_0/AND2_90_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_12_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI5R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[9] ));
    NOR2B \psram_cr_0/cr_int_i0/start_1_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0/cr_int_i0/start_0_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[24]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_61  (.PIN4(GLMUXINT_GND), 
        .PIN5(PLLEN_VCC), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), .PIN3(
        ), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET ), 
        .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_263 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 ));
    INV \imaging_0/fifo_px_0/INV_7  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .Y(
        \imaging_0/fifo_px_0/INV_7_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGJHQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[27] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_656 ));
    DFN1 \psram_cr_0/ahb0/operation[22]  (.D(
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[22]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_out[3]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[3]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[7] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[25]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[25]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_509 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[25]_net_1 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[9] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ));
    OR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIRE96[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ));
    IOTRI_OB_EB \psram_address_pad[11]/U0/U1  (.D(
        \psram_address_c[11] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[11]/U0/NET1 ), .EOUT(
        \psram_address_pad[11]/U0/NET2 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_32 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIKVTL[16]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ));
    OR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 ));
    IOTRI_OB_EB \psram_address_pad[16]/U0/U1  (.D(
        \psram_address_c[16] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[16]/U0/NET1 ), .EOUT(
        \psram_address_pad[16]/U0/NET2 ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIBDP89[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_104 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ));
    XA1B \psram_cr_0/cr_int_i0/op_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_61 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[26]  
        (.A(\imaging_0/fifo_px_0_Q[26] ), .B(
        \imaging_0/fifo_px_1_Q[26] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_377 ));
    IOPAD_TRI \psram_address_pad[11]/U0/U0  (.D(
        \psram_address_pad[11]/U0/NET1 ), .E(
        \psram_address_pad[11]/U0/NET2 ), .PAD(psram_address[11]));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_70 ), .B(\psram_cr_0/ahb0/N_68 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[11] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[2]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .B(
        \imaging_0/fifo_px_0/AO1_1_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_162 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[2]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(TP_PWRITE_c)
        );
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI43GQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[21] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_650 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_12[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[24] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[2]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[2] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[12] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[8]  (.A(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[8] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] ));
    IOPAD_TRI \psram_address_pad[16]/U0/U0  (.D(
        \psram_address_pad[16]/U0/NET1 ), .E(
        \psram_address_pad[16]/U0/NET2 ), .PAD(psram_address[16]));
    AO1 \imaging_0/fifo_px_1/AO1_17  (.A(
        \imaging_0/fifo_px_1/XOR2_94_Y ), .B(
        \imaging_0/fifo_px_1/AND2_18_Y ), .C(
        \imaging_0/fifo_px_1/AND2_88_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_17_Y ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[9]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[21]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_505 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[21]_net_1 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[26]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[26] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[26] ));
    IOTRI_OB_EB \psram_nbyte_en_pad[1]/U0/U1  (.D(psram_ncs0_c_c_c), 
        .E(PLLEN_VCC), .DOUT(\psram_nbyte_en_pad[1]/U0/NET1 ), .EOUT(
        \psram_nbyte_en_pad[1]/U0/NET2 ));
    DFN1 \psram_cr_0/cr_int_i0/nwe  (.D(\psram_cr_0/cr_int_i0/N_101 ), 
        .CLK(FAB_CLK), .Q(psram_nwe_c));
    OR3 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO  (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_40 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_39 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_9  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[1] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_9_Y ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[4]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_37  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ));
    XNOR2 \imaging_0/fifo_px_1/AND3_6_RNO_0  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_14_Y ));
    IOTRI_OB_EB \psram_address_pad[9]/U0/U1  (.D(\psram_address_c[9] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[9]/U0/NET1 ), .EOUT(
        \psram_address_pad[9]/U0/NET2 ));
    DFN1 \psram_cr_0/cr_int_i0/address[14]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[14] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_249 ));
    DFN1 \psram_cr_0/ahb0/operation[4]  (.D(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[4] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIATRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[4] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_171 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[1]  (.D(
        \imaging_0/fifo_px_0/QXI[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[1] ));
    MSS_AHB_IP #( .ACT_CONFIG(128), .ACT_FCLK(80000000), .ACT_DIE("IP6X5M2")
        , .ACT_PKG("fg484") )  \MSS_CORE2_0/MSS_ADLIB_INST/U_CORE  (
        .FCLK(\MSS_CORE2_0/GLA0 ), .MACCLKCCC(
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC ), .RCOSC(GLMUXINT_GND), 
        .MACCLK(GLMUXINT_GND), .PLLLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK ), .MSSRESETn(
        \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y ), .GPOE({nc0, nc1, nc2, 
        nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, nc11, nc12, nc13, 
        nc14, nc15, nc16, nc17, nc18, nc19, nc20, nc21, nc22, nc23, 
        nc24, nc25, nc26, nc27, nc28, nc29, nc30, nc31}), .SPI0DO(), 
        .SPI0DOE(), .SPI0DI(GLMUXINT_GND), .SPI0CLKI(GLMUXINT_GND), 
        .SPI0CLKO(), .SPI0MODE(), .SPI0SSI(GLMUXINT_GND), .SPI0SSO({
        nc32, nc33, nc34, nc35, 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , nc36}), 
        .UART0TXD(\MSS_CORE2_0/MSS_UART_0_TXD_D ), .UART0RXD(
        \MSS_CORE2_0/MSS_UART_0_RXD_Y ), .I2C0SDAI(GLMUXINT_GND), 
        .I2C0SDAO(), .I2C0SCLI(GLMUXINT_GND), .I2C0SCLO(), .SPI1DO(), 
        .SPI1DOE(), .SPI1DI(GLMUXINT_GND), .SPI1CLKI(GLMUXINT_GND), 
        .SPI1CLKO(), .SPI1MODE(), .SPI1SSI(GLMUXINT_GND), .SPI1SSO({
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , nc37}), 
        .UART1TXD(), .UART1RXD(GLMUXINT_GND), .I2C1SDAI(GLMUXINT_GND), 
        .I2C1SDAO(), .I2C1SCLI(GLMUXINT_GND), .I2C1SCLO(), .MACTXD({
        \MSS_CORE2_0/MACTXD_net_0[1] , \MSS_CORE2_0/MACTXD_net_0[0] }), 
        .MACRXD({\MSS_CORE2_0/MSS_MAC_0_RXD_1_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y }), .MACTXEN(
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D ), .MACCRSDV(
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y ), .MACRXER(
        \MSS_CORE2_0/MSS_MAC_0_RXER_Y ), .MACMDI(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y ), .MACMDO(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_D ), .MACMDEN(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E ), .MACMDC(
        \MSS_CORE2_0/MSS_MAC_0_MDC_D ), .EMCCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK ), .EMCCLKRTN(
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK ), .EMCRDB({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .EMCAB({nc38, nc39, 
        nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47, nc48, nc49, 
        nc50, nc51, nc52, nc53, nc54, nc55, nc56, nc57, nc58, nc59, 
        nc60, nc61, nc62, nc63}), .EMCWDB({nc64, nc65, nc66, nc67, 
        nc68, nc69, nc70, nc71, nc72, nc73, nc74, nc75, nc76, nc77, 
        nc78, nc79}), .EMCRWn(), .EMCCS0n(), .EMCCS1n(), .EMCOEN0n(), 
        .EMCOEN1n(), .EMCBYTEN({nc80, nc81}), .EMCDBOE(), .ADC0(
        GLMUXINT_GND), .ADC1(GLMUXINT_GND), .ADC2(GLMUXINT_GND), .ADC3(
        GLMUXINT_GND), .ADC4(GLMUXINT_GND), .ADC5(GLMUXINT_GND), .ADC6(
        GLMUXINT_GND), .ADC7(GLMUXINT_GND), .ADC8(GLMUXINT_GND), .ADC9(
        GLMUXINT_GND), .ADC10(GLMUXINT_GND), .ADC11(GLMUXINT_GND), 
        .SDD0(), .SDD1(), .SDD2(), .ABPS0(GLMUXINT_GND), .ABPS1(
        GLMUXINT_GND), .ABPS2(GLMUXINT_GND), .ABPS3(GLMUXINT_GND), 
        .ABPS4(GLMUXINT_GND), .ABPS5(GLMUXINT_GND), .ABPS6(
        GLMUXINT_GND), .ABPS7(GLMUXINT_GND), .ABPS8(GLMUXINT_GND), 
        .ABPS9(GLMUXINT_GND), .ABPS10(GLMUXINT_GND), .ABPS11(
        GLMUXINT_GND), .TM0(GLMUXINT_GND), .TM1(GLMUXINT_GND), .TM2(
        GLMUXINT_GND), .TM3(GLMUXINT_GND), .TM4(GLMUXINT_GND), .TM5(
        GLMUXINT_GND), .CM0(GLMUXINT_GND), .CM1(GLMUXINT_GND), .CM2(
        GLMUXINT_GND), .CM3(GLMUXINT_GND), .CM4(GLMUXINT_GND), .CM5(
        GLMUXINT_GND), .GNDTM0(GLMUXINT_GND), .GNDTM1(GLMUXINT_GND), 
        .GNDTM2(GLMUXINT_GND), .VAREF0(GLMUXINT_GND), .VAREF1(
        GLMUXINT_GND), .VAREF2(GLMUXINT_GND), .VAREFOUT(), .GNDVAREF(
        GLMUXINT_GND), .PUn(GLMUXINT_GND), .MSSHADDR({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET }), .MSSHWDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET }), .MSSHSIZE({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET }), .MSSHRDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET }), .FABHADDR({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET }), .FABHWDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET }), .FABHSIZE({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET }), .FABHRDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET }), .DMAREADY({
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET }), .MSSINT({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET }), .GPI({
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET , GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .GPO({
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET , nc82, nc83, nc84, 
        nc85, nc86, nc87, nc88, nc89, nc90, nc91, nc92, nc93, nc94, 
        nc95, nc96, nc97}), .MACM2FTXD({nc98, nc99}), .MACF2MRXD({
        GLMUXINT_GND, GLMUXINT_GND}), .ACEFLAGS({
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET }), .UART0CTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .UART0DSRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .UART0RTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET ), .UART0DTRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET ), .UART0RIn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET ), .UART0DCDn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET ), .UART1CTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), .UART1DSRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), .UART1RIn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET ), .UART1DCDn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .I2C0SMBALERTNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ), .I2C0BCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), .I2C0SMBALERTNI(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), 
        .I2C0SMBUSNI(\MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET ), 
        .I2C1SMBALERTNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ), .I2C1BCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), .I2C1SMBALERTNI(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), 
        .I2C1SMBUSNI(\MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), 
        .UART1RTSn(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), 
        .UART1DTRn(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), 
        .TXEV(\MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET ), .RXEV(
        \MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET ), .VRON(
        \MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET ), .MACM2FTXEN(), 
        .MACF2MCRSDV(GLMUXINT_GND), .MACM2FMDEN(), .MACF2MRXER(
        GLMUXINT_GND), .MACM2FMDO(), .MACF2MMDI(GLMUXINT_GND), 
        .MACM2FMDC(), .I2C0SMBUSNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), .I2C1SMBUSNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), .CALIBOUT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET ), .CALIBIN(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET ), .LVTTL0(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .LVTTL1(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .LVTTL2(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET ), .LVTTL0EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), .LVTTL1EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET ), .LVTTL2EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), .LVTTL3(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .LVTTL4(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .LVTTL5(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET ), .LVTTL3EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), .LVTTL4EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET ), .LVTTL5EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), .LVTTL6(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET ), .LVTTL7(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET ), .LVTTL8(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET ), .LVTTL6EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), .LVTTL7EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET ), .LVTTL8EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET ), .LVTTL9(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET ), .LVTTL10(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET ), .LVTTL11(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET ), .LVTTL9EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET ), .LVTTL10EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET ), .LVTTL11EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET ), .CMP0(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET ), .CMP1(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET ), .CMP2(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET ), .CMP3(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET ), .CMP4(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET ), .CMP5(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET ), .FABSDD0D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), .FABSDD1D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET ), .FABSDD2D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET ), .CMP6(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET ), .CMP7(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET ), .CMP8(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET ), .FABACETRIG(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), .CMP9(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET ), .FABSDD0CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), .FABSDD1CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), .FABSDD2CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET ), .VCC15GOOD(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .VCC33GOOD(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PUFABn(
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET ), .DEEPSLEEP(
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET ), .SLEEP(
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET ), .M2FRESETn(
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), .WDINT(
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET ), .MSSHREADY(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET ), .MSSHRESP(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET ), .MSSHLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET ), .FABHMASTLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET ), .MSSHTRANS1(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET ), .MSSHWRITE(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET ), .FABINT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET ), .FABHTRANS1(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET ), .FABHSEL(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET ), .F2MRESETn(
        \MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), .SYNCCLKFDBK(
        \MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .FABHREADYOUT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET )
        , .FABHRESP(\MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET ), 
        .FABHWRITE(\MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET ), 
        .FABHREADY(\MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET ), 
        .CMP10(), .CMP11());
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_170 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[30]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_381 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[30] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(
        \psram_cr_0/ahb0/data_out[14]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_273 ));
    DFN1 \psram_cr_0/ahb0/data_in[3]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[3] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[5] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        );
    DFN1 \psram_cr_0/cr_int_i0/enable  (.D(\psram_cr_0/cr_int_i0/N_20 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/enable_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[4]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 ));
    NOR2B \imaging_0/fifo_px_1/AO1_22  (.A(
        \imaging_0/fifo_px_1/AND2_10_Y ), .B(
        \imaging_0/fifo_px_1/AO1_10_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_22_Y ));
    DFN1 \psram_cr_0/ahb0/psram_addr[11]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[11] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRQTK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[14] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_191 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[24]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_375 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[24] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[6]  (.D(
        \imaging_0/fifo_px_1/QXI[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[6] ));
    NOR3C \imaging_0/fifo_px_1/AND2_66_RNIBVOK2  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .B(
        \imaging_0/fifo_px_1/XOR2_8_Y ), .C(
        \imaging_0/fifo_px_1/AO1_24_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_25_Y ));
    NOR2B \imaging_0/fifo_px_0/AO1_15  (.A(
        \imaging_0/fifo_px_0/AND2_84_Y ), .B(
        \imaging_0/fifo_px_0/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_15_Y ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_22  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[22] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[22] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[4]  (.D(
        \imaging_0/fifo_px_0/QXI[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[4] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[14]  (.D(
        \imaging_0/fifo_px_0/QXI[14] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[14] ));
    NOR3A \psram_cr_0/cr_int_i0/enable_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_98 ), .C(
        \psram_cr_0/cr_int_i0/N_97 ), .Y(\psram_cr_0/cr_int_i0/N_20 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 ));
    DFN1E1 \imaging_0/adc081s101_0/bitsRead[3]  (.D(
        \imaging_0/adc081s101_0/N_38 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/bitsReade ), .Q(
        \imaging_0/adc081s101_0/bitsRead[3]_net_1 ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI8HUL4[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_104 ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_5[1]  
        (.A(TP_FULL_c), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam0full_m ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[0]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[2]  (.A(
        \psram_cr_0/data_from_cr[2] ), .B(\psram_data_in[2] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_233 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[12]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[12] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] ));
    AO1A \psram_cr_0/ahb0/hready_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \psram_cr_0/ahb0/fsm_net_1 ), .Y(\psram_cr_0/ahb0/N_167 ));
    IOPAD_TRI \inphi_pad/U0/U0  (.D(\inphi_pad/U0/NET1 ), .E(
        \inphi_pad/U0/NET2 ), .PAD(inphi));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[21]  (.D(
        \imaging_0/fifo_px_1/QXI[21] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[21] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_2  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_2_Y ));
    IOBI_IB_OB_EB \psram_data_pad[7]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[7]/U0/NET3 ), .DOUT(
        \psram_data_pad[7]/U0/NET1 ), .EOUT(
        \psram_data_pad[7]/U0/NET2 ), .Y(\psram_data_in[7] ));
    IOTRI_OB_EB \led_pad[4]/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\led_pad[4]/U0/NET1 ), .EOUT(\led_pad[4]/U0/NET2 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_1[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[13] ));
    OR2A \psram_cr_0/ahb0/hready_reg_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/ahb0/N_167 ), .Y(
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[6] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_28  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[28] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[28] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_48  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave6_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_30  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_out[15]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[15]_net_1 ));
    INV \imaging_0/fifo_px_1/INV_9  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .Y(
        \imaging_0/fifo_px_1/INV_9_Y ));
    AO1 \imaging_0/fifo_px_0/AO1_6  (.A(
        \imaging_0/fifo_px_0/XOR2_57_Y ), .B(
        \imaging_0/fifo_px_0/AND2_38_Y ), .C(
        \imaging_0/fifo_px_0/AND2_89_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_6_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_88  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET ));
    XOR2 \imaging_0/fifo_px_0/XOR2_23_RNIN0613  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .B(
        \imaging_0/fifo_px_0/AO1_0_Y ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[15] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[30]  (.A(
        \psram_cr_0/ahb0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 ));
    OR3 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/G_2  (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_2_sqmuxa_net_1 )
        , .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[31]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[31] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[23] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[15] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[7] ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIA52K3[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/N_87 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ));
    IOPAD_BI \psram_data_pad[5]/U0/U0  (.D(\psram_data_pad[5]/U0/NET1 )
        , .E(\psram_data_pad[5]/U0/NET2 ), .Y(
        \psram_data_pad[5]/U0/NET3 ), .PAD(psram_data[5]));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIEKTBB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[11] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[11] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[23]  (.D(
        \imaging_0/fifo_px_0/QXI[23] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[23] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_189 ));
    OR2 \imaging_0/adc081s101_0/cntrWaitTrailing_RNIFOPB1[2]  (.A(
        \imaging_0/adc081s101_0/N_40 ), .B(
        \imaging_0/adc081s101_0/cntrWaitTrailing[2]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_41 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_250 ));
    DFN1 \psram_cr_0/cr_int_i0/noe0  (.D(\psram_cr_0/cr_int_i0/N_100 ), 
        .CLK(FAB_CLK), .Q(psram_noe0_c));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[8]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[3]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[9]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[9]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[9] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_21_0_a2_0_a2  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[7] ), .B(
        \imaging_0/stonyman_apb3_0/bus_read_enable_net_1 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[10]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_361 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[10] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI4PT41[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_68 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[3]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[3] ));
    IOPAD_TRI \psram_address_pad[6]/U0/U0  (.D(
        \psram_address_pad[6]/U0/NET1 ), .E(
        \psram_address_pad[6]/U0/NET2 ), .PAD(psram_address[6]));
    IOPAD_TRI \TP_PREADY_pad/U0/U0  (.D(\TP_PREADY_pad/U0/NET1 ), .E(
        \TP_PREADY_pad/U0/NET2 ), .PAD(TP_PREADY));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIOO9K[8]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(\psram_cr_0/reg_addr[11] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_167 ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        );
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_239 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[3]  (.D(
        \imaging_0/fifo_px_1/QXI[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[3] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[24]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[24] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[24] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_508 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEJHQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[17] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_646 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_269 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[16]  (.A(\psram_cr_0/dt_rw ), 
        .B(\CoreAHBLite_0_AHBmslave5_HWDATA[16] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_195 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNILBAA[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ));
    MX2 \psram_cr_0/ahb0/hwrite_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWRITE), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_168 ));
    AX1C \imaging_0/fifo_px_1/XOR2_92_RNIRHF93  (.A(
        \imaging_0/fifo_px_1/XOR2_16_Y ), .B(
        \imaging_0/fifo_px_1/AO1_49_Y ), .C(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[9] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_4[2]  
        (.A(\imaging_0/DFN1C0_AFULL ), .B(\imaging_0/fifo_px_1_AFULL ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3[2] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(\psram_data_in[14] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_245 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_15[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[21] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[19]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_503 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[19]_net_1 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[22]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[22] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[22] ));
    IOTRI_OB_EB \psram_address_pad[8]/U0/U1  (.D(\psram_address_c[8] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[8]/U0/NET1 ), .EOUT(
        \psram_address_pad[8]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[1] ));
    DFN1 \psram_cr_0/ahb0/data_in[7]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[7] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_23_RNIF2D53  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .B(
        \imaging_0/fifo_px_1/AO1_0_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[6] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNI17VP  (.A(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[23]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_374 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[23] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_223 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_44 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[21]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[21] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIGFTL[12]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[10]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[12]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[12]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[12] ));
    NOR3C \imaging_0/fifo_px_0/AND2_70  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/XOR2_68_Y ), .C(
        \imaging_0/fifo_px_0/AND2_21_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_70_Y ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNIO80F2[4]  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_85 ));
    OR3A \psram_cr_0/cr_int_i0/ac_counter_RNIKISD1[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_76 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[18] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_89  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/INV_10_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_89_Y ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[25]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[25] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[25] ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[5]  (.A(
        \imaging_0/fifo_px_0/XOR2_80_Y ), .B(
        \imaging_0/fifo_px_0/AO1_37_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] ));
    DFN1 \psram_cr_0/ahb0/dt_req  (.D(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_req ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[10] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[2]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[14]  (.A(
        \psram_cr_0/data_to_cr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[27]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[27] ));
    DFN1 \psram_cr_0/ahb0/data_out[10]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[10]_net_1 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[5]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[5] ));
    IOBI_IB_OB_EB \psram_data_pad[8]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[8]/U0/NET3 ), .DOUT(
        \psram_data_pad[8]/U0/NET1 ), .EOUT(
        \psram_data_pad[8]/U0/NET2 ), .Y(\psram_data_in[8] ));
    AND2A \imaging_0/fifo_px_1/AND2A_0  (.A(
        \imaging_0/fifo_px_1_EMPTY ), .B(\imaging_0/REP ), .Y(
        \imaging_0/fifo_px_1/AND2A_0_Y ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIA9VQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[16] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_195 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_169 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIETRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[8] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_179 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIQ1H1B_0  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_2_sqmuxa  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[7] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 )
        , .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_2_sqmuxa_net_1 )
        );
    NOR2B \psram_cr_0/ahb0/data_out_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ));
    AND3 \imaging_0/fifo_px_0/AND3_8  (.A(
        \imaging_0/fifo_px_0/XNOR2_15_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_9_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_17_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_8_Y ));
    DFN1 \psram_cr_0/ahb0/data_out[6]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[6]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[0]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_351 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_317 ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_385 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIMPDD2[8]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 ));
    IOBI_IB_OB_EB \psram_data_pad[14]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[14]/U0/NET3 ), .DOUT(
        \psram_data_pad[14]/U0/NET1 ), .EOUT(
        \psram_data_pad[14]/U0/NET2 ), .Y(\psram_data_in[14] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_187 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[6] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[8]  (.A(
        \psram_cr_0/data_from_cr[8] ), .B(\psram_data_in[8] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_239 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_194 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_94  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_0/INV_3_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_94_Y ));
    AX1C \imaging_0/fifo_px_1/XOR2_86_RNI3Q5L3  (.A(
        \imaging_0/fifo_px_1/XOR2_68_Y ), .B(
        \imaging_0/fifo_px_1/AO1_0_Y ), .C(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[7] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI1I8K[4]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[1]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[1] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[1] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[30] ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[30]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[30] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[22] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[14] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[6] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1  (
        .D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        );
    AND3 \imaging_0/fifo_px_0/AND3_1  (.A(
        \imaging_0/fifo_px_0/AND3_3_Y ), .B(
        \imaging_0/fifo_px_0/AND3_4_Y ), .C(
        \imaging_0/fifo_px_0/AND3_2_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_1_Y ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[10]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[10] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[6]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[6] ));
    DFN1 \psram_cr_0/cr_int_i0/address[19]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[19] ));
    OAI1 \psram_cr_0/ahb0/haddr_reg_RNID2U47[9]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/N_111 ));
    IOPAD_TRI \psram_address_pad[9]/U0/U0  (.D(
        \psram_address_pad[9]/U0/NET1 ), .E(
        \psram_address_pad[9]/U0/NET2 ), .PAD(psram_address[9]));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[19]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[19] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[19] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[17]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_368 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[17] ));
    DFN1 \psram_cr_0/ahb0/operation[20]  (.D(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[20]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_196 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_6  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[6] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[6] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3[4]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 ), .B(
        \psram_cr_0/ahb0/N_84 ), .Y(\psram_cr_0/ahb0/un1_haddr_reg_5 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ));
    IOTRI_OB_EB \incp_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), .DOUT(
        \incp_pad/U0/NET1 ), .EOUT(\incp_pad/U0/NET2 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_95 ));
    AOI1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_0  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]_net_1 )
        , .B(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_63 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[8] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO_1  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_46 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[3]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[3] ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNINBUL[19]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ));
    IOBI_IB_OB_EB \psram_data_pad[10]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[10] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[10]/U0/NET3 ), .DOUT(
        \psram_data_pad[10]/U0/NET1 ), .EOUT(
        \psram_data_pad[10]/U0/NET2 ), .Y(\psram_data_in[10] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[26]  (.D(
        \imaging_0/fifo_px_0/QXI[26] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[26] ));
    OR2A \psram_cr_0/cr_int_i0/nwe_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_227 ), .Y(
        \psram_cr_0/cr_int_i0/N_101 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0_  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO_net_1 )
        , .CLK(SCLK_c), .Q(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam0_fifo_rden )
        );
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[31]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_515 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[31]_net_1 )
        );
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[31]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[31] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[31] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_515 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_3_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[8]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[8] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/op_counter_n3_i_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_65 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[22]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[22]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[22] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[10] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[4]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[4] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_207 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[23]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[23] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[23] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_507 ));
    IOBI_IB_OB_EB \psram_data_pad[9]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[9]/U0/NET3 ), .DOUT(
        \psram_data_pad[9]/U0/NET1 ), .EOUT(
        \psram_data_pad[9]/U0/NET2 ), .Y(\psram_data_in[9] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_10  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_10_Y ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ));
    AO1A \psram_cr_0/ahb0/hrdata_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ), .C(
        \psram_cr_0/ahb0/data_in_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ));
    XNOR2 \imaging_0/fifo_px_1/AND3_6_RNO  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_28_Y ));
    DFN1 \psram_cr_0/ahb0/psram_addr[23]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[23] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRLJC3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_7 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_8 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2tt_m2_0_a2_0 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRLJC3[5]_net_1 )
        );
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[17] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_188 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[10]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_55  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[16]  (.A(
        \psram_address_c[16] ), .B(
        \psram_cr_0/cr_int_i0/address_5[16] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_264 ));
    IOTRI_OB_EB \resv_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\resv_pad/U0/NET1 ), .EOUT(\resv_pad/U0/NET2 ));
    IOPAD_BI \psram_data_pad[4]/U0/U0  (.D(\psram_data_pad[4]/U0/NET1 )
        , .E(\psram_data_pad[4]/U0/NET2 ), .Y(
        \psram_data_pad[4]/U0/NET3 ), .PAD(psram_data[4]));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[7]  (.A(
        \psram_cr_0/cr_int_i0/N_163 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[7] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[13]  (.A(
        \psram_cr_0/cr_int_i0/N_169 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[13] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[4]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .B(
        \imaging_0/fifo_px_0/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[27]  (.D(
        \imaging_0/fifo_px_1/QXI[27] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[27] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[0]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_15  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[15] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[15] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[9]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_360 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[9] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI3I8K[6]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[4]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitQuiet[1]  (.D(
        \imaging_0/adc081s101_0/N_134 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitQuiete ), .Q(
        \imaging_0/adc081s101_0/cntrWaitQuiet[1]_net_1 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_8  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[8] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[8] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_RBINNXTSHIFT[1]  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/AND2_87_Y ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[1] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(\psram_data_in[9] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_240 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[3]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[3] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_65  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[16]  (.D(
        \imaging_0/fifo_px_1/QXI[16] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[16] ));
    DFN1 \psram_cr_0/ahb0/data_out[5]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[5]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIE1JVE[5]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[10]  (.D(
        \imaging_0/fifo_px_1/QXI[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[10] ));
    IOPAD_TRI \psram_noe1_pad/U0/U0  (.D(\psram_noe1_pad/U0/NET1 ), .E(
        \psram_noe1_pad/U0/NET2 ), .PAD(psram_noe1));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_56 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_200 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[29]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_513 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[29]_net_1 )
        );
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[12]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_363 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[12] ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitQuiet[0]  (.D(
        \imaging_0/adc081s101_0/N_61 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitQuiete ), .Q(
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_8_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ));
    NOR3A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_76 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_1 ));
    IOTRI_OB_EB \psram_address_pad[17]/U0/U1  (.D(
        \psram_address_c[17] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[17]/U0/NET1 ), .EOUT(
        \psram_address_pad[17]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[10]  (.A(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[13]  (.A(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ));
    NOR3C \imaging_0/fifo_px_0/AND2_62  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .B(
        \imaging_0/fifo_px_0/XOR2_78_Y ), .C(
        \imaging_0/fifo_px_0/AND2_10_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_62_Y ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ));
    IOPAD_TRI \TP_WREN_pad/U0/U0  (.D(\TP_WREN_pad/U0/NET1 ), .E(
        \TP_WREN_pad/U0/NET2 ), .PAD(TP_WREN));
    DFN1 \imaging_0/adc081s101_0/cntrWaitLeading[1]  (.D(
        \imaging_0/adc081s101_0/cntrWaitLeading_6[1] ), .CLK(SCLK_c), 
        .Q(\imaging_0/adc081s101_0/cntrWaitLeading[1]_net_1 ));
    IOTRI_OB_EB \TP_EMPTY_pad/U0/U1  (.D(TP_EMPTY_c), .E(PLLEN_VCC), 
        .DOUT(\TP_EMPTY_pad/U0/NET1 ), .EOUT(\TP_EMPTY_pad/U0/NET2 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_248 ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[9]  (.A(
        \imaging_0/fifo_px_0/XOR2_21_Y ), .B(
        \imaging_0/fifo_px_0/AO1_10_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[20] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNINTNH3[16]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[5] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ), 
        .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] )
        );
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[23] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[8]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[8] ));
    NOR3B \psram_cr_0/ahb0/psram_addr_sel_RNIOP6S  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/psram_addr_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(
        \psram_cr_0/ahb0/psram_addr5 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_90  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET ));
    IOPAD_TRI \psram_address_pad[17]/U0/U0  (.D(
        \psram_address_pad[17]/U0/NET1 ), .E(
        \psram_address_pad[17]/U0/NET2 ), .PAD(psram_address[17]));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI41UQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[31] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_199 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_256 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIDIT14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_658 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] ));
    DFN1 \psram_cr_0/ahb0/operation[11]  (.D(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[11] ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[10]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ));
    NOR2B \imaging_0/fifo_px_0/AND2_70_RNI3AJU2  (.A(
        \imaging_0/fifo_px_0/AND2_70_Y ), .B(
        \imaging_0/fifo_px_0/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_49_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[4] ));
    AND2 \imaging_0/fifo_px_0/AND2_37  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .B(
        \imaging_0/fifo_px_0/MEMORYWE ), .Y(
        \imaging_0/fifo_px_0/AND2_37_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_228 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[15]  (.A(
        \psram_cr_0/data_from_cr[15] ), .B(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_274 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[2]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_353 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3[2] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_387 ));
    DFN1 \psram_cr_0/ahb0/data_out[13]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[13]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_263 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[2]  (.D(
        \imaging_0/fifo_px_1/QXI[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l_RNI86VL[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/N_160 ));
    OR3 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_o2_0  (
        .A(\CoreAPB3_0_APBmslave0_0_PADDR[1] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[3] ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_o2_0_0_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_28 ));
    AND2 \imaging_0/fifo_px_0/AND2_69  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/INV_10_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_69_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[11]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[11]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[11] ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_5[3]  
        (.A(\imaging_0/fifo_px_1_OVERFLOW ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1overflow_m ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_269 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_46  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn ), .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_10  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_10_Y ));
    AO1 \imaging_0/fifo_px_1/AO1_4  (.A(
        \imaging_0/fifo_px_1/XOR2_45_Y ), .B(
        \imaging_0/fifo_px_1/AND2_92_Y ), .C(
        \imaging_0/fifo_px_1/AND2_33_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_4_Y ));
    DFN1 \psram_cr_0/ahb0/hready_reg  (.D(
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        CoreAHBLite_0_AHBmslave5_HREADY));
    AND2 \imaging_0/fifo_px_0/AND2_92  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_0/INV_0_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_92_Y ));
    BUFF \imaging_0/fifo_px_1/XOR2_9  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .Y(
        \imaging_0/fifo_px_1/XOR2_9_Y ));
    AO1D \psram_cr_0/cr_int_i0/enable_RNIGIUF  (.A(
        \psram_cr_0/cr_int_i0/N_68 ), .B(\psram_cr_0/cr_int_i0/N_74 ), 
        .C(\psram_cr_0/cr_int_i0/noe0_0_sqmuxa_i_0 ), .Y(
        \psram_cr_0/cr_int_i0/N_347 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[8]  (.D(
        \psram_cr_0/cr_int_i0/N_36 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[8] ));
    IOPAD_TRI \psram_address_pad[8]/U0/U0  (.D(
        \psram_address_pad[8]/U0/NET1 ), .E(
        \psram_address_pad[8]/U0/NET2 ), .PAD(psram_address[8]));
    NOR3B \imaging_0/adc081s101_0/bitsRead_RNIUGRH[1]  (.A(
        \imaging_0/adc081s101_0/N_75 ), .B(
        \imaging_0/adc081s101_0/bitsRead[3]_net_1 ), .C(
        \imaging_0/adc081s101_0/bitsRead[2]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_103 ));
    NOR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 ));
    AX1C \imaging_0/fifo_px_0/XOR2_86_RNIVKKG3  (.A(
        \imaging_0/fifo_px_0/XOR2_68_Y ), .B(
        \imaging_0/fifo_px_0/AO1_0_Y ), .C(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[7] ));
    XO1 \imaging_0/adc081s101_0/cntrWaitLeading_RNO[0]  (.A(
        \imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/N_58 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/cntrWaitLeading_6[0] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_41  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_0/INV_6_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_41_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_86  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[2]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[2] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[2] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_486 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[19] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_3[0]  
        (.A(\imaging_0/fifo_px_0_Q[0] ), .B(\imaging_0/fifo_px_1_Q[0] )
        , .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_351 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[26] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI4R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_193 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        );
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[11]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(\psram_cr_0/reg_addr[0] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_156 ));
    IOPAD_IN \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N  (.PAD(MSS_RESET_N), 
        .Y(\MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[10]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[10] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[10] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_494 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_190 ));
    AND3 \imaging_0/fifo_px_1/AND3_4  (.A(
        \imaging_0/fifo_px_1/XNOR2_2_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_22_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_26_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_4_Y ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_19  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[19] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[19] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[23]  (.A(
        \psram_cr_0/cr_int_i0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNI28G7_0[1]  (.A(
        \psram_cr_0/cr_int_i0/N_71 ), .B(\psram_cr_0/cr_int_i0/N_68 ), 
        .Y(\psram_cr_0/cr_int_i0/un1_op_counter_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_54  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIM7UL[18]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[24] ));
    MX2 \psram_cr_0/cr_int_i0/nwe_RNO_0  (.A(psram_nwe_c), .B(
        \psram_cr_0/cr_int_i0/nwe_5 ), .S(\psram_cr_0/cr_int_i0/N_347 )
        , .Y(\psram_cr_0/cr_int_i0/N_227 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_81_RNIL2D53  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/AO1_49_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[8] ));
    NOR2B \imaging_0/fifo_px_1/AND2_15  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .B(
        \imaging_0/fifo_px_1/XOR2_78_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_15_Y ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[28]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[28] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[28] ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXEN  (.D(
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D ), .E(PLLEN_VCC), .PAD(MAC_TXEN));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[11]  (.D(
        \psram_cr_0/cr_int_i0/N_42 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[11] ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_n0 ));
    AO1B \imaging_0/adc081s101_0/cs_RNIC4UH1  (.A(
        \imaging_0/adc081s101_0/N_43 ), .B(CS_c), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/adc081s101_0/cntrWaitQuiete ));
    NOR3A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI2T2I  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_74 ), .C(\psram_cr_0/cr_int_i0/N_68 ), 
        .Y(\psram_cr_0/cr_int_i0/data_out_0_sqmuxa ));
    NOR3C \imaging_0/fifo_px_1/AND2_70_RNIA9L23  (.A(
        \imaging_0/fifo_px_1/AND2_21_Y ), .B(
        \imaging_0/fifo_px_1/AND2_79_Y ), .C(
        \imaging_0/fifo_px_1/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_49_Y ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[10]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_73  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), .PIN6INT(), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_out[1]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[1]_net_1 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_10  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[10] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[10] ));
    NOR2 \psram_cr_0/cr_int_i0/ac_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_102 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_64  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[22]  (.A(
        \psram_cr_0/ahb0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        );
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[18]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_502 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[18]_net_1 )
        );
    NOR3A \CoreAPB3_0/CAPB3O11_2[0]  (.A(
        COREAHBTOAPB3_0_APBmaster_PSELx), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[9] ), .C(
        \CoreAPB3_0_APBmslave0_0_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3O11_2[0]_net_1 ));
    INV \imaging_0/fifo_px_1/INV_10  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .Y(
        \imaging_0/fifo_px_1/INV_10_Y ));
    IOPAD_TRI \led_pad[2]/U0/U0  (.D(\led_pad[2]/U0/NET1 ), .E(
        \led_pad[2]/U0/NET2 ), .PAD(led[2]));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_20[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[16] ));
    IOPAD_TRI \rs485_nre_pad/U0/U0  (.D(\rs485_nre_pad/U0/NET1 ), .E(
        \rs485_nre_pad/U0/NET2 ), .PAD(rs485_nre));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[1]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .B(
        \imaging_0/fifo_px_0/AND2_37_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[1] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/haddr_reg[9]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[13]/U0/U1  (.D(
        \psram_address_c[13] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[13]/U0/NET1 ), .EOUT(
        \psram_address_pad[13]/U0/NET2 ));
    AO1 \imaging_0/fifo_px_0/AO1_4  (.A(
        \imaging_0/fifo_px_0/XOR2_45_Y ), .B(
        \imaging_0/fifo_px_0/AND2_92_Y ), .C(
        \imaging_0/fifo_px_0/AND2_33_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_4_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIV870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[5] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[6]  
        (.A(\imaging_0/fifo_px_0_Q[6] ), .B(\imaging_0/fifo_px_1_Q[6] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_357 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[21]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[21]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[21] ));
    INV \imaging_0/fifo_px_0/INV_12  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .Y(
        \imaging_0/fifo_px_0/INV_12_Y ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_198 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[23] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[23] ));
    IOBI_IB_OB_EB \psram_data_pad[6]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[6]/U0/NET3 ), .DOUT(
        \psram_data_pad[6]/U0/NET1 ), .EOUT(
        \psram_data_pad[6]/U0/NET2 ), .Y(\psram_data_in[6] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_489 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 )
        );
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[17]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_501 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[17]_net_1 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_5  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[15]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[15] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[15] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIDTRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[7] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_177 ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNI7JJM  (.A(
        TP_PWRITE_c), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ));
    AO1C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIHE4R61[0]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[8]  
        (.A(\imaging_0/fifo_px_0_Q[8] ), .B(\imaging_0/fifo_px_1_Q[8] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_359 ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[1]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_386 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[1] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_189 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ));
    IOPAD_TRI \psram_address_pad[13]/U0/U0  (.D(
        \psram_address_pad[13]/U0/NET1 ), .E(
        \psram_address_pad[13]/U0/NET2 ), .PAD(psram_address[13]));
    NOR3B \psram_cr_0/ahb0/hready_reg_RNI814J1  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(\psram_data_in[10] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_241 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[8]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[8] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_71 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[3]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] ));
    IOTRI_OB_EB \psram_address_pad[20]/U0/U1  (.D(
        \psram_address_c[20] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[20]/U0/NET1 ), .EOUT(
        \psram_address_pad[20]/U0/NET2 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[12]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[12] ));
    BUFF \imaging_0/fifo_px_1/XOR2_80  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .Y(
        \imaging_0/fifo_px_1/XOR2_80_Y ));
    DFN1 \imaging_0/adc081s101_0/cntrWaitLeading[0]  (.D(
        \imaging_0/adc081s101_0/cntrWaitLeading_6[0] ), .CLK(SCLK_c), 
        .Q(\imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_32  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET ));
    IOTRI_OB_EB \rs485_de_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\rs485_de_pad/U0/NET1 ), .EOUT(\rs485_de_pad/U0/NET2 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[9] ));
    AND2A \imaging_0/fifo_px_0/NAND2_1_RNIA3OG  (.A(TP_EMPTY_c), .B(
        \imaging_0/fifo_px_0/REP ), .Y(\imaging_0/fifo_px_0/MEMORYRE ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUTD01[5]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_0 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_3  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_3_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_6  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_1  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_1_Y ));
    IOTRI_OB_EB \TP_PADDR_BIT2_pad/U0/U1  (.D(GLMUXINT_GND), .E(
        GLMUXINT_GND), .DOUT(\TP_PADDR_BIT2_pad/U0/NET1 ), .EOUT(
        \TP_PADDR_BIT2_pad/U0/NET2 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[23] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_39  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET ));
    AND2 \imaging_0/fifo_px_0/AND2_88  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_0/INV_3_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_88_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[17]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[17] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[17] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_501 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIU9NH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_165 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[9]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[9] ));
    XOR3 \imaging_0/fifo_px_1/XOR2_WDIFF[11]  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_1/INV_6_Y ), .C(
        \imaging_0/fifo_px_1/AO1_45_Y ), .Y(
        \imaging_0/fifo_px_1/WDIFF[11] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[31]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[31] ));
    AND2 \imaging_0/fifo_px_1/AND2_69  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ), .B(
        \imaging_0/fifo_px_1/INV_10_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_69_Y ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI9AVA5[2]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIG8Q05[0]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[0]  (.D(
        \imaging_0/fifo_px_0/QXI[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[0] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        );
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[24]  (.D(
        \imaging_0/fifo_px_0/QXI[24] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[24] ));
    DFN1 \psram_cr_0/ahb0/operation_sel  (.D(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation_sel_net_1 ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[27]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[27] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[19] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[11] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[3] ));
    NOR3A \psram_cr_0/cr_int_i0/op_counter_lb1_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_74 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]  
        (.D(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575s ), .CLK(
        SCLK_c), .Q(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 )
        );
    OR2 \imaging_0/adc081s101_0/cntrWaitTrailing_RNI9C6T[1]  (.A(
        \imaging_0/adc081s101_0/cntrWaitTrailing[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitTrailing[0]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_40 ));
    AO1 \imaging_0/adc081s101_0/bitsRead_RNIF8PU1[3]  (.A(
        \imaging_0/adc081s101_0/bitsReade_0_a2_0 ), .B(
        \imaging_0/adc081s101_0/N_95 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/bitsReade ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_235 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[0]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[0] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[0] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_211 )
        );
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 ));
    NOR2B \imaging_0/fifo_px_1/AND2_63  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .B(
        \imaging_0/fifo_px_1/XOR2_0_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_63_Y ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_27_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[6]  (.D(
        \psram_cr_0/cr_int_i0/N_32 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[6] ));
    IOPAD_TRI \psram_nbyte_en_pad[0]/U0/U0  (.D(
        \psram_nbyte_en_pad[0]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[0]/U0/NET2 ), .PAD(psram_nbyte_en[0]));
    OR3 \imaging_0/fifo_px_1/DFN1C0_AFULL_RNO  (.A(
        \imaging_0/fifo_px_1/WDIFF[9] ), .B(
        \imaging_0/fifo_px_1/G_11_0_o3_1_0 ), .C(
        \imaging_0/fifo_px_1/fifo_px_1_FULL ), .Y(
        \imaging_0/fifo_px_1/OR2_0_Y ));
    INV \imaging_0/fifo_px_0/AND2_MEMORYWE  (.A(TP_FULL_c), .Y(
        \imaging_0/fifo_px_0/MEMORYWE ));
    DFN1 \psram_cr_0/ahb0/data_out[7]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[7]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[19]  
        (.A(\imaging_0/fifo_px_0_Q[19] ), .B(
        \imaging_0/fifo_px_1_Q[19] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_370 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[30]  (.D(
        \imaging_0/fifo_px_1/QXI[30] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[30] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_2[31]  (.A(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_62 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[18]  (.A(
        \psram_cr_0/ahb0/N_197 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_256 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[14]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[14] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[8]  (.A(
        \psram_cr_0/cr_int_i0/N_164 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[4]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[9] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_47  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET ));
    XNOR3 \imaging_0/fifo_px_0/XOR2_WDIFF[12]  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[12] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[12] ), .C(
        \imaging_0/fifo_px_0/AO1_12_Y ), .Y(
        \imaging_0/fifo_px_0/WDIFF[12] ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI3AS14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_653 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO_1  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_45 ));
    IOTRI_OB_EB \psram_noe0_pad/U0/U1  (.D(psram_noe0_c), .E(PLLEN_VCC)
        , .DOUT(\psram_noe0_pad/U0/NET1 ), .EOUT(
        \psram_noe0_pad/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[24]/U0/U1  (.D(
        \psram_address_c[24] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[24]/U0/NET1 ), .EOUT(
        \psram_address_pad[24]/U0/NET2 ));
    AND2 \imaging_0/fifo_px_1/AND2_74  (.A(
        \imaging_0/fifo_px_1/XOR2_40_Y ), .B(
        \imaging_0/fifo_px_1/XOR2_94_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_74_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[15]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[15] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] ));
    NOR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIT0I64[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_0 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRLJC3[5]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[2]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[2] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_11  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/INV_12_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_11_Y ));
    NOR3A \psram_cr_0/ahb0/haddr_reg_RNIA52K3_2[2]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_87  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET ));
    IOBI_IB_OB_EB \psram_data_pad[12]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[12]/U0/NET3 ), .DOUT(
        \psram_data_pad[12]/U0/NET1 ), .EOUT(
        \psram_data_pad[12]/U0/NET2 ), .Y(\psram_data_in[12] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_171 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[5] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[21]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[21] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[21] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[15]  (.A(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_56 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[17]  (.D(
        \imaging_0/fifo_px_0/QXI[17] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[17] ));
    NOR3B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_3  (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_1 ), 
        .C(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_28 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7_0_a2_1_3 ));
    NOR3B \psram_cr_0/ahb0/data_in_sel_RNI52031  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/data_in_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/data_in7 ));
    IOPAD_TRI \TP_EMPTY_pad/U0/U0  (.D(\TP_EMPTY_pad/U0/NET1 ), .E(
        \TP_EMPTY_pad/U0/NET2 ), .PAD(TP_EMPTY));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(\psram_cr_0/reg_addr[13] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_169 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGRHQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[18] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_647 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIT0VQ6  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[25] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ));
    AOI1 \psram_cr_0/ahb0/hrdata_reg_RNO_5[1]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_8_1 ), .B(
        \psram_cr_0/ahb0/N_85 ), .C(\psram_cr_0/ahb0/un1_haddr_reg_5 ), 
        .Y(\psram_cr_0/ahb0/N_113 ));
    IOPAD_TRI \resv_pad/U0/U0  (.D(\resv_pad/U0/NET1 ), .E(
        \resv_pad/U0/NET2 ), .PAD(resv));
    OR2 \psram_cr_0/cr_int_i0/op_counter_RNI14O3_0[3]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_68 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[16]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[16] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_3  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[3] ));
    AX1C \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[9]  (.A(
        \imaging_0/fifo_px_1/XOR2_21_Y ), .B(
        \imaging_0/fifo_px_1/AO1_10_Y ), .C(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[12]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[12] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[12] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_496 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_222 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[2]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[25]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[25] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[17] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[9] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[1] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_247 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_1  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_1_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(\psram_data_in[4] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_235 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[28]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_512 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[28]_net_1 )
        );
    NOR2B \imaging_0/fifo_px_1/AND2_21  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .B(
        \imaging_0/fifo_px_1/XOR2_9_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_21_Y ));
    NOR2B \imaging_0/fifo_px_0/AND2_21  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .B(
        \imaging_0/fifo_px_0/XOR2_9_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_21_Y ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_24  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_24_Y ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_176 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6ANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[5] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_173 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] ));
    DFN1 \psram_cr_0/ahb0/data_out[2]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[2]_net_1 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNIEQR52  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1II_0[6] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_31  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_78  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[18]  (.D(
        \imaging_0/fifo_px_1/QXI[18] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[18] ));
    INV \imaging_0/fifo_px_1/INV_4  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .Y(
        \imaging_0/fifo_px_1/INV_4_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[5]  (.D(
        \imaging_0/fifo_px_1/QXI[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[5] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[22] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]  
        (.D(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_574s ), .CLK(
        SCLK_c), .Q(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        );
    OR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIP5VC[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114_0_o2_0 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_217 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[15]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_366 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[15] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIFBTL[11]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[11] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_11  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[11] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[11] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        );
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_226 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIK3IQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[29] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_658 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[27]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_511 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[27]_net_1 )
        );
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[5]  
        (.A(\imaging_0/fifo_px_0_Q[5] ), .B(\imaging_0/fifo_px_1_Q[5] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_356 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[5]  (.A(
        \psram_cr_0/data_from_cr[5] ), .B(\psram_data_in[5] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_236 ));
    XNOR2 \imaging_0/adc081s101_0/bitsRead_RNO_0[1]  (.A(
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/bitsRead[1]_net_1 ), .Y(
        \imaging_0/adc081s101_0/bitsRead_n1_i_0 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[20]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_371 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[20] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_40  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_0  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[0] ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[2]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[2] ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[5]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNICANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[8] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_179 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] ));
    IOTRI_OB_EB \SCLK_pad/U0/U1  (.D(SCLK_c), .E(PLLEN_VCC), .DOUT(
        \SCLK_pad/U0/NET1 ), .EOUT(\SCLK_pad/U0/NET2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_80  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8JGQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[23] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_652 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[1]  (.D(
        \psram_cr_0/cr_int_i0/N_61 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[0]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_385 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[0] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_173 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[5] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] ));
    IOPAD_TRI \led_pad[0]/U0/U0  (.D(\led_pad[0]/U0/NET1 ), .E(
        \led_pad[0]/U0/NET2 ), .PAD(led[0]));
    IOPAD_TRI \TP_BUSY_pad/U0/U0  (.D(\TP_BUSY_pad/U0/NET1 ), .E(
        \TP_BUSY_pad/U0/NET2 ), .PAD(TP_BUSY));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[24]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[24] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[16] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[8] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[0] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[4]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_66_RNIDQJJ2  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .B(
        \imaging_0/fifo_px_0/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[4] ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[16] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[2]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[2] ));
    IOTRI_OB_EB \led_pad[5]/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\led_pad[5]/U0/NET1 ), .EOUT(\led_pad[5]/U0/NET2 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_180 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_218 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_34 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIFTRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[9] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_181 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_2  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[2] ));
    BUFF \imaging_0/fifo_px_1/XOR2_21  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .Y(
        \imaging_0/fifo_px_1/XOR2_21_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[28]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[7] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2PTQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[30] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_197 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] ));
    DFN1 \psram_cr_0/ahb0/hwrite_reg  (.D(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[6]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_185 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[3]  (.D(
        \psram_cr_0/cr_int_i0/N_58 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ));
    NOR2A \psram_cr_0/ahb0/hready_reg_RNI31AC1  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m));
    DFN1 \psram_cr_0/ahb0/fsm  (.D(\psram_cr_0/ahb0/fsm_0_sqmuxa_1 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/ahb0/fsm_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        );
    AND2A \imaging_0/fifo_px_1/NAND2_1_RNILK6L  (.A(
        \imaging_0/fifo_px_1_EMPTY ), .B(\imaging_0/REP ), .Y(
        \imaging_0/fifo_px_1/MEMORYRE ));
    IOPAD_TRI \psram_noe0_pad/U0/U0  (.D(\psram_noe0_pad/U0/NET1 ), .E(
        \psram_noe0_pad/U0/NET2 ), .PAD(psram_noe0));
    OR3B \imaging_0/fifo_px_0/DFN1C0_AFULL_RNO_4  (.A(
        \imaging_0/fifo_px_0/XNOR2_5_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_16_Y ), .C(
        \imaging_0/fifo_px_0/WDIFF[12] ), .Y(
        \imaging_0/fifo_px_0/G_11_0_o3_1 ));
    DFN1 \psram_cr_0/ahb0/data_out[12]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[12]_net_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[29]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[29] ));
    XA1A \imaging_0/fifo_px_1/AND2_25  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ), .C(
        \imaging_0/fifo_px_1/AND3_1_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_25_Y ));
    NOR2B \imaging_0/fifo_px_1/AO1_1  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .B(
        \imaging_0/fifo_px_1/AND2_37_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_1_Y ));
    NOR3B \psram_cr_0/ahb0/operation_sel_RNIIIQ01  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/operation_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/operation5 )
        );
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_3[1]  
        (.A(\imaging_0/fifo_px_0_Q[1] ), .B(\imaging_0/fifo_px_1_Q[1] )
        , .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_352 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBTRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[5] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_173 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[3]  (.A(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_73 ));
    DFN1 \psram_cr_0/cr_int_i0/address[24]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[24] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_6[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 ));
    OA1 \psram_cr_0/ahb0/busy_RNO  (.A(\psram_cr_0/dt_req ), .B(
        \psram_cr_0/dt_ack ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/N_24 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[0] ));
    DFN1 \psram_cr_0/ahb0/operation[21]  (.D(
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[21]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[6]  (.A(
        \psram_cr_0/data_from_cr[6] ), .B(
        \psram_cr_0/ahb0/data_out[6]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_265 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_UART_0_TXD  (.D(
        \MSS_CORE2_0/MSS_UART_0_TXD_D ), .E(PLLEN_VCC), .PAD(
        UART_0_TXD));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[11] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_30 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_188 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[14]  (.A(
        \psram_cr_0/data_to_cr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_257 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[2]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_213 )
        );
    OA1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4  (.A(TP_PSEL_c), 
        .B(\imaging_0.stonyman_apb3_0.ioreg_ready ), .C(TP_PENABLE_c), 
        .Y(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4_net_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[4]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHJTL[13]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[28]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[28] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[20] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[12] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[4] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[20]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[20] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[20] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_504 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_186 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_3[3]  
        (.A(\imaging_0/fifo_px_0_Q[3] ), .B(\imaging_0/fifo_px_1_Q[3] )
        , .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_354 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[9]  (.D(
        \imaging_0/fifo_px_1/QXI[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[9] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_27  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[27] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[27] ));
    IOPAD_BI \psram_data_pad[15]/U0/U0  (.D(
        \psram_data_pad[15]/U0/NET1 ), .E(\psram_data_pad[15]/U0/NET2 )
        , .Y(\psram_data_pad[15]/U0/NET3 ), .PAD(psram_data[15]));
    XOR2 \imaging_0/fifo_px_0/XOR2_6  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/INV_4_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_6_Y ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[11]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[11] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[27]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_378 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[27] ));
    NOR2B \imaging_0/fifo_px_1/AND2_48_RNIVTQ61  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/AND2_87_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_24_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_223 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_92  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(PLLEN_VCC), .PIN1(), .PIN2(), .PIN3(
        ), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_245 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_m[0] ));
    IOTRI_OB_EB \psram_nbyte_en_pad[0]/U0/U1  (.D(psram_ncs0_c_c_c), 
        .E(PLLEN_VCC), .DOUT(\psram_nbyte_en_pad[0]/U0/NET1 ), .EOUT(
        \psram_nbyte_en_pad[0]/U0/NET2 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[2]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[2] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[4]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ));
    DFN1 \psram_cr_0/ahb0/data_out[8]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[8]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[6]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ));
    AND2 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[2]_RNI4M2N  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/MEMORYRE ), .Y(
        \imaging_0/fifo_px_1/AND2_87_Y ));
    INV \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNI1K49[5]  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[5] ), .Y(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[5] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_48 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_487 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 )
        );
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_211 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[12]  (.A(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_out_m[12] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[18]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_369 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[18] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[6]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6NPU[7]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_7 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[10]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_494 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[10]_net_1 )
        );
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_AFULL  (.D(
        \imaging_0/fifo_px_0/OR2_0_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/DFN1C0_AFULL ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[10]  (.D(
        \imaging_0/fifo_px_0/QXI[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[10] ));
    INV \imaging_0/fifo_px_0/REBUBBLE  (.A(fifoRden_0__RNIUKTE), .Y(
        \imaging_0/fifo_px_0/REP ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_MDC  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDC_D ), .E(PLLEN_VCC), .PAD(MAC_MDC));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIEO4D1[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .C(
        \psram_cr_0/ahb0/N_97 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[26]  (.D(
        \imaging_0/fifo_px_1/QXI[26] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[26] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_16  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[16] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[16] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[20]  (.D(
        \imaging_0/fifo_px_1/QXI[20] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[20] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIF5VC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_206 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[29]  
        (.A(\imaging_0/fifo_px_0_Q[29] ), .B(
        \imaging_0/fifo_px_1_Q[29] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_380 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIV5VC[8]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_13  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[13] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[13] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[11]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[11] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_75 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .C(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ));
    BUFF \imaging_0/fifo_px_0/XOR2_80  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .Y(
        \imaging_0/fifo_px_0/XOR2_80_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[27]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[27] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_81_RNIT0613  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .B(
        \imaging_0/fifo_px_0/AO1_49_Y ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[8] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_183 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_251 ));
    IOPAD_BI \psram_data_pad[2]/U0/U0  (.D(\psram_data_pad[2]/U0/NET1 )
        , .E(\psram_data_pad[2]/U0/NET2 ), .Y(
        \psram_data_pad[2]/U0/NET3 ), .PAD(psram_data[2]));
    IOPAD_BI \psram_data_pad[13]/U0/U0  (.D(
        \psram_data_pad[13]/U0/NET1 ), .E(\psram_data_pad[13]/U0/NET2 )
        , .Y(\psram_data_pad[13]/U0/NET3 ), .PAD(psram_data[13]));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_FULL  (.D(
        \imaging_0/fifo_px_0/FULLINT ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(TP_FULL_c));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_169 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI1R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNINATK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[10] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_183 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[3]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[3] ));
    OR3A \imaging_0/fifo_px_1/DFN1C0_AFULL_RNO_4  (.A(
        \imaging_0/fifo_px_1/XNOR2_16_Y ), .B(
        \imaging_0/fifo_px_1/WDIFF[12] ), .C(
        \imaging_0/fifo_px_1/WDIFF[11] ), .Y(
        \imaging_0/fifo_px_1/G_11_0_o3_1_0 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[29] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ));
    IOTRI_OB_EB \resp_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\resp_pad/U0/NET1 ), .EOUT(\resp_pad/U0/NET2 ));
    AO1 \imaging_0/fifo_px_1/AO1_45  (.A(
        \imaging_0/fifo_px_1/AND2_58_Y ), .B(
        \imaging_0/fifo_px_1/AO1_16_Y ), .C(
        \imaging_0/fifo_px_1/AO1_44_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_45_Y ));
    IOTRI_OB_EB \psram_address_pad[1]/U0/U1  (.D(\psram_address_c[1] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[1]/U0/NET1 ), .EOUT(
        \psram_address_pad[1]/U0/NET2 ));
    AND2 \imaging_0/fifo_px_0/AND2_38  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/INV_4_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_38_Y ));
    NOR3C \imaging_0/fifo_px_0/AND2_66_RNIG31H2  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .B(
        \imaging_0/fifo_px_0/XOR2_8_Y ), .C(
        \imaging_0/fifo_px_0/AO1_24_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_25_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_7_RNIDHVU3  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[12] ), .B(
        \imaging_0/fifo_px_1/AO1_29_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[10] ));
    AX1C \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[5]  (.A(
        \imaging_0/fifo_px_1/XOR2_80_Y ), .B(
        \imaging_0/fifo_px_1/AO1_37_Y ), .C(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] ));
    IOBI_IB_OB_EB \psram_data_pad[3]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[3]/U0/NET3 ), .DOUT(
        \psram_data_pad[3]/U0/NET1 ), .EOUT(
        \psram_data_pad[3]/U0/NET2 ), .Y(\psram_data_in[3] ));
    MX2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO_0  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam0_fifo_rden )
        , .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        , .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_46 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_519 ));
    OR2B \psram_cr_0/cr_int_i0/op_counter_RNI14O3_0[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_74 ));
    OR2A \psram_cr_0/cr_int_i0/nbyte_en_1_RNO[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_230 ), .Y(
        \psram_cr_0/cr_int_i0/N_99 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_m[6] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIOETK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[11] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_185 ));
    DFN1 \psram_cr_0/ahb0/data_out[9]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[9]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[19]  (.D(
        \imaging_0/fifo_px_1/QXI[19] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[19] ));
    AO1 \imaging_0/fifo_px_0/AO1_16  (.A(
        \imaging_0/fifo_px_0/AND2_29_Y ), .B(
        \imaging_0/fifo_px_0/AO1_47_Y ), .C(
        \imaging_0/fifo_px_0/AO1_2_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_16_Y ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[22]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_373 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[22] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[9]  (.D(
        \psram_cr_0/cr_int_i0/N_38 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[9] ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_1  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_tz ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_64 ));
    IOTRI_OB_EB \led_pad[6]/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\led_pad[6]/U0/NET1 ), .EOUT(\led_pad[6]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_195 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_255 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[31]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[31]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[31] ));
    DFN1 \psram_cr_0/cr_int_i0/dt_ack  (.D(\psram_cr_0/cr_int_i0/N_22 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/dt_ack ));
    IOPAD_TRI \psram_address_pad[20]/U0/U0  (.D(
        \psram_address_pad[20]/U0/NET1 ), .E(
        \psram_address_pad[20]/U0/NET2 ), .PAD(psram_address[20]));
    DFN1 \psram_cr_0/ahb0/psram_addr[28]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[28] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[27]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[27] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[27] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_511 ));
    AX1A \psram_cr_0/cr_int_i0/op_counter_RNO_0[3]  (.A(
        \psram_cr_0/cr_int_i0/N_74 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_n3_i_1 ));
    AO1 \imaging_0/fifo_px_0/AO1_2  (.A(
        \imaging_0/fifo_px_0/AND2_74_Y ), .B(
        \imaging_0/fifo_px_0/AO1_4_Y ), .C(
        \imaging_0/fifo_px_0/AO1_17_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_2_Y ));
    IOTRI_OB_EB \led_pad[3]/U0/U1  (.D(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[7] ), .E(PLLEN_VCC), .DOUT(
        \led_pad[3]/U0/NET1 ), .EOUT(\led_pad[3]/U0/NET2 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[7]  (.A(
        \psram_cr_0/data_from_cr[7] ), .B(\psram_data_in[7] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_238 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[2]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[2] ));
    MSS_CCC_IP #( .VCOFREQUENCY(80.000000) )  
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_MSSCCC  (.CLKA(
        \MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC ), .EXTFB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .GLA(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT ), .GLAMSS(
        \MSS_CORE2_0/GLA0 ), .LOCK(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT ), .LOCKMSS(
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK ), .CLKB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .GLB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT ), .YB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .CLKC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .GLC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT ), .YC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .MACCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC ), .SDIN(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), .SCLK(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .SSHIFT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .SUPDATE(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .MODE(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .SDOUT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ), .PLLEN(PLLEN_VCC), 
        .OADIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .OADIVHALF(GLMUXINT_GND), .OADIVRST(
        GLMUXINT_GND), .OAMUX({PLLEN_VCC, GLMUXINT_GND, GLMUXINT_GND}), 
        .BYPASSA(GLMUXINT_GND), .DLYGLA({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .DLYGLAMSS({
        GLMUXINT_GND, PLLEN_VCC, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .DLYGLAFAB({GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, 
        PLLEN_VCC, PLLEN_VCC}), .OBDIV({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC}), .OBDIVHALF(
        GLMUXINT_GND), .OBDIVRST(GLMUXINT_GND), .OBMUX({GLMUXINT_GND, 
        PLLEN_VCC, PLLEN_VCC}), .BYPASSB(GLMUXINT_GND), .DLYGLB({
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, GLMUXINT_GND})
        , .OCDIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .OCDIVHALF(GLMUXINT_GND), 
        .OCDIVRST(GLMUXINT_GND), .OCMUX({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .BYPASSC(PLLEN_VCC), .DLYGLC({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), 
        .FINDIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC}), .FBDIV({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, 
        PLLEN_VCC, PLLEN_VCC}), .FBDLY({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC}), .FBSEL({GLMUXINT_GND, 
        PLLEN_VCC}), .XDLYSEL(GLMUXINT_GND), .VCOSEL({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .GLMUXINT(GLMUXINT_GND), 
        .GLMUXSEL({GLMUXINT_GND, GLMUXINT_GND}), .GLMUXCFG({
        GLMUXINT_GND, GLMUXINT_GND}));
    NOR2B \psram_cr_0/ahb0/operation_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_184 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_22_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_8  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_8_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(\psram_cr_0/data_to_cr[5] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_161 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[25]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[25] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[17] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[9] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_91  (.PIN4(FAB_CLK), .PIN5(
        GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), .PIN3(), 
        .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_182 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[20]  (.A(
        \psram_address_c[20] ), .B(
        \psram_cr_0/cr_int_i0/address_5[20] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_268 ));
    DFN1 \psram_cr_0/ahb0/data_in[4]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[27]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[27] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[27] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_75 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[1]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(\psram_data_in[0] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_231 ));
    INV \imaging_0/fifo_px_0/INV_6  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .Y(
        \imaging_0/fifo_px_0/INV_6_Y ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[7]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[7] ));
    IOPAD_IN \MSS_CORE2_0/MSS_UART_0_RXD  (.PAD(UART_0_RXD), .Y(
        \MSS_CORE2_0/MSS_UART_0_RXD_Y ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[15]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[15] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[15] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_499 ));
    DFN1 \psram_cr_0/ahb0/operation[17]  (.D(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[17]_net_1 ));
    INV \imaging_0/fifo_px_0/INV_0  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .Y(
        \imaging_0/fifo_px_0/INV_0_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[18]  (.A(
        \psram_cr_0/ahb0/N_229 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[9]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[9] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[1]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[1] ));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7ED6D[2]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[10]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[10] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[10] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_221 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_76  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET ));
    XNOR2 \imaging_0/fifo_px_0/AND3_6_RNO_0  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[4] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_28_Y ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNISOQ02[10]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_8 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_5 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_8 ));
    AO1 \imaging_0/fifo_px_0/AO1_45  (.A(
        \imaging_0/fifo_px_0/AND2_58_Y ), .B(
        \imaging_0/fifo_px_0/AO1_16_Y ), .C(
        \imaging_0/fifo_px_0/AO1_44_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_45_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[14]  (.D(
        \imaging_0/fifo_px_1/QXI[14] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[14] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[0]  (.D(
        \psram_cr_0/cr_int_i0/op_counter_n0 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[6]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[6] ));
    IOPAD_TRI \psram_address_pad[24]/U0/U0  (.D(
        \psram_address_pad[24]/U0/NET1 ), .E(
        \psram_address_pad[24]/U0/NET2 ), .PAD(psram_address[24]));
    NOR2B \imaging_0/fifo_px_0/AND2_24  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .B(
        \imaging_0/fifo_px_0/XOR2_16_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_24_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_38 ));
    DFN1 \psram_cr_0/ahb0/operation[8]  (.D(
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[8] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_241 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_201 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_40  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_1/INV_9_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_40_Y ));
    IOPAD_TRI \led_pad[4]/U0/U0  (.D(\led_pad[4]/U0/NET1 ), .E(
        \led_pad[4]/U0/NET2 ), .PAD(led[4]));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI86THO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI ));
    DFN1 \psram_cr_0/ahb0/operation[13]  (.D(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[13] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[15]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_226 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(\psram_cr_0/data_to_cr[7] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_163 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_50 ));
    AND2 \imaging_0/fifo_px_1/AND2_88  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_1/INV_3_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_88_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ));
    NOR3C \imaging_0/fifo_px_1/AO1_10  (.A(
        \imaging_0/fifo_px_1/AND2_84_Y ), .B(
        \imaging_0/fifo_px_1/AND2_63_Y ), .C(
        \imaging_0/fifo_px_1/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_10_Y ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[4]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[0]  (.A(
        \psram_cr_0/ahb0/data_out[0]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ));
    AX1C \imaging_0/fifo_px_0/XOR2_92_RNI1BU43  (.A(
        \imaging_0/fifo_px_0/XOR2_16_Y ), .B(
        \imaging_0/fifo_px_0/AO1_49_Y ), .C(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[9] ));
    XA1 \imaging_0/fifo_px_0/AND2_FULLINT  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[12] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[12] ), .C(
        \imaging_0/fifo_px_0/AND2_25_Y ), .Y(
        \imaging_0/fifo_px_0/FULLINT ));
    DFN1E1 \imaging_0/adc081s101_0/bitsRead[0]  (.D(
        \imaging_0/adc081s101_0/N_69 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/bitsReade ), .Q(
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNINTNH3  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1II_0[6] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[20]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_504 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[20]_net_1 )
        );
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[15]  (.D(
        \imaging_0/fifo_px_1/QXI[15] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[15] ));
    AND3 \imaging_0/fifo_px_1/AND3_8  (.A(
        \imaging_0/fifo_px_1/XNOR2_15_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_9_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_17_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_8_Y ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_191 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[22]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[22] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[22] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_506 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_74 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_10  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET ), .PIN6INT(), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        );
    DFN1 \psram_cr_0/cr_int_i0/start_0  (.D(\psram_cr_0/start_0_0 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/start_0_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[11]  (.A(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_71 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_232 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_174 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[6]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ));
    IOTRI_OB_EB \TP_RDEN_pad/U0/U1  (.D(fifoRden_0__RNIUKTE), .E(
        PLLEN_VCC), .DOUT(\TP_RDEN_pad/U0/NET1 ), .EOUT(
        \TP_RDEN_pad/U0/NET2 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_36 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[4]  (.A(
        \psram_address_c[4] ), .B(\psram_cr_0/cr_int_i0/address_5[4] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_252 ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_9  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[1] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_9_Y ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_208 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ));
    AND3 \imaging_0/fifo_px_1/AND3_1  (.A(
        \imaging_0/fifo_px_1/AND3_3_Y ), .B(
        \imaging_0/fifo_px_1/AND3_4_Y ), .C(
        \imaging_0/fifo_px_1/AND3_2_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_1_Y ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIJRTL[15]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[4]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[14] ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[8]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_359 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[8] ));
    IOTRI_OB_EB \psram_address_pad[18]/U0/U1  (.D(
        \psram_address_c[18] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[18]/U0/NET1 ), .EOUT(
        \psram_address_pad[18]/U0/NET2 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[9]  (.A(
        \psram_cr_0/ahb0/data_out[9]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[9] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[3]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_354 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_322 ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_388 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[5]  (.A(
        \psram_cr_0/cr_int_i0/N_161 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[5] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[3]  (.A(\psram_cr_0/ahb0/N_246 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ));
    INV \imaging_0/fifo_px_1/AND2_MEMORYWE  (.A(
        \imaging_0/fifo_px_1/fifo_px_1_FULL ), .Y(
        \imaging_0/fifo_px_1/MEMORYWE ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_236 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[30]  (.D(
        \imaging_0/fifo_px_0/QXI[30] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[30] ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI0AC32[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/N_160 ), .C(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI00II_i_m ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_262 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[16]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_367 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[16] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_46 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_35  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[5]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] ));
    IOPAD_TRI \psram_address_pad[18]/U0/U0  (.D(
        \psram_address_pad[18]/U0/NET1 ), .E(
        \psram_address_pad[18]/U0/NET2 ), .PAD(psram_address[18]));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_178 ));
    NOR2B \imaging_0/fifo_px_1/AND2_84  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .B(
        \imaging_0/fifo_px_1/XOR2_80_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_84_Y ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[4]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .B(
        \imaging_0/fifo_px_1/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIJCV9[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNI3SHM[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_8_1 ));
    NOR2B \psram_cr_0/ahb0/hready_reg_RNIBE4VP  (.A(
        \psram_cr_0/ahb0/hwrite_reg4_3 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_59 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[4]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[2]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ));
    XNOR2 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_3  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_12_Y ));
    XNOR3 \imaging_0/fifo_px_1/XOR2_WDIFF[12]  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[12] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[12] ), .C(
        \imaging_0/fifo_px_1/AO1_12_Y ), .Y(
        \imaging_0/fifo_px_1/WDIFF[12] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[1]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[1] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_212 )
        );
    OA1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_2  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIP5VC_0[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2tt_m2_0_a2_0 )
        );
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNIPPOA2  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_197 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[24]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[24] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[27]  (.D(
        \imaging_0/fifo_px_0/QXI[27] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[27] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[18]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[18] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[18] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_502 ));
    OR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_2  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_tz ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[16]  (.A(\psram_cr_0/dt_rw ), 
        .B(\psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_59 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNITMUB9[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[12]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[12] ));
    IOPAD_TRI \TP_START_CAPTURE_pad/U0/U0  (.D(
        \TP_START_CAPTURE_pad/U0/NET1 ), .E(
        \TP_START_CAPTURE_pad/U0/NET2 ), .PAD(TP_START_CAPTURE));
    AO1 \imaging_0/fifo_px_1/AO1_12  (.A(
        \imaging_0/fifo_px_1/XOR2_41_Y ), .B(
        \imaging_0/fifo_px_1/AO1_45_Y ), .C(
        \imaging_0/fifo_px_1/AND2_90_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_12_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_42  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[11]  
        (.A(\imaging_0/fifo_px_0_Q[11] ), .B(
        \imaging_0/fifo_px_1_Q[11] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_362 ));
    IOPAD_TRI \psram_address_pad[1]/U0/U0  (.D(
        \psram_address_pad[1]/U0/NET1 ), .E(
        \psram_address_pad[1]/U0/NET2 ), .PAD(psram_address[1]));
    DFN1 \psram_cr_0/ahb0/haddr_reg[8]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_49  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET ));
    DFN1 \psram_cr_0/ahb0/operation[1]  (.D(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_82  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_out[0]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[6] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_10[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[26] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_89  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET ));
    IOPAD_TRI \resp_pad/U0/U0  (.D(\resp_pad/U0/NET1 ), .E(
        \resp_pad/U0/NET2 ), .PAD(resp));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_3_sqmuxa_0_a2_1  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ));
    DFN1 \psram_cr_0/cr_int_i0/address[8]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[8] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[30]  (.A(
        \psram_cr_0/ahb0/N_209 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_77  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 ));
    NOR3C \imaging_0/fifo_px_1/AO1_37  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .B(
        \imaging_0/fifo_px_1/XOR2_18_Y ), .C(
        \imaging_0/fifo_px_1/AO1_1_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_37_Y ));
    XA1B \psram_cr_0/cr_int_i0/ac_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_54 ));
    DFN1 \psram_cr_0/ahb0/data_in[13]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[13] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[20]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[20] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[3]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_17  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_17_Y ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[10]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .B(
        \imaging_0/fifo_px_1/AO1_22_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[10] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[28]  (.D(
        \imaging_0/fifo_px_1/QXI[28] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[28] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_7  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[7] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[7] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[30]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[30] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[30] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_514 ));
    IOTRI_OB_EB \CS_pad/U0/U1  (.D(CS_c), .E(PLLEN_VCC), .DOUT(
        \CS_pad/U0/NET1 ), .EOUT(\CS_pad/U0/NET2 ));
    DFN1E1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_7 ), .CLK(
        SCLK_c), .E(MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0.stonyman_apb3_0.ioreg_ready ));
    DFN1P0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] ), .CLK(
        FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(\psram_data_in[3] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_234 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(\psram_cr_0/data_to_cr[3] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_159 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[12] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[3]  (.A(\psram_cr_0/ahb0/N_75 )
        , .B(\psram_cr_0/ahb0/N_73 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_1[3] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_181 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[17]  (.A(
        \psram_address_c[17] ), .B(
        \psram_cr_0/cr_int_i0/address_5[17] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_265 ));
    AND3 \imaging_0/fifo_px_0/AND3_3  (.A(
        \imaging_0/fifo_px_0/XNOR2_19_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_10_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_3_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_3_Y ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[3]  (.A(
        \psram_address_c[3] ), .B(\psram_cr_0/cr_int_i0/address_5[3] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_251 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNI01AQ2[9]  (.A(
        \psram_cr_0/ahb0/N_85 ), .B(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_95 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_182 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[0] ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIVPR14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_651 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] ));
    DFN1 \psram_cr_0/cr_int_i0/address[10]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[10] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[13]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[13] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[16]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[16] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[16] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_34  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_m[12] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[0]  (.A(\psram_cr_0/ahb0/N_243 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[8]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[2]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNISQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[1]  (.A(\psram_cr_0/ahb0/N_244 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 ));
    XNOR2 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_3  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_12_Y ));
    AND2 \imaging_0/fifo_px_0/AND2_58  (.A(
        \imaging_0/fifo_px_0/XOR2_15_Y ), .B(
        \imaging_0/fifo_px_0/XOR2_89_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_58_Y ));
    IOTRI_OB_EB \psram_address_pad[5]/U0/U1  (.D(\psram_address_c[5] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[5]/U0/NET1 ), .EOUT(
        \psram_address_pad[5]/U0/NET2 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_0  (.D(
        \MSS_CORE2_0/MACTXD_net_0[0] ), .E(PLLEN_VCC), .PAD(MAC_TXD[0])
        );
    MX2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNO_0  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam1_fifo_rden )
        , .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        , .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_45 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_518 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[2] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_171 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIV80MA[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[25]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_376 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[25] ));
    DFN1 \psram_cr_0/cr_int_i0/start  (.D(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_net_1 ));
    INV \imaging_0/fifo_px_0/INV_9  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .Y(
        \imaging_0/fifo_px_0/INV_9_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIVQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNISUTK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[15] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_193 ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIA52K3_1[2]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ));
    IOPAD_BI \psram_data_pad[7]/U0/U0  (.D(\psram_data_pad[7]/U0/NET1 )
        , .E(\psram_data_pad[7]/U0/NET2 ), .Y(
        \psram_data_pad[7]/U0/NET3 ), .PAD(psram_data[7]));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_22  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_22_Y ));
    DFN1 \psram_cr_0/ahb0/operation[5]  (.D(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[5] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[17]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[17] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_41  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET ));
    NOR2B \imaging_0/fifo_px_1/AO1_15  (.A(
        \imaging_0/fifo_px_1/AND2_84_Y ), .B(
        \imaging_0/fifo_px_1/AO1_37_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_15_Y ));
    OR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI7D8Q[2]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(TP_PWRITE_c), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ));
    AO1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_4[0]  
        (.A(TP_EMPTY_c), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .C(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1empty_m ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_317 ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[3]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 ));
    NOR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_1[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_163 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_81  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET ));
    NOR2 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO_0[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ), .B(
        TP_PENABLE_c), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns_0_a3_0[0] ));
    NOR2B \imaging_0/fifo_px_0/AO1_22  (.A(
        \imaging_0/fifo_px_0/AND2_10_Y ), .B(
        \imaging_0/fifo_px_0/AO1_10_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_22_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[23]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[23] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] ));
    IOTRI_OB_EB \psram_address_pad[22]/U0/U1  (.D(
        \psram_address_c[22] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[22]/U0/NET1 ), .EOUT(
        \psram_address_pad[22]/U0/NET2 ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_1  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[4]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[4] ));
    DFN1 \psram_cr_0/ahb0/operation[0]  (.D(
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[0] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[11]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[11] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[9]  (.A(\psram_cr_0/ahb0/N_252 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[23]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[23] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[23] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_4  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[4] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[4] ));
    IOPAD_TRI \rs485_de_pad/U0/U0  (.D(\rs485_de_pad/U0/NET1 ), .E(
        \rs485_de_pad/U0/NET2 ), .PAD(rs485_de));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[20]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[20] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[20] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_3  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[1]  (.A(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[1] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_170 ));
    NOR2A \imaging_0/stonyman_apb3_0/bus_read_enable  (.A(TP_PSEL_c), 
        .B(TP_PWRITE_c), .Y(
        \imaging_0/stonyman_apb3_0/bus_read_enable_net_1 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_17  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_17_Y ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7TRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[1] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_165 ));
    IOTRI_OB_EB \psram_nwe_pad/U0/U1  (.D(psram_nwe_c), .E(PLLEN_VCC), 
        .DOUT(\psram_nwe_pad/U0/NET1 ), .EOUT(\psram_nwe_pad/U0/NET2 ));
    NOR2A \imaging_0/adc081s101_0/cs_RNIV2KF  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(CS_c), .Y(
        \imaging_0/adc081s101_0/N_95 ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIRMLM4[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_75 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_202 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ));
    XNOR2 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_6  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_25_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[8]  (.D(
        \imaging_0/fifo_px_1/QXI[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[8] ));
    IOTRI_OB_EB \psram_address_pad[2]/U0/U1  (.D(\psram_address_c[2] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[2]/U0/NET1 ), .EOUT(
        \psram_address_pad[2]/U0/NET2 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[30]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_514 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[30]_net_1 )
        );
    NOR2A 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_1__RNIO37J  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ioreg_cam1_fifo_rden )
        , .B(\imaging_0/fifo_px_1_EMPTY ), .Y(\imaging_0/REP ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[1]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[1] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[15]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[15]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[15] ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[3]  (.A(
        \imaging_0/fifo_px_0/XOR2_18_Y ), .B(
        \imaging_0/fifo_px_0/AO1_1_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[3] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[0]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[0] ));
    BUFF \imaging_0/fifo_px_1/XOR2_78  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .Y(
        \imaging_0/fifo_px_1/XOR2_78_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[1] ));
    XNOR3 \imaging_0/fifo_px_0/XNOR2_5  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_0/INV_6_Y ), .C(
        \imaging_0/fifo_px_0/AO1_45_Y ), .Y(
        \imaging_0/fifo_px_0/XNOR2_5_Y ));
    XOR2 \imaging_0/fifo_px_0/XOR2_40  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_0/INV_9_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_40_Y ));
    IOPAD_TRI \TP_PWRITE_pad/U0/U0  (.D(\TP_PWRITE_pad/U0/NET1 ), .E(
        \TP_PWRITE_pad/U0/NET2 ), .PAD(TP_PWRITE));
    DFN1 \psram_cr_0/ahb0/operation[2]  (.D(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[2] ));
    AX1C \imaging_0/fifo_px_1/XOR2_91_RNII8VI3  (.A(
        \imaging_0/fifo_px_1/XOR2_9_Y ), .B(
        \imaging_0/fifo_px_1/AO1_25_Y ), .C(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[5] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_7_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_202 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(
        \psram_cr_0/ahb0/data_out[9]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_268 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNIA52K3[9]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[20]  (.D(
        \imaging_0/fifo_px_0/QXI[20] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[20] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[25]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[25] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[25] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_509 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_94  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] ), .B(
        \imaging_0/fifo_px_1/INV_3_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_94_Y ));
    AND2 \imaging_0/fifo_px_0/AND2_29  (.A(
        \imaging_0/fifo_px_0/AND2_49_Y ), .B(
        \imaging_0/fifo_px_0/AND2_74_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_29_Y ));
    IOPAD_BI \psram_data_pad[11]/U0/U0  (.D(
        \psram_data_pad[11]/U0/NET1 ), .E(\psram_data_pad[11]/U0/NET2 )
        , .Y(\psram_data_pad[11]/U0/NET3 ), .PAD(psram_data[11]));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_204 ));
    DFN1 \psram_cr_0/ahb0/operation[19]  (.D(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[19]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_24[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[6] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[3] ));
    AND2 \imaging_0/fifo_px_1/AND2_38  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/INV_4_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_38_Y ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[6]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[6] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_41  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_1/INV_6_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_41_Y ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[13]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[13] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[13]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[13] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[5]  (.A(
        \psram_cr_0/data_from_cr[5] ), .B(
        \psram_cr_0/ahb0/data_out[5]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_264 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_95  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(\psram_cr_0/reg_addr[2] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_158 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[18]  (.A(
        \psram_address_c[18] ), .B(
        \psram_cr_0/cr_int_i0/address_5[18] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_266 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        );
    AX1C \imaging_0/fifo_px_0/XOR2_91_RNIG8OE3  (.A(
        \imaging_0/fifo_px_0/XOR2_9_Y ), .B(
        \imaging_0/fifo_px_0/AO1_25_Y ), .C(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[5] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_484 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 )
        );
    DFN1E1 \imaging_0/adc081s101_0/bitsRead[2]  (.D(
        \imaging_0/adc081s101_0/N_36 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/bitsReade ), .Q(
        \imaging_0/adc081s101_0/bitsRead[2]_net_1 ));
    INV \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNI2O49[6]  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[6] ), .Y(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[6] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_491 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 )
        );
    XOR2 \imaging_0/fifo_px_1/XOR2_15  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/INV_7_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_15_Y ));
    IOPAD_BI \psram_data_pad[8]/U0/U0  (.D(\psram_data_pad[8]/U0/NET1 )
        , .E(\psram_data_pad[8]/U0/NET2 ), .Y(
        \psram_data_pad[8]/U0/NET3 ), .PAD(psram_data[8]));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[6]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .B(
        \imaging_0/fifo_px_1/AO1_15_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[14]  
        (.A(\imaging_0/fifo_px_0_Q[14] ), .B(
        \imaging_0/fifo_px_1_Q[14] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_365 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_215 ));
    DFN1 \psram_cr_0/ahb0/operation[27]  (.D(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[27]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[16]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[16] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[16] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_500 ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52_1[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ));
    IOPAD_TRI \incp_pad/U0/U0  (.D(\incp_pad/U0/NET1 ), .E(
        \incp_pad/U0/NET2 ), .PAD(incp));
    DFN1 \psram_cr_0/ahb0/haddr_reg[7]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ));
    IOTRI_OB_EB \TP_BUSY_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\TP_BUSY_pad/U0/NET1 ), .EOUT(\TP_BUSY_pad/U0/NET2 ));
    DFN1 \psram_cr_0/ahb0/data_in[8]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[8] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 ));
    IOPAD_TRI \TP_PADDR_BIT2_pad/U0/U0  (.D(
        \TP_PADDR_BIT2_pad/U0/NET1 ), .E(\TP_PADDR_BIT2_pad/U0/NET2 ), 
        .PAD(TP_PADDR_BIT2));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_1[0] )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_1  (.PAD(MAC_RXD[1]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_1_Y ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[28]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_379 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[28] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[12]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[12] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[12] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[2] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_6[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[30] ));
    IOTRI_OB_EB \TP_PWRITE_pad/U0/U1  (.D(TP_PWRITE_c), .E(PLLEN_VCC), 
        .DOUT(\TP_PWRITE_pad/U0/NET1 ), .EOUT(\TP_PWRITE_pad/U0/NET2 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[4]  (.A(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_488 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 )
        );
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[18]  (.A(
        \psram_cr_0/cr_int_i0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_257 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_RBINNXTSHIFT[1]  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/AND2_87_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[1] ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_o3[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ));
    BUFF \imaging_0/fifo_px_0/XOR2_9  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .Y(
        \imaging_0/fifo_px_0/XOR2_9_Y ));
    OR2A \psram_cr_0/cr_int_i0/enable_RNIDN3J2  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_111 ), .Y(\psram_cr_0/cr_int_i0/N_348 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[11]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[11] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[11] ));
    DFN1 \psram_cr_0/cr_int_i0/nbyte_en_1[0]  (.D(
        \psram_cr_0/cr_int_i0/N_99 ), .CLK(FAB_CLK), .Q(
        psram_ncs0_c_c_c));
    NOR3B \psram_cr_0/ahb0/hwrite_reg_RNIS5013  (.A(
        \psram_cr_0/ahb0/N_85 ), .B(\psram_cr_0/ahb0/fsm_net_1 ), .C(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .Y(\psram_cr_0/ahb0/N_56 )
        );
    BUFF \imaging_0/fifo_px_1/XOR2_68  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .Y(
        \imaging_0/fifo_px_1/XOR2_68_Y ));
    DFN1 \psram_cr_0/ahb0/operation[23]  (.D(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[23]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[21]  
        (.A(\imaging_0/fifo_px_0_Q[21] ), .B(
        \imaging_0/fifo_px_1_Q[21] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_372 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[25]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[25]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[25] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[10]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[10]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[10] ));
    AND3 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_2  (.A(
        \imaging_0/fifo_px_1/AND3_10_Y ), .B(
        \imaging_0/fifo_px_1/AND3_8_Y ), .C(
        \imaging_0/fifo_px_1/AND3_6_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_9_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[29]  (.D(
        \imaging_0/fifo_px_1/QXI[29] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[29] ));
    XNOR2 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_6  (.A(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_25_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[18]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[18] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[15]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[15] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[15] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[15]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[15] ));
    IOTRI_OB_EB \incv_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\incv_pad/U0/NET1 ), .EOUT(\incv_pad/U0/NET2 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[6]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[6] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[6] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_490 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_7[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[29] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[5]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[31]  
        (.A(\imaging_0/fifo_px_0_Q[31] ), .B(
        \imaging_0/fifo_px_1_Q[31] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_382 ));
    INV \imaging_0/fifo_px_0/INV_3  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .Y(
        \imaging_0/fifo_px_0/INV_3_Y ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[7]  (.A(\psram_cr_0/ahb0/N_250 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[14] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_21[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[9] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 ));
    AND2 \imaging_0/fifo_px_0/AND2_33  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_0/INV_8_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_33_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_215 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[7]  (.A(
        \psram_address_c[7] ), .B(\psram_cr_0/cr_int_i0/address_5[7] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_255 ));
    NOR2B \psram_cr_0/ahb0/operation_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI0970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_82 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_58 ));
    DFN1 \psram_cr_0/cr_int_i0/address[18]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[18] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_231 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ));
    OR2A \psram_cr_0/cr_int_i0/noe0_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_229 ), .Y(
        \psram_cr_0/cr_int_i0/N_100 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_252 ));
    INV \imaging_0/fifo_px_0/INV_10  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .Y(
        \imaging_0/fifo_px_0/INV_10_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_215 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 ));
    IOPAD_BI \psram_data_pad[9]/U0/U0  (.D(\psram_data_pad[9]/U0/NET1 )
        , .E(\psram_data_pad[9]/U0/NET2 ), .Y(
        \psram_data_pad[9]/U0/NET3 ), .PAD(psram_data[9]));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_231 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 ));
    DFN1 \imaging_0/clkgenerator_0/clkCameraSS  (.D(
        \imaging_0/clkgenerator_0/px_adc_sclk_i_i ), .CLK(FAB_CLK), .Q(
        \imaging_0/clkgenerator_0/px_adc_sclk_i ));
    IOPAD_TRI \psram_address_pad[5]/U0/U0  (.D(
        \psram_address_pad[5]/U0/NET1 ), .E(
        \psram_address_pad[5]/U0/NET2 ), .PAD(psram_address[5]));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITHR14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_650 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[12]  (.D(
        \imaging_0/fifo_px_1/QXI[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[12] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_5  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[5] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[5] ));
    IOPAD_TRI \SCLK_pad/U0/U0  (.D(\SCLK_pad/U0/NET1 ), .E(
        \SCLK_pad/U0/NET2 ), .PAD(SCLK));
    AND3 \imaging_0/fifo_px_0/AND3_6  (.A(
        \imaging_0/fifo_px_0/XNOR2_18_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_28_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_14_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_6_Y ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[8]  (.A(
        \psram_cr_0/data_from_cr[8] ), .B(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_267 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_230 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[10]  (.A(
        \psram_cr_0/cr_int_i0/N_166 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[10] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_3[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[11] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_3[2]  
        (.A(\imaging_0/fifo_px_0_Q[2] ), .B(\imaging_0/fifo_px_1_Q[2] )
        , .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_353 ));
    DFN1 \psram_cr_0/ahb0/data_in[6]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[6] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[16]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[16]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[16] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[24]  (.D(
        \imaging_0/fifo_px_1/QXI[24] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[24] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_177 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_5[0]  
        (.A(\imaging_0/fifo_px_1_EMPTY ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1empty_m ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[7]  (.D(
        \imaging_0/fifo_px_0/QXI[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[7] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_94  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I_RNI2VJJ[1]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] ));
    INV \imaging_0/fifo_px_0/MEMWEBUBBLE  (.A(
        \imaging_0/fifo_px_0/MEMORYWE ), .Y(
        \imaging_0/fifo_px_0/MEMWENEG ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIDGTBB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ));
    NOR2B \psram_cr_0/ahb0/hwrite_reg_RNO  (.A(\psram_cr_0/ahb0/N_168 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[26]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] ));
    AND2 \imaging_0/fifo_px_1/AND2_29  (.A(
        \imaging_0/fifo_px_1/AND2_49_Y ), .B(
        \imaging_0/fifo_px_1/AND2_74_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_29_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[28]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[28] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[28] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_512 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIO5VC[3]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIA52K3_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/N_87 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[0]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[0] ));
    AOI1 \imaging_0/adc081s101_0/bitsRead_RNO[1]  (.A(
        \imaging_0/adc081s101_0/N_76 ), .B(CS_c), .C(
        \imaging_0/adc081s101_0/bitsRead_n1_i_0 ), .Y(
        \imaging_0/adc081s101_0/N_34 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[2]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[15]  (.A(
        \psram_cr_0/cr_int_i0/N_171 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_2_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/N_99 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[20]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[20]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[20] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[13]  
        (.A(\imaging_0/fifo_px_0_Q[13] ), .B(
        \imaging_0/fifo_px_1_Q[13] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_364 ));
    DFN1 \psram_cr_0/ahb0/data_out[14]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[14]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIARGQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[24] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_653 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[11]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ));
    IOBI_IB_OB_EB \psram_data_pad[15]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[15]/U0/NET3 ), .DOUT(
        \psram_data_pad[15]/U0/NET1 ), .EOUT(
        \psram_data_pad[15]/U0/NET2 ), .Y(\psram_data_in[15] ));
    AND3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa_0_a2_3_a2  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[2] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_28 ), .C(
        \CoreAPB3_0_APBmslave0_0_PADDR[7] ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_28[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[2] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[1]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[1] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[25]  (.D(
        \imaging_0/fifo_px_1/QXI[25] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[25] ));
    AND3 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_2  (.A(
        \imaging_0/fifo_px_0/AND3_10_Y ), .B(
        \imaging_0/fifo_px_0/AND3_8_Y ), .C(
        \imaging_0/fifo_px_0/AND3_6_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_9_Y ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[1]  (.D(
        \imaging_0/fifo_px_1/QXI[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[1] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[17]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[15]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[15] ));
    BUFF \imaging_0/fifo_px_0/XOR2_16  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .Y(
        \imaging_0/fifo_px_0/XOR2_16_Y ));
    DFN1 \psram_cr_0/cr_int_i0/address[5]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[5] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_12  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[12] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[12] ));
    NOR3 \imaging_0/adc081s101_0/bitsRead_RNI2I2F[3]  (.A(
        \imaging_0/adc081s101_0/cntrWaitLeading[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitLeading[0]_net_1 ), .C(
        \imaging_0/adc081s101_0/bitsRead[3]_net_1 ), .Y(
        \imaging_0/adc081s101_0/bitsReade_0_a2_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[22]  (.A(
        \psram_cr_0/cr_int_i0/N_270 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 ));
    IOPAD_TRI \psram_address_pad[2]/U0/U0  (.D(
        \psram_address_pad[2]/U0/NET1 ), .E(
        \psram_address_pad[2]/U0/NET2 ), .PAD(psram_address[2]));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[25]  (.A(
        \psram_cr_0/ahb0/N_236 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[1]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[1] ));
    NOR3C \imaging_0/stonyman_apb3_0/bus_write_enable  (.A(TP_PSEL_c), 
        .B(TP_PENABLE_c), .C(TP_PWRITE_c), .Y(
        \imaging_0/stonyman_apb3_0/bus_write_enable_net_1 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_66_RNIPOGN2  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .B(
        \imaging_0/fifo_px_1/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_258 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[1]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .B(
        \imaging_0/fifo_px_1/AND2_37_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[1] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[4]  (.D(
        \imaging_0/fifo_px_1/QXI[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[4] ));
    NOR2B \imaging_0/fifo_px_1/AND2_21_RNI89L23  (.A(
        \imaging_0/fifo_px_1/AND2_21_Y ), .B(
        \imaging_0/fifo_px_1/AO1_25_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_0_Y ));
    NOR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7PCSE[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0II_i_m ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI00II_i_m ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitQuiet[2]  (.D(
        \imaging_0/adc081s101_0/N_26_1 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitQuiete ), .Q(
        \imaging_0/adc081s101_0/cntrWaitQuiet[2]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[6]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8ANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[6] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_9  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_186 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIL4N32[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 ), .Y(
        \psram_cr_0/ahb0/N_84 ));
    XOR2 \imaging_0/fifo_px_1/XOR2_RBINNXTSHIFT[0]  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_1/MEMORYRE ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[0] ));
    IOBI_IB_OB_EB \psram_data_pad[0]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[0] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[0]/U0/NET3 ), .DOUT(
        \psram_data_pad[0]/U0/NET1 ), .EOUT(
        \psram_data_pad[0]/U0/NET2 ), .Y(\psram_data_in[0] ));
    IOBI_IB_OB_EB \psram_data_pad[13]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[13] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[13]/U0/NET3 ), .DOUT(
        \psram_data_pad[13]/U0/NET1 ), .EOUT(
        \psram_data_pad[13]/U0/NET2 ), .Y(\psram_data_in[13] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[12]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[12] ));
    BUFF \imaging_0/fifo_px_0/XOR2_18  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .Y(
        \imaging_0/fifo_px_0/XOR2_18_Y ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIQMTK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[13] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_189 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[5] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[15]  (.A(
        \psram_address_c[15] ), .B(
        \psram_cr_0/cr_int_i0/address_5[15] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_263 ));
    AX1C \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[11]  (.A(
        \imaging_0/fifo_px_1/XOR2_78_Y ), .B(
        \imaging_0/fifo_px_1/AO1_22_Y ), .C(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[26]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[26]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[26] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[30] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[22]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[22] ));
    DFN1 \psram_cr_0/ahb0/operation[7]  (.D(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[7] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_18  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[18] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[18] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[19] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ));
    BUFF \imaging_0/fifo_px_0/AND2_65  (.A(TP_FULL_c), .Y(
        \imaging_0/fifo_px_0/AND2_65_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[9]  (.A(
        \psram_cr_0/cr_int_i0/N_165 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[9] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_184 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[17] ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNO[1]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575s ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO_0[1]  (.A(
        TP_PENABLE_c), .B(\COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIVH8K[2]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ));
    AO1 \imaging_0/fifo_px_0/AO1_18  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/INV_12_Y ), .C(
        \imaging_0/fifo_px_0/XOR2_11_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_18_Y ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[3]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_172 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[28] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_485 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 )
        );
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[20]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] ));
    DFN1 \psram_cr_0/cr_int_i0/address[0]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[0] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIEQR52_0[18]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIS9NH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[0] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_270 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ));
    AO1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNISCLL71[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ));
    IOTRI_OB_EB \psram_address_pad[0]/U0/U1  (.D(\psram_address_c[0] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[0]/U0/NET1 ), .EOUT(
        \psram_address_pad[0]/U0/NET2 ));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIATC8E[7]  
        (.A(CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[26]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_377 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[26] ));
    IOPAD_TRI \led_pad[5]/U0/U0  (.D(\led_pad[5]/U0/NET1 ), .E(
        \led_pad[5]/U0/NET2 ), .PAD(led[5]));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNII3IQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[19] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_648 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[19]  (.A(
        \psram_cr_0/cr_int_i0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ));
    AX1C \imaging_0/fifo_px_1/XOR2_RBINNXTSHIFT[3]  (.A(
        \imaging_0/fifo_px_1/XOR2_8_Y ), .B(
        \imaging_0/fifo_px_1/AO1_24_Y ), .C(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[3] ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[0]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[7]  (.A(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[24]  
        (.A(\imaging_0/fifo_px_0_Q[24] ), .B(
        \imaging_0/fifo_px_1_Q[24] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_375 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_175 ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI7J912[3]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3ll4_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[7] ));
    DFN1 \psram_cr_0/ahb0/data_out[4]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[4]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[24]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[24] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[24] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[4]/U0/U1  (.D(\psram_address_c[4] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[4]/U0/NET1 ), .EOUT(
        \psram_address_pad[4]/U0/NET2 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[14]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[14] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_225 )
        );
    IOBI_IB_OB_EB \psram_data_pad[1]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[1]/U0/NET3 ), .DOUT(
        \psram_data_pad[1]/U0/NET1 ), .EOUT(
        \psram_data_pad[1]/U0/NET2 ), .Y(\psram_data_in[1] ));
    IOPAD_TRI \psram_address_pad[22]/U0/U0  (.D(
        \psram_address_pad[22]/U0/NET1 ), .E(
        \psram_address_pad[22]/U0/NET2 ), .PAD(psram_address[22]));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        );
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[15] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(\psram_cr_0/data_to_cr[4] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_160 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_224 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[18]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[18] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[18] ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ));
    BUFF \imaging_0/fifo_px_1/XOR2_16  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .Y(
        \imaging_0/fifo_px_1/XOR2_16_Y ));
    OR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI9L8Q[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Il_0_0 ));
    IOPAD_BI \psram_data_pad[6]/U0/U0  (.D(\psram_data_pad[6]/U0/NET1 )
        , .E(\psram_data_pad[6]/U0/NET2 ), .Y(
        \psram_data_pad[6]/U0/NET3 ), .PAD(psram_data[6]));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[6]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[1]  (.A(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] ));
    NOR2B \psram_cr_0/ahb0/fsm_RNO  (.A(\psram_cr_0/ahb0/fsm_0_sqmuxa )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/fsm_0_sqmuxa_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_45  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[5] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_24  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[24] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[24] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[31]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[31] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_196 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ));
    AND2 \imaging_0/fifo_px_1/AND2_58  (.A(
        \imaging_0/fifo_px_1/XOR2_15_Y ), .B(
        \imaging_0/fifo_px_1/XOR2_89_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_58_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_85  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[14]  (.A(
        \psram_address_c[14] ), .B(
        \psram_cr_0/cr_int_i0/address_5[14] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_262 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[1]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[1] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[1] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_485 ));
    OR2A 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[2] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_28 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_1_i_i_o2_0_0_net_1 )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[6]  (.A(
        \psram_cr_0/cr_int_i0/N_162 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[14]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_498 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[14]_net_1 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_72  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[2]  (.A(
        \psram_address_c[2] ), .B(\psram_cr_0/cr_int_i0/address_5[2] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_250 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_79  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNIBHG3[1]  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 )
        , .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_49 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_256 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_246 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[9]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[9] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[5]  (.A(
        \psram_cr_0/ahb0/data_out[5]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[5] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO_2[12]  (.A(
        \psram_cr_0/ahb0/data_in_m[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .C(
        \psram_cr_0/ahb0/psram_addr_m[12] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[12] ));
    NOR2B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[2]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_387 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI0R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[0]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .B(
        \imaging_0/fifo_px_1/MEMORYWE ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[0] ));
    AO1A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_72 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_1 ), .C(
        \psram_cr_0/cr_int_i0/N_95 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[19]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[19]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[19] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_490 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(\psram_cr_0/reg_addr[6] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_162 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[22] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIT2UK1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[16] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_195 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[0]  
        (.A(CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_1[0] )
        );
    IOTRI_OB_EB \TP_PENABLE_pad/U0/U1  (.D(TP_PENABLE_c), .E(PLLEN_VCC)
        , .DOUT(\TP_PENABLE_pad/U0/NET1 ), .EOUT(
        \TP_PENABLE_pad/U0/NET2 ));
    NOR2B \psram_cr_0/cr_int_i0/start_0_0  (.A(\psram_cr_0/dt_req ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/start_0_0 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPSEJ[14]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_8 ));
    OR2B \psram_cr_0/ahb0/dt_req_RNIPGR1  (.A(\psram_cr_0/dt_ack ), .B(
        \psram_cr_0/dt_req ), .Y(\psram_cr_0/ahb0/N_4 ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_519 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRden_0__RNO_net_1 )
        );
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[26]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[26] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[26] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_510 ));
    NOR2A 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_3_e[2]  
        (.A(\CoreAPB3_0_APBmslave0_0_PADDR[5] ), .B(
        \CoreAPB3_0_APBmslave0_0_PADDR[6] ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_635 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[2]  (.A(\psram_cr_0/ahb0/N_245 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_DVLDI  (.D(
        \imaging_0/fifo_px_0/AND2A_0_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_0/DVLDI ));
    DFN1 \psram_cr_0/ahb0/operation[29]  (.D(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[29]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 ));
    IOPAD_IN \CLK50_pad/U0/U0  (.PAD(CLK50), .Y(\CLK50_pad/U0/NET1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I_RNI1VJJ[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIUH8K[1]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ));
    AND2 \imaging_0/fifo_px_0/AND2_74  (.A(
        \imaging_0/fifo_px_0/XOR2_40_Y ), .B(
        \imaging_0/fifo_px_0/XOR2_94_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_74_Y ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_26  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[4] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_26_Y ));
    DFN1 \psram_cr_0/ahb0/psram_addr[5]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[5] ));
    DFN1 \psram_cr_0/ahb0/data_out[11]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[11]_net_1 ));
    DFN1 \psram_cr_0/ahb0/busy  (.D(\psram_cr_0/ahb0/N_24 ), .CLK(
        FAB_CLK), .Q(\psram_cr_0/ahb0/busy_net_1 ));
    INV \imaging_0/fifo_px_0/MEMREBUBBLE  (.A(
        \imaging_0/fifo_px_0/MEMORYRE ), .Y(
        \imaging_0/fifo_px_0/MEMRENEG ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[18] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[25]  (.A(
        \psram_cr_0/ahb0/N_204 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ));
    DFN1P0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        , .CLK(FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        );
    INV \imaging_0/fifo_px_1/INV_0  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .Y(
        \imaging_0/fifo_px_1/INV_0_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[4]  (.A(
        \psram_cr_0/cr_int_i0/N_160 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[4] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(\psram_cr_0/reg_addr[10] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_166 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[15]  (.A(
        \psram_cr_0/data_from_cr[15] ), .B(\psram_data_in[15] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_246 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[23]  
        (.A(\imaging_0/fifo_px_0_Q[23] ), .B(
        \imaging_0/fifo_px_1_Q[23] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_374 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_221 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[13]  (.A(
        \psram_address_c[13] ), .B(
        \psram_cr_0/cr_int_i0/address_5[13] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_261 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[5]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[5] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[5] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_489 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/operation_m[6] ), .B(
        \psram_cr_0/ahb0/data_out_m[6] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[6] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[10]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .B(
        \imaging_0/fifo_px_0/AO1_22_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[10] ));
    AND2 \imaging_0/fifo_px_0/AND2_90  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_0/INV_6_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_90_Y ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_RBINNXTSHIFT[2]  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .B(
        \imaging_0/fifo_px_1/AO1_24_Y ), .Y(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[2] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[10]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] ));
    DFN1 \psram_cr_0/cr_int_i0/ac_counter_lb1  (.D(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ));
    AX1C \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[3]  (.A(
        \imaging_0/fifo_px_1/XOR2_18_Y ), .B(
        \imaging_0/fifo_px_1/AO1_1_Y ), .C(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_18  (.A(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_18_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_218 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 ));
    OR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNI3P7751  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[8]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[8] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[8] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_44  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET ));
    OR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_162 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_163 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[5]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[5] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[26]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[26] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(\psram_cr_0/reg_addr[15] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_171 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_206 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_84  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_53  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[6]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .B(
        \imaging_0/fifo_px_0/AO1_15_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[6] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[20] ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[30]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[30] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[22] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[14] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[6] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_DVLDI  (.D(
        \imaging_0/fifo_px_1/AND2A_0_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_1/DVLDI ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_191 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[6]  (.D(
        \imaging_0/fifo_px_0/QXI[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[6] ));
    IOPAD_TRI \led_pad[6]/U0/U0  (.D(\led_pad[6]/U0/NET1 ), .E(
        \led_pad[6]/U0/NET2 ), .PAD(led[6]));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_172 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[9]  (.A(
        \psram_address_c[9] ), .B(\psram_cr_0/cr_int_i0/address_5[9] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_257 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[29]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[29]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[29] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_71  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET ));
    DFN1 \psram_cr_0/cr_int_i0/address[13]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[13] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[2]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[1] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_30[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[19]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[19] ));
    IOPAD_TRI \led_pad[3]/U0/U0  (.D(\led_pad[3]/U0/NET1 ), .E(
        \led_pad[3]/U0/NET2 ), .PAD(led[3]));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[11]  (.D(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[7]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[7] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[7] ));
    IOTRI_OB_EB \psram_address_pad[21]/U0/U1  (.D(
        \psram_address_c[21] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[21]/U0/NET1 ), .EOUT(
        \psram_address_pad[21]/U0/NET2 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIRCV9[4]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIM0FF6[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_63  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    IOPAD_TRI \CS_pad/U0/U0  (.D(\CS_pad/U0/NET1 ), .E(
        \CS_pad/U0/NET2 ), .PAD(CS));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNI4MIN3[9]  (.A(
        \psram_cr_0/ahb0/N_97 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 ), .C(
        \psram_cr_0/ahb0/N_84 ), .Y(\psram_cr_0/ahb0/N_57 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[11]  (.A(
        \psram_address_c[11] ), .B(
        \psram_cr_0/cr_int_i0/address_5[11] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_259 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_RNI8BOQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ));
    NOR3C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIPUMC41  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.un1_CAHBLTI1OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_0 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNI8PD41[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 ));
    DFN1E1 \imaging_0/adc081s101_0/cntrWaitTrailing[0]  (.D(
        \imaging_0/adc081s101_0/N_136 ), .CLK(SCLK_c), .E(
        \imaging_0/adc081s101_0/cntrWaitTrailinge ), .Q(
        \imaging_0/adc081s101_0/cntrWaitTrailing[0]_net_1 ));
    OA1 \imaging_0/adc081s101_0/cntrWaitQuiet_RNO_0[2]  (.A(
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitQuiet[1]_net_1 ), .C(
        \imaging_0/adc081s101_0/cntrWaitQuiet[2]_net_1 ), .Y(
        \imaging_0/adc081s101_0/cntrWaitQuiet_n2_i_a2_0 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_240 ));
    BUFF \imaging_0/fifo_px_1/XOR2_8  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .Y(
        \imaging_0/fifo_px_1/XOR2_8_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI0I8K[3]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ));
    DFN1 \psram_cr_0/ahb0/operation[30]  (.D(
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[30]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[12]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[12] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_223 )
        );
    IOPAD_TRI \psram_address_pad[0]/U0/U0  (.D(
        \psram_address_pad[0]/U0/NET1 ), .E(
        \psram_address_pad[0]/U0/NET2 ), .PAD(psram_address[0]));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_4  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[24]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_508 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[24]_net_1 )
        );
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_29[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[1] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3[9]  (.A(
        \psram_cr_0/ahb0/N_95 ), .B(\psram_cr_0/ahb0/N_97 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ));
    DFN1 \psram_cr_0/cr_int_i0/address[17]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[17] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_4[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        );
    DFN1 \psram_cr_0/ahb0/haddr_reg[3]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_8  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[14]  (.D(
        \psram_cr_0/cr_int_i0/N_48 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[14] ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[5]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[5] ));
    DFN1 \psram_cr_0/ahb0/operation[16]  (.D(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_rw ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave6_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ));
    OA1 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO[0]  (.A(
        \COREAHBTOAPB3_0/N_172 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Il_0_0 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns_0_a3_0[0] ), 
        .Y(\COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[7]  (.A(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_176 ));
    AO1 \imaging_0/fifo_px_1/AO1_6  (.A(
        \imaging_0/fifo_px_1/XOR2_57_Y ), .B(
        \imaging_0/fifo_px_1/AND2_38_Y ), .C(
        \imaging_0/fifo_px_1/AND2_89_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_6_Y ));
    XOR2 \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[8]  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .B(
        \imaging_0/fifo_px_0/AO1_10_Y ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI29UQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[12] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_187 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] ));
    IOPAD_TRI \psram_address_pad[4]/U0/U0  (.D(
        \psram_address_pad[4]/U0/NET1 ), .E(
        \psram_address_pad[4]/U0/NET2 ), .PAD(psram_address[4]));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_248 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_8  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_8_Y ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[25]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[25] ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 ));
    XOR3 \imaging_0/fifo_px_0/XOR2_WDIFF[9]  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/INV_7_Y ), .C(
        \imaging_0/fifo_px_0/AO1_16_Y ), .Y(
        \imaging_0/fifo_px_0/WDIFF[9] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[20] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[1]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[1] ));
    IOTRI_OB_EB \psram_address_pad[10]/U0/U1  (.D(
        \psram_address_c[10] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[10]/U0/NET1 ), .EOUT(
        \psram_address_pad[10]/U0/NET2 ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIPGTT[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[12]  (.A(
        \psram_address_c[12] ), .B(
        \psram_cr_0/cr_int_i0/address_5[12] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_260 ));
    IOPAD_TRI \TP_PENABLE_pad/U0/U0  (.D(\TP_PENABLE_pad/U0/NET1 ), .E(
        \TP_PENABLE_pad/U0/NET2 ), .PAD(TP_PENABLE));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[21]  (.A(
        \psram_cr_0/cr_int_i0/N_269 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[11]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[11] ));
    NOR3C \imaging_0/fifo_px_0/AO1_37  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .B(
        \imaging_0/fifo_px_0/XOR2_18_Y ), .C(
        \imaging_0/fifo_px_0/AO1_1_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_37_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[9]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[9] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_220 )
        );
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[30]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[30]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[30] ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[31]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[31] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[23] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[15] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[7] ));
    AND3 \imaging_0/fifo_px_0/AND3_2  (.A(
        \imaging_0/fifo_px_0/XNOR2_24_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_1_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_8_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_2_Y ));
    NOR2B \psram_cr_0/ahb0/hready_reg_RNI983D2  (.A(
        \psram_cr_0/ahb0/hwrite_reg4_1 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_2 ));
    AND2 \imaging_0/fifo_px_0/DFN1C0_RBINSYNCSHIFT[2]_RNI85EK  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/MEMORYRE ), .Y(
        \imaging_0/fifo_px_0/AND2_87_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_209 ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIR8LL71[0]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_a3_0[1] ), 
        .B(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIR9R14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_649 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[3]  (.D(
        \imaging_0/fifo_px_0/QXI[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[3] ));
    MX2 \psram_cr_0/cr_int_i0/noe0_RNO_0  (.A(psram_noe0_c), .B(
        \psram_cr_0/cr_int_i0/noe0_5 ), .S(
        \psram_cr_0/cr_int_i0/N_347 ), .Y(\psram_cr_0/cr_int_i0/N_229 )
        );
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[1]  (.A(
        \psram_cr_0/data_from_cr[1] ), .B(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_260 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNICTRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[6] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[13]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7HF6A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        CoreAHBLite_0_AHBmslave5_HWRITE));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[12]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[12] ), .B(
        \imaging_0/fifo_px_1/AO1_23_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[12] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNICL9T[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \psram_cr_0/ahb0/fsm_net_1 ), .C(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter_lb1  (.D(
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[11]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[11] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[14]  (.A(
        \psram_cr_0/ahb0/data_out[14]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[14] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_257 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 ));
    XOR2 \imaging_0/adc081s101_0/un1_cntrWaitLeading_I_7  (.A(
        \imaging_0/adc081s101_0/cntrWaitLeading[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/N_58 ), .Y(
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_partial_sum[1] ));
    IOPAD_TRI \psram_address_pad[10]/U0/U0  (.D(
        \psram_address_pad[10]/U0/NET1 ), .E(
        \psram_address_pad[10]/U0/NET2 ), .PAD(psram_address[10]));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIAAR52[16]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[5] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[2]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[2] ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI12S14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_652 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8TRB1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[2] ), .B(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_167 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[6]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[28] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[31]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[31] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[31] ));
    RAM4K9 \imaging_0/fifo_px_1/RAM4K9_QXI[29]  (.ADDRA11(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_1/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_1/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_1/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_1/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_1/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_1/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_1/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_1/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_1/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_1/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_1/QXI[29] ), .DOUTB2(
        \imaging_0/fifo_px_1/QXI[21] ), .DOUTB1(
        \imaging_0/fifo_px_1/QXI[13] ), .DOUTB0(
        \imaging_0/fifo_px_1/QXI[5] ));
    NOR2A \psram_cr_0/ahb0/fsm_RNI2PC2Q  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(\psram_cr_0/ahb0/fsm_net_1 )
        , .Y(\psram_cr_0/ahb0/fsm_0_sqmuxa ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_RBINSYNCSHIFT[10]  (.D(
        \imaging_0/fifo_px_1/RBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[10] ));
    INV \imaging_0/fifo_px_1/INV_1  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[4] ), .Y(
        \imaging_0/fifo_px_1/INV_1_Y ));
    XOR2 \imaging_0/fifo_px_1/XOR2_WBINNXTSHIFT[2]  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[2] ), .B(
        \imaging_0/fifo_px_1/AO1_1_Y ), .Y(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[2] ));
    AND2 \imaging_0/fifo_px_1/AND2_37  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[0] ), .B(
        \imaging_0/fifo_px_1/MEMORYWE ), .Y(
        \imaging_0/fifo_px_1/AND2_37_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(\psram_data_in[11] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_242 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_61 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_219 ));
    NOR3C \psram_cr_0/cr_int_i0/dt_ack_RNO  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_22 ));
    XO1 \imaging_0/adc081s101_0/cntrWaitLeading_RNO[1]  (.A(
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_partial_sum[1] ), .B(
        \imaging_0/adc081s101_0/DWACT_ADD_CI_0_TMP[0] ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/cntrWaitLeading_6[1] ));
    IOPAD_TRI \TP_PSEL_pad/U0/U0  (.D(\TP_PSEL_pad/U0/NET1 ), .E(
        \TP_PSEL_pad/U0/NET2 ), .PAD(TP_PSEL));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[4] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[2]  (.A(
        \psram_cr_0/ahb0/data_out[2]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[6]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[22] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_270 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[19]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_370 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[19] ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[22]  (.D(
        \imaging_0/fifo_px_1/QXI[22] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[22] ));
    DFN1 \psram_cr_0/ahb0/operation[9]  (.D(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[9] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[18]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[18] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[0]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] ));
    IOTRI_OB_EB \psram_address_pad[14]/U0/U1  (.D(
        \psram_address_c[14] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[14]/U0/NET1 ), .EOUT(
        \psram_address_pad[14]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_203 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[1]  (.A(
        \psram_address_c[1] ), .B(\psram_cr_0/cr_int_i0/address_5[1] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_249 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[0] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ));
    INV \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNI3S49[7]  (.A(
        \CoreAPB3_0_APBmslave0_0_PADDR[7] ), .Y(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[7] ));
    DFN1 \psram_cr_0/cr_int_i0/address[20]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[20] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[15] ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_97 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[9]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[9] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[9] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_23[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[7] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE1  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN5(), .PIN2INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .PIN3INT(), 
        .PIN4INT(), .PIN1INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT )
        , .PIN5INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[5]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[2]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[2] ));
    AX1C 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNO_0[1]  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        , .B(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[1]_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_575 ));
    AND3 \imaging_0/fifo_px_1/AND3_3  (.A(
        \imaging_0/fifo_px_1/XNOR2_19_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_10_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_3_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_3_Y ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_104 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 )
        );
    IOPAD_TRI \psram_address_pad[14]/U0/U0  (.D(
        \psram_address_pad[14]/U0/NET1 ), .E(
        \psram_address_pad[14]/U0/NET2 ), .PAD(psram_address[14]));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_14[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[22] ));
    DFN1 \psram_cr_0/cr_int_i0/address[9]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[9] ));
    NOR3 \imaging_0/adc081s101_0/cntrWaitQuiet_RNIFGEG[2]  (.A(
        \imaging_0/adc081s101_0/cntrWaitQuiet[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitQuiet[1]_net_1 ), .C(
        \imaging_0/adc081s101_0/cntrWaitQuiet[2]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_76 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 ));
    AND2 \imaging_0/fifo_px_1/AND2_90  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ), .B(
        \imaging_0/fifo_px_1/INV_6_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_90_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_58  (.PIN4(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ), .PIN6(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .PIN2(), .PIN3()
        , .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET ), 
        .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_OVERFLOW  (.D(
        \imaging_0/fifo_px_1/AND2_65_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\imaging_0/fifo_px_1_OVERFLOW ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[4]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[4] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_180 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_272 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIT870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_9  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[9] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[9] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        );
    BUFF \imaging_0/fifo_px_1/XOR2_0  (.A(
        \imaging_0/fifo_px_1/MEM_WADDR[6] ), .Y(
        \imaging_0/fifo_px_1/XOR2_0_Y ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        );
    MSS_CCC_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE0  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN2INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), 
        .PIN3INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[10]  
        (.A(\imaging_0/fifo_px_0_Q[10] ), .B(
        \imaging_0/fifo_px_1_Q[10] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_361 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHMSF1[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[1]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ));
    DFN1P0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 ), .CLK(FAB_CLK), 
        .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        CoreAHBLite_0_AHBmslave6_HREADY));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_68  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET ));
    OR3 \imaging_0/fifo_px_0/DFN1C0_AFULL_RNO  (.A(
        \imaging_0/fifo_px_0/WDIFF[9] ), .B(
        \imaging_0/fifo_px_0/G_11_0_o3_1 ), .C(TP_FULL_c), .Y(
        \imaging_0/fifo_px_0/OR2_0_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNIJSHG[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/N_161 ));
    IOBI_IB_OB_EB \psram_data_pad[11]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[11]/U0/NET3 ), .DOUT(
        \psram_data_pad[11]/U0/NET1 ), .EOUT(
        \psram_data_pad[11]/U0/NET2 ), .Y(\psram_data_in[11] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_22  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[3] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[3] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_22_Y ));
    DFN1 \psram_cr_0/cr_int_i0/address[1]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[1] ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] ));
    DFN1 \psram_cr_0/ahb0/operation[15]  (.D(
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[15] ));
    AO1 \imaging_0/fifo_px_0/AO1_17  (.A(
        \imaging_0/fifo_px_0/XOR2_94_Y ), .B(
        \imaging_0/fifo_px_0/AND2_18_Y ), .C(
        \imaging_0/fifo_px_0/AND2_88_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_17_Y ));
    IOPAD_TRI \TP_FULL_pad/U0/U0  (.D(\TP_FULL_pad/U0/NET1 ), .E(
        \TP_FULL_pad/U0/NET2 ), .PAD(TP_FULL));
    IOTRI_OB_EB \TP_PSEL_pad/U0/U1  (.D(TP_PSEL_c), .E(PLLEN_VCC), 
        .DOUT(\TP_PSEL_pad/U0/NET1 ), .EOUT(\TP_PSEL_pad/U0/NET2 ));
    DFN1E1C0 \imaging_0/fifo_px_1/DFN1E1C0_Q[0]  (.D(
        \imaging_0/fifo_px_1/QXI[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_1/DVLDI ), .Q(
        \imaging_0/fifo_px_1_Q[0] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_234 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2RFQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[20] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_649 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_250 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[27] ));
    IOPAD_BI \psram_data_pad[3]/U0/U0  (.D(\psram_data_pad[3]/U0/NET1 )
        , .E(\psram_data_pad[3]/U0/NET2 ), .Y(
        \psram_data_pad[3]/U0/NET3 ), .PAD(psram_data[3]));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[24]  (.A(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_203 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[9] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[6]  (.A(
        \psram_address_c[6] ), .B(\psram_cr_0/cr_int_i0/address_5[6] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_254 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] ));
    AND2 \imaging_0/fifo_px_1/AND2_92  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[5] ), .B(
        \imaging_0/fifo_px_1/INV_0_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_92_Y ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[9]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_237 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_190 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ));
    AO1 \psram_cr_0/ahb0/dt_req_RNO  (.A(\psram_cr_0/ahb0/operation5 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\psram_cr_0/ahb0/N_65 ), .Y(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ));
    IOTRI_OB_EB \psram_address_pad[7]/U0/U1  (.D(\psram_address_c[7] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[7]/U0/NET1 ), .EOUT(
        \psram_address_pad[7]/U0/NET2 ));
    IOTRI_OB_EB \led_pad[1]/U0/U1  (.D(
        \CoreAPB3_0_APBmslave0_0_PADDR_i[5] ), .E(PLLEN_VCC), .DOUT(
        \led_pad[1]/U0/NET1 ), .EOUT(\led_pad[1]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_199 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_9[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[27] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[12]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[12] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI1AOS2  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        COREAHBTOAPB3_0_APBmaster_PSELx));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[7] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l_RNIK3GP[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 )
        , .Y(\CoreAHBLite_0_AHBmslave6_HWDATA[0] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_11[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[25] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[24]  (.A(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_61 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[6]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[6] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[6] ));
    OR3 \psram_cr_0/cr_int_i0/nwe_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/N_71 ), .B(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ), .C(
        \psram_cr_0/cr_int_i0/N_78 ), .Y(\psram_cr_0/cr_int_i0/nwe_5 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[14] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[10]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PADDR[10] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIIRHQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[28] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_657 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_27[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[3] ));
    DFN1 \psram_cr_0/cr_int_i0/start_1  (.D(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_1_net_1 ));
    DFN1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout[4]  (.D(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 )
        , .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[4] ));
    IOTRI_OB_EB \led_pad[7]/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\led_pad[7]/U0/NET1 ), .EOUT(\led_pad[7]/U0/NET2 ));
    XA1 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState_RNO[0]  
        (.A(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/fifoRdenState[0]_net_1 )
        , .B(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_622 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_574s ));
    DFN1 \psram_cr_0/ahb0/data_in[11]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[11] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[12]  (.D(
        \psram_cr_0/cr_int_i0/N_44 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[12] ));
    AOI1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_0  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIDSHR2[2]_net_1 )
        , .B(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_177 ));
    NOR3B \psram_cr_0/cr_int_i0/enable_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_98 ));
    AO1 \imaging_0/fifo_px_0/AO1_52  (.A(
        \imaging_0/fifo_px_0/XOR2_15_Y ), .B(
        \imaging_0/fifo_px_0/AO1_16_Y ), .C(
        \imaging_0/fifo_px_0/AND2_41_Y ), .Y(
        \imaging_0/fifo_px_0/AO1_52_Y ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_25  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[25] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[25] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEFTP[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_9_5 ));
    IOIN_IB \CLK50_pad/U0/U1  (.YIN(\CLK50_pad/U0/NET1 ), .Y(CLK50_c));
    MX2 \psram_cr_0/cr_int_i0/nbyte_en_1_RNO_0[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ), .B(psram_ncs0_c_c_c), 
        .S(\psram_cr_0/cr_int_i0/N_77 ), .Y(
        \psram_cr_0/cr_int_i0/N_230 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[29]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] ));
    AO1 \imaging_0/fifo_px_1/AO1_16  (.A(
        \imaging_0/fifo_px_1/AND2_29_Y ), .B(
        \imaging_0/fifo_px_1/AO1_47_Y ), .C(
        \imaging_0/fifo_px_1/AO1_2_Y ), .Y(
        \imaging_0/fifo_px_1/AO1_16_Y ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[7]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[7] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[7] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_491 ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI4HUQ2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[13] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_189 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] ));
    XOR2 \imaging_0/fifo_px_1/XOR2_45  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[6] ), .B(
        \imaging_0/fifo_px_1/INV_8_Y ), .Y(
        \imaging_0/fifo_px_1/XOR2_45_Y ));
    XOR2 \imaging_0/fifo_px_0/XOR2_15  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/INV_7_Y ), .Y(
        \imaging_0/fifo_px_0/XOR2_15_Y ));
    DFN1 \psram_cr_0/cr_int_i0/address[12]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[12] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_274 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_0 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114_0_o2_0 ), 
        .Y(N_91));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[17]  
        (.A(\imaging_0/fifo_px_0_Q[17] ), .B(
        \imaging_0/fifo_px_1_Q[17] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_368 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_271 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_207 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_273 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ));
    INV \imaging_0/fifo_px_0/INV_8  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .Y(
        \imaging_0/fifo_px_0/INV_8_Y ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIl0I_14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[4]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_222 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_42 ));
    OR3A \psram_cr_0/ahb0/hrdata_reg_RNO_2[6]  (.A(
        \psram_cr_0/ahb0/N_111 ), .B(\psram_cr_0/ahb0/data_in_m[6] ), 
        .C(\psram_cr_0/ahb0/psram_addr_m[6] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_2[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_30  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[30] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[30] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[16]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIEQR52[18]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[15] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[5]  (.D(
        \psram_cr_0/cr_int_i0/N_30 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[5] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_192 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[14]  (.A(
        \psram_cr_0/cr_int_i0/N_170 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[14] ));
    OR2B \imaging_0/adc081s101_0/bitsRead_RNIDGT8[1]  (.A(
        \imaging_0/adc081s101_0/bitsRead[1]_net_1 ), .B(
        \imaging_0/adc081s101_0/bitsRead[0]_net_1 ), .Y(
        \imaging_0/adc081s101_0/N_42 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[17]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[17] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[17] ));
    AO1 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_4[3]  
        (.A(\imaging_0/fifo_px_0_OVERFLOW ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_0_sqmuxa_4 ), 
        .C(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/cam1overflow_m )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_322 ));
    NOR3A \imaging_0/adc081s101_0/cs_RNO_1  (.A(
        \imaging_0/adc081s101_0/N_103 ), .B(
        \imaging_0/adc081s101_0/N_41 ), .C(CS_c), .Y(
        \imaging_0/adc081s101_0/cs16 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ));
    NOR2B \psram_cr_0/ahb0/data_in_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_18[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[18] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[29] ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[2]  (.D(
        \imaging_0/fifo_px_0/QXI[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[2] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_194 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_245 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNILCEJ[12]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 ));
    IOTRI_OB_EB \psram_noe1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_noe1_pad/U0/NET1 ), .EOUT(
        \psram_noe1_pad/U0/NET2 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[14]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[14] ));
    AO1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAANH2[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[7] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_177 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI6I8K[9]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_218 ));
    AND3 \imaging_0/fifo_px_1/DFN1P0_EMPTY_RNO_4  (.A(
        \imaging_0/fifo_px_1/XNOR2_23_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_25_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_21_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_10_Y ));
    DFN1P0 \imaging_0/fifo_px_0/DFN1P0_EMPTY  (.D(
        \imaging_0/fifo_px_0/EMPTYINT ), .CLK(SCLK_c), .PRE(
        MSS_CORE2_0_M2F_RESET_N), .Q(TP_EMPTY_c));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_187 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_8[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[28] ));
    XA1 \imaging_0/fifo_px_1/AND2_FULLINT  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[12] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[12] ), .C(
        \imaging_0/fifo_px_1/AND2_25_Y ), .Y(
        \imaging_0/fifo_px_1/FULLINT ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_5[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[0] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITTBQ1[1]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[1]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[1] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] ));
    OAI1 \psram_cr_0/cr_int_i0/enable_RNIEAE8  (.A(
        \psram_cr_0/cr_int_i0/N_71 ), .B(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ), .C(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_0_sqmuxa_i_0 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[13] ));
    AX1C \imaging_0/fifo_px_0/XOR2_WBINNXTSHIFT[11]  (.A(
        \imaging_0/fifo_px_0/XOR2_78_Y ), .B(
        \imaging_0/fifo_px_0/AO1_22_Y ), .C(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .Y(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[11] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 ));
    OA1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIQ1H1B  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 ), 
        .Y(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0));
    OR2B \psram_cr_0/cr_int_i0/ac_counter_RNILLIU[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_69 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[5]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_356 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[5] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[6]  (.A(
        \psram_cr_0/ahb0/data_out[6]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_out_m[6] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[10]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[10] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[27]  (.A(
        \psram_cr_0/ahb0/max_addr[27] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[27] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[27] ));
    AND2 \imaging_0/fifo_px_0/AND2_18  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] ), .B(
        \imaging_0/fifo_px_0/INV_9_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_18_Y ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[19]  (.A(
        \psram_address_c[19] ), .B(
        \psram_cr_0/cr_int_i0/address_5[19] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_267 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_64 ), .B(\psram_cr_0/ahb0/N_63 ), .C(
        \psram_cr_0/ahb0/N_62 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[31] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_29  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[29] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[29] ));
    XNOR2 \imaging_0/fifo_px_1/XNOR2_19  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[8] ), .B(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[8] ), .Y(
        \imaging_0/fifo_px_1/XNOR2_19_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[1]  (.A(
        \psram_cr_0/data_from_cr[1] ), .B(\psram_data_in[1] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_232 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[5]  (.A(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[5] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_174 ));
    IOPAD_TRI \psram_address_pad[21]/U0/U0  (.D(
        \psram_address_pad[21]/U0/NET1 ), .E(
        \psram_address_pad[21]/U0/NET2 ), .PAD(psram_address[21]));
    IOBI_IB_OB_EB \psram_data_pad[5]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[5] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[5]/U0/NET3 ), .DOUT(
        \psram_data_pad[5]/U0/NET1 ), .EOUT(
        \psram_data_pad[5]/U0/NET2 ), .Y(\psram_data_in[5] ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_1  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[1] ));
    AND2 \imaging_0/fifo_px_1/AND2_41  (.A(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/INV_7_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_41_Y ));
    AND2 \imaging_0/fifo_px_0/AND2_41  (.A(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[9] ), .B(
        \imaging_0/fifo_px_0/INV_7_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_41_Y ));
    DFN1 \psram_cr_0/ahb0/data_in[12]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[12] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_210 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[12]  
        (.A(\imaging_0/fifo_px_0_Q[12] ), .B(
        \imaging_0/fifo_px_1_Q[12] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_363 ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[27]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[27] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[19] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[11] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[3] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_75  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[24]  (.A(
        \psram_cr_0/cr_int_i0/N_272 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ));
    DFN1E1C0 \imaging_0/fifo_px_0/DFN1E1C0_Q[18]  (.D(
        \imaging_0/fifo_px_0/QXI[18] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\imaging_0/fifo_px_0/DVLDI ), .Q(
        \imaging_0/fifo_px_0_Q[18] ));
    OR2A \psram_cr_0/cr_int_i0/nbyte_en_1_RNO_1[0]  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI92T14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_656 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(TP_PENABLE_c));
    IOTRI_OB_EB \TP_WREN_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\TP_WREN_pad/U0/NET1 ), .EOUT(\TP_WREN_pad/U0/NET2 ));
    NOR2B \imaging_0/fifo_px_0/AND2_84  (.A(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .B(
        \imaging_0/fifo_px_0/XOR2_80_Y ), .Y(
        \imaging_0/fifo_px_0/AND2_84_Y ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_20  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[20] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[20] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[21]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[21] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[19]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[19] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[19] ), 
        .S(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_503 ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[1]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[11] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[3]  (.D(
        \psram_cr_0/cr_int_i0/N_65 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        );
    IOPAD_TRI \TP_RDEN_pad/U0/U0  (.D(\TP_RDEN_pad/U0/NET1 ), .E(
        \TP_RDEN_pad/U0/NET2 ), .PAD(TP_RDEN));
    AND2 \imaging_0/fifo_px_1/AND2_86  (.A(
        \imaging_0/fifo_px_1/XOR2_6_Y ), .B(
        \imaging_0/fifo_px_1/XOR2_57_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_86_Y ));
    NOR2B \imaging_0/fifo_px_1/AND2_79  (.A(
        \imaging_0/fifo_px_1/RBINSYNCSHIFT[9] ), .B(
        \imaging_0/fifo_px_1/XOR2_68_Y ), .Y(
        \imaging_0/fifo_px_1/AND2_79_Y ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9AT14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_647 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] ));
    OR2B \psram_cr_0/cr_int_i0/enable_RNIJA44  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_72 ));
    AX1E \psram_cr_0/cr_int_i0/op_counter_RNO_0[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_n2_i_0 ));
    AND3 \imaging_0/fifo_px_1/AND3_6  (.A(
        \imaging_0/fifo_px_1/XNOR2_18_Y ), .B(
        \imaging_0/fifo_px_1/XNOR2_28_Y ), .C(
        \imaging_0/fifo_px_1/XNOR2_14_Y ), .Y(
        \imaging_0/fifo_px_1/AND3_6_Y ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_253 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIM7MK[12]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 ));
    DFN1 \psram_cr_0/ahb0/operation[18]  (.D(
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[18]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6BGQ1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[22] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] ), .S(N_91), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_651 ));
    DFN1 \psram_cr_0/ahb0/operation[26]  (.D(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[26]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[10]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] ));
    DFN1C0 \imaging_0/fifo_px_1/DFN1C0_MEM_WADDR[11]  (.D(
        \imaging_0/fifo_px_1/WBINNXTSHIFT[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_1/MEM_WADDR[11] ));
    AND3 \imaging_0/fifo_px_0/DFN1P0_EMPTY_RNO_4  (.A(
        \imaging_0/fifo_px_0/XNOR2_23_Y ), .B(
        \imaging_0/fifo_px_0/XNOR2_25_Y ), .C(
        \imaging_0/fifo_px_0/XNOR2_21_Y ), .Y(
        \imaging_0/fifo_px_0/AND3_10_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[6]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_217 )
        );
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIJ5VC[2]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_0 ));
    NOR2B \CoreAPB3_0/CAPB3llOI/PRDATA_17  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[17] ), .B(TP_PSEL_c), .Y(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[17] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIS870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[2] ));
    RAM4K9 \imaging_0/fifo_px_0/RAM4K9_QXI[28]  (.ADDRA11(
        \imaging_0/fifo_px_0/MEM_WADDR[11] ), .ADDRA10(
        \imaging_0/fifo_px_0/MEM_WADDR[10] ), .ADDRA9(
        \imaging_0/fifo_px_0/MEM_WADDR[9] ), .ADDRA8(
        \imaging_0/fifo_px_0/MEM_WADDR[8] ), .ADDRA7(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ), .ADDRA6(
        \imaging_0/fifo_px_0/MEM_WADDR[6] ), .ADDRA5(
        \imaging_0/fifo_px_0/MEM_WADDR[5] ), .ADDRA4(
        \imaging_0/fifo_px_0/MEM_WADDR[4] ), .ADDRA3(
        \imaging_0/fifo_px_0/MEM_WADDR[3] ), .ADDRA2(
        \imaging_0/fifo_px_0/MEM_WADDR[2] ), .ADDRA1(
        \imaging_0/fifo_px_0/MEM_WADDR[1] ), .ADDRA0(
        \imaging_0/fifo_px_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), 
        .ADDRB10(AFLSDF_GND), .ADDRB9(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[11] ), .ADDRB8(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[10] ), .ADDRB7(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[9] ), .ADDRB6(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .ADDRB5(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[7] ), .ADDRB4(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[6] ), .ADDRB3(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[5] ), .ADDRB2(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[4] ), .ADDRB1(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[3] ), .ADDRB0(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .DINA8(GLMUXINT_GND), 
        .DINA7(GLMUXINT_GND), .DINA6(GLMUXINT_GND), .DINA5(
        GLMUXINT_GND), .DINA4(GLMUXINT_GND), .DINA3(GLMUXINT_GND), 
        .DINA2(GLMUXINT_GND), .DINA1(GLMUXINT_GND), .DINA0(
        GLMUXINT_GND), .DINB8(GLMUXINT_GND), .DINB7(GLMUXINT_GND), 
        .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), .DINB4(
        GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(GLMUXINT_GND), 
        .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), .WIDTHA0(
        GLMUXINT_GND), .WIDTHA1(GLMUXINT_GND), .WIDTHB0(GLMUXINT_GND), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \imaging_0/fifo_px_0/MEMWENEG ), .BLKB(
        \imaging_0/fifo_px_0/MEMRENEG ), .WENA(GLMUXINT_GND), .WENB(
        PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), .RESET(
        MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(), 
        .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), .DOUTA0(
        ), .DOUTB8(), .DOUTB7(), .DOUTB6(), .DOUTB5(), .DOUTB4(), 
        .DOUTB3(\imaging_0/fifo_px_0/QXI[28] ), .DOUTB2(
        \imaging_0/fifo_px_0/QXI[20] ), .DOUTB1(
        \imaging_0/fifo_px_0/QXI[12] ), .DOUTB0(
        \imaging_0/fifo_px_0/QXI[4] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[20]  
        (.A(\imaging_0/fifo_px_0_Q[20] ), .B(
        \imaging_0/fifo_px_1_Q[20] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_371 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[5]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[5] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[5] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_175 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ));
    NOR3B 
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_1[4]  
        (.A(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_244 ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_355 ), .C(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_0_sqmuxa ), 
        .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[4] ));
    DFN1 \psram_cr_0/ahb0/data_in_sel  (.D(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_in_sel_net_1 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[4]  (.A(\psram_cr_0/ahb0/N_247 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[29]  (.D(
        \COREAHBTOAPB3_0_APBmaster_PRDATA[29] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3II ), 
        .Q(\CoreAHBLite_0_AHBmslave6_HRDATA[29] ));
    AO1 \psram_cr_0/cr_int_i0/active_data_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(MSS_CORE2_0_M2F_RESET_N), .C(
        \psram_cr_0/cr_int_i0/N_93 ), .Y(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBAT14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_657 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] ));
    DFN1C0 \imaging_0/fifo_px_0/DFN1C0_MEM_WADDR[7]  (.D(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \imaging_0/fifo_px_0/MEM_WADDR[7] ));
    IOPAD_TRI \psram_address_pad[7]/U0/U0  (.D(
        \psram_address_pad[7]/U0/NET1 ), .E(
        \psram_address_pad[7]/U0/NET2 ), .PAD(psram_address[7]));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_56  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        );
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE3  (.PIN2(
        GLMUXINT_GND), .PIN3(CLK50_c), .PIN4(GLMUXINT_GND), .PIN1(), 
        .PIN5(), .PIN2INT(), .PIN3INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .PIN5INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(
        \psram_cr_0/ahb0/data_out[0]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_259 ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_2[30]  
        (.A(\imaging_0/fifo_px_0_Q[30] ), .B(
        \imaging_0/fifo_px_1_Q[30] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_3_sqmuxa_net_1 )
        , .Y(\imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_381 ));
    XA1C \imaging_0/adc081s101_0/cntrWaitTrailing_RNO[1]  (.A(
        \imaging_0/adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \imaging_0/adc081s101_0/cntrWaitTrailing[1]_net_1 ), .C(
        \imaging_0/adc081s101_0/N_70 ), .Y(
        \imaging_0/adc081s101_0/N_137 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[18] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[18] ));
    NOR2B \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_0  (.A(
        \imaging_0/stonyman_apb3_0/bus_write_enable_net_1 ), .B(
        \imaging_0.stonyman_apb3_0.ioreg_ready ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_40 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[12] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        );
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ));
    DFN1 \psram_cr_0/ahb0/data_in[5]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[5] ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ));
    XOR2 \imaging_0/fifo_px_0/XOR2_RBINNXTSHIFT[0]  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[2] ), .B(
        \imaging_0/fifo_px_0/MEMORYRE ), .Y(
        \imaging_0/fifo_px_0/RBINNXTSHIFT[0] ));
    MX2 \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[9]  
        (.A(\CoreAPB3_0_APBmslave0_0_PRDATA[9] ), .B(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/dataout_9[9] ), .S(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_38 ), .Y(
        \imaging_0/stonyman_apb3_0/stonyman_ioreg_0/N_493 ));
    XNOR2 \imaging_0/fifo_px_0/XNOR2_19  (.A(
        \imaging_0/fifo_px_0/RBINSYNCSHIFT[8] ), .B(
        \imaging_0/fifo_px_0/WBINNXTSHIFT[8] ), .Y(
        \imaging_0/fifo_px_0/XNOR2_19_Y ));
    OA1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI72T14[5]  
        (.A(N_91), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_646 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_26[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[4] ));
    OR2A \psram_cr_0/cr_int_i0/ac_counter_RNO_0[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .Y(\psram_cr_0/cr_int_i0/N_82 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
