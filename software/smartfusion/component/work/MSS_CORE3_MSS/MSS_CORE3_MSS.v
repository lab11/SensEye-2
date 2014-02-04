//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Feb 02 15:01:39 2014
// Version: v11.2 SP1 11.2.1.8
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// MSS_CORE3_MSS
module MSS_CORE3_MSS(
    // Inputs
    F2M_GPI_0,
    F2M_GPI_1,
    F2M_GPI_2,
    F2M_GPI_3,
    MAC_CLK,
    MAC_CRSDV,
    MAC_RXD,
    MAC_RXER,
    MAINXIN,
    MSSHRDATA,
    MSSHREADY,
    MSSHRESP,
    MSS_RESET_N,
    UART_0_RXD,
    // Outputs
    FAB_CLK,
    M2F_RESET_N,
    MAC_MDC,
    MAC_TXD,
    MAC_TXEN,
    MSSHADDR,
    MSSHLOCK,
    MSSHSIZE,
    MSSHTRANS,
    MSSHWDATA,
    MSSHWRITE,
    UART_0_TXD,
    // Inouts
    MAC_MDIO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         F2M_GPI_0;
input         F2M_GPI_1;
input         F2M_GPI_2;
input         F2M_GPI_3;
input         MAC_CLK;
input         MAC_CRSDV;
input  [1:0]  MAC_RXD;
input         MAC_RXER;
input         MAINXIN;
input  [31:0] MSSHRDATA;
input         MSSHREADY;
input         MSSHRESP;
input         MSS_RESET_N;
input         UART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        FAB_CLK;
output        M2F_RESET_N;
output        MAC_MDC;
output [1:0]  MAC_TXD;
output        MAC_TXEN;
output [19:0] MSSHADDR;
output        MSSHLOCK;
output [1:0]  MSSHSIZE;
output [1:0]  MSSHTRANS;
output [31:0] MSSHWDATA;
output        MSSHWRITE;
output        UART_0_TXD;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         MAC_MDIO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [0:0]  MAC_RXD_slice_0;
wire   [1:1]  MAC_RXD_slice_1;
wire          DSSGEN_MAC_TXD_0;
wire          DSSGEN_MAC_TXD_1;
wire          F2M_GPI_0;
wire          F2M_GPI_1;
wire          F2M_GPI_2;
wire          F2M_GPI_3;
wire          MAC_CLK;
wire          MAC_CRSDV;
wire          MAC_RXER;
wire          MAINXIN;
wire          MSS_ADLIB_INST_EMCCLK;
wire          MSS_ADLIB_INST_FCLK;
wire          MSS_ADLIB_INST_MACCLK;
wire          MSS_ADLIB_INST_MACCLKCCC;
wire          MSS_ADLIB_INST_PLLLOCK;
wire          MSS_ADLIB_INST_SYNCCLKFDBK;
wire          MSS_MAC_0_CRSDV_Y;
wire          MSS_MAC_0_MDC_D;
wire          MSS_MAC_0_MDIO_D;
wire          MSS_MAC_0_MDIO_E;
wire          MSS_MAC_0_MDIO_Y;
wire          MSS_MAC_0_RXD_0_Y;
wire          MSS_MAC_0_RXD_1_Y;
wire          MSS_MAC_0_RXER_Y;
wire   [0:0]  MSS_MAC_0_TXD_0_D;
wire   [1:1]  MSS_MAC_0_TXD_1_D;
wire          MSS_MAC_0_TXEN_D;
wire          MSS_RESET_0_MSS_RESET_N_Y;
wire          MSS_RESET_N;
wire          MSS_UART_0_RXD_Y;
wire          MSS_UART_0_TXD_D;
wire          MSSINT_GPI_0_Y;
wire          MSSINT_GPI_1_Y;
wire          MSSINT_GPI_2_Y;
wire          MSSINT_GPI_3_Y;
wire          net_71;
wire   [19:0] net_72_HADDR;
wire          net_72_HLOCK;
wire   [31:0] MSSHRDATA;
wire          MSSHREADY;
wire          MSSHRESP;
wire   [1:0]  net_72_HSIZE;
wire   [1:0]  net_72_HTRANS;
wire   [31:0] net_72_HWDATA;
wire          net_72_HWRITE;
wire          MAC_MDIO;
wire          PAD_0;
wire          PAD_1;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          net_72_HWRITE_net_0;
wire          net_72_HLOCK_net_0;
wire          net_71_net_0;
wire          MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
wire   [19:0] net_72_HADDR_net_0;
wire   [1:0]  net_72_HTRANS_net_0;
wire   [1:0]  net_72_HSIZE_net_0;
wire   [31:0] net_72_HWDATA_net_0;
wire          UART_0_TXD_net_1;
wire   [0:0]  DSSGEN_MAC_TXD_0_net_0;
wire   [1:1]  DSSGEN_MAC_TXD_1_net_0;
wire          PAD_0_net_0;
wire          PAD_1_net_0;
wire   [31:0] GPI_net_0;
wire   [1:0]  MACRXD_net_0;
wire   [1:0]  MAC_RXD;
wire   [1:0]  MACTXD_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [1:0]  DMAREADY_const_net_0;
wire   [1:0]  MACF2MRXD_const_net_0;
wire   [15:0] EMCRDB_const_net_0;
wire   [31:0] FABHADDR_const_net_0;
wire   [31:0] FABHWDATA_const_net_0;
wire   [1:0]  FABHTRANS_const_net_0;
wire   [1:0]  FABHSIZE_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign DMAREADY_const_net_0  = 2'h0;
assign MACF2MRXD_const_net_0 = 2'h0;
assign EMCRDB_const_net_0    = 16'h0000;
assign FABHADDR_const_net_0  = 32'h00000000;
assign FABHWDATA_const_net_0 = 32'h00000000;
assign FABHTRANS_const_net_0 = 2'h0;
assign FABHSIZE_const_net_0  = 2'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign net_72_HWRITE_net_0              = net_72_HWRITE;
assign MSSHWRITE                        = net_72_HWRITE_net_0;
assign net_72_HLOCK_net_0               = net_72_HLOCK;
assign MSSHLOCK                         = net_72_HLOCK_net_0;
assign net_71_net_0                     = net_71;
assign M2F_RESET_N                      = net_71_net_0;
assign MSS_ADLIB_INST_SYNCCLKFDBK_net_0 = MSS_ADLIB_INST_SYNCCLKFDBK;
assign FAB_CLK                          = MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
assign net_72_HADDR_net_0               = net_72_HADDR;
assign MSSHADDR[19:0]                   = net_72_HADDR_net_0;
assign net_72_HTRANS_net_0              = net_72_HTRANS;
assign MSSHTRANS[1:0]                   = net_72_HTRANS_net_0;
assign net_72_HSIZE_net_0               = net_72_HSIZE;
assign MSSHSIZE[1:0]                    = net_72_HSIZE_net_0;
assign net_72_HWDATA_net_0              = net_72_HWDATA;
assign MSSHWDATA[31:0]                  = net_72_HWDATA_net_0;
assign UART_0_TXD_net_1                 = UART_0_TXD_net_0;
assign UART_0_TXD                       = UART_0_TXD_net_1;
assign DSSGEN_MAC_TXD_0_net_0[0]        = DSSGEN_MAC_TXD_0;
assign MAC_TXD[0:0]                     = DSSGEN_MAC_TXD_0_net_0[0];
assign DSSGEN_MAC_TXD_1_net_0[1]        = DSSGEN_MAC_TXD_1;
assign MAC_TXD[1:1]                     = DSSGEN_MAC_TXD_1_net_0[1];
assign PAD_0_net_0                      = PAD_0;
assign MAC_TXEN                         = PAD_0_net_0;
assign PAD_1_net_0                      = PAD_1;
assign MAC_MDC                          = PAD_1_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign MAC_RXD_slice_0[0]   = MAC_RXD[0:0];
assign MAC_RXD_slice_1[1]   = MAC_RXD[1:1];
assign MSS_MAC_0_TXD_0_D[0] = MACTXD_net_0[0:0];
assign MSS_MAC_0_TXD_1_D[1] = MACTXD_net_0[1:1];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPI_net_0    = { 28'h0000000 , MSSINT_GPI_3_Y , MSSINT_GPI_2_Y , MSSINT_GPI_1_Y , MSSINT_GPI_0_Y };
assign MACRXD_net_0 = { MSS_MAC_0_RXD_1_Y , MSS_MAC_0_RXD_0_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_AHB
MSS_AHB #( 
        .ACT_CONFIG ( 128 ),
        .ACT_DIE    ( "IP6X5M2" ),
        .ACT_FCLK   ( 80000000 ),
        .ACT_PKG    ( "fg484" ) )
MSS_ADLIB_INST(
        // Inputs
        .MSSHRDATA      ( MSSHRDATA ),
        .MSSHREADY      ( MSSHREADY ),
        .MSSHRESP       ( MSSHRESP ),
        .FABHADDR       ( FABHADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .FABHWDATA      ( FABHWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FABHTRANS      ( FABHTRANS_const_net_0 ), // tied to 2'h0 from definition
        .FABHSIZE       ( FABHSIZE_const_net_0 ), // tied to 2'h0 from definition
        .FABHMASTLOCK   ( GND_net ), // tied to 1'b0 from definition
        .FABHWRITE      ( GND_net ), // tied to 1'b0 from definition
        .FABHSEL        ( GND_net ), // tied to 1'b0 from definition
        .FABHREADY      ( VCC_net ), // tied to 1'b1 from definition
        .SYNCCLKFDBK    ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .CALIBIN        ( GND_net ), // tied to 1'b0 from definition
        .FABINT         ( GND_net ), // tied to 1'b0 from definition
        .F2MRESETn      ( VCC_net ), // tied to 1'b1 from definition
        .DMAREADY       ( DMAREADY_const_net_0 ), // tied to 2'h0 from definition
        .RXEV           ( GND_net ), // tied to 1'b0 from definition
        .VRON           ( GND_net ), // tied to 1'b0 from definition
        .GPI            ( GPI_net_0 ),
        .UART0CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART0DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART0RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART0DCDn      ( GND_net ), // tied to 1'b0 from definition
        .UART1CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART1DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART1RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART1DCDn      ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C0BCLK       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C1BCLK       ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXD      ( MACF2MRXD_const_net_0 ), // tied to 2'h0 from definition
        .MACF2MCRSDV    ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXER     ( GND_net ), // tied to 1'b0 from definition
        .MACF2MMDI      ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABACETRIG     ( GND_net ), // tied to 1'b0 from definition
        .LVTTL0EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL1EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL2EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL3EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL4EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL5EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL6EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL7EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL8EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL9EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL10EN      ( GND_net ), // tied to 1'b0 from definition
        .LVTTL11EN      ( GND_net ), // tied to 1'b0 from definition
        .FCLK           ( MSS_ADLIB_INST_FCLK ),
        .MACCLKCCC      ( MSS_ADLIB_INST_MACCLKCCC ),
        .RCOSC          ( GND_net ), // tied to 1'b0 from definition
        .MACCLK         ( MSS_ADLIB_INST_MACCLK ),
        .PLLLOCK        ( MSS_ADLIB_INST_PLLLOCK ),
        .MSSRESETn      ( MSS_RESET_0_MSS_RESET_N_Y ),
        .SPI0DI         ( GND_net ), // tied to 1'b0 from definition
        .SPI0CLKI       ( GND_net ), // tied to 1'b0 from definition
        .SPI0SSI        ( GND_net ), // tied to 1'b0 from definition
        .UART0RXD       ( MSS_UART_0_RXD_Y ),
        .I2C0SDAI       ( GND_net ), // tied to 1'b0 from definition
        .I2C0SCLI       ( GND_net ), // tied to 1'b0 from definition
        .SPI1DI         ( GND_net ), // tied to 1'b0 from definition
        .SPI1CLKI       ( GND_net ), // tied to 1'b0 from definition
        .SPI1SSI        ( GND_net ), // tied to 1'b0 from definition
        .UART1RXD       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SDAI       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SCLI       ( GND_net ), // tied to 1'b0 from definition
        .MACRXD         ( MACRXD_net_0 ),
        .MACCRSDV       ( MSS_MAC_0_CRSDV_Y ),
        .MACRXER        ( MSS_MAC_0_RXER_Y ),
        .MACMDI         ( MSS_MAC_0_MDIO_Y ),
        .EMCCLKRTN      ( MSS_ADLIB_INST_EMCCLK ),
        .EMCRDB         ( EMCRDB_const_net_0 ), // tied to 16'h0000 from definition
        .ADC0           ( GND_net ), // tied to 1'b0 from definition
        .ADC1           ( GND_net ), // tied to 1'b0 from definition
        .ADC2           ( GND_net ), // tied to 1'b0 from definition
        .ADC3           ( GND_net ), // tied to 1'b0 from definition
        .ADC4           ( GND_net ), // tied to 1'b0 from definition
        .ADC5           ( GND_net ), // tied to 1'b0 from definition
        .ADC6           ( GND_net ), // tied to 1'b0 from definition
        .ADC7           ( GND_net ), // tied to 1'b0 from definition
        .ADC8           ( GND_net ), // tied to 1'b0 from definition
        .ADC9           ( GND_net ), // tied to 1'b0 from definition
        .ADC10          ( GND_net ), // tied to 1'b0 from definition
        .ADC11          ( GND_net ), // tied to 1'b0 from definition
        .ABPS0          ( GND_net ), // tied to 1'b0 from definition
        .ABPS1          ( GND_net ), // tied to 1'b0 from definition
        .ABPS2          ( GND_net ), // tied to 1'b0 from definition
        .ABPS3          ( GND_net ), // tied to 1'b0 from definition
        .ABPS4          ( GND_net ), // tied to 1'b0 from definition
        .ABPS5          ( GND_net ), // tied to 1'b0 from definition
        .ABPS6          ( GND_net ), // tied to 1'b0 from definition
        .ABPS7          ( GND_net ), // tied to 1'b0 from definition
        .ABPS8          ( GND_net ), // tied to 1'b0 from definition
        .ABPS9          ( GND_net ), // tied to 1'b0 from definition
        .ABPS10         ( GND_net ), // tied to 1'b0 from definition
        .ABPS11         ( GND_net ), // tied to 1'b0 from definition
        .TM0            ( GND_net ), // tied to 1'b0 from definition
        .TM1            ( GND_net ), // tied to 1'b0 from definition
        .TM2            ( GND_net ), // tied to 1'b0 from definition
        .TM3            ( GND_net ), // tied to 1'b0 from definition
        .TM4            ( GND_net ), // tied to 1'b0 from definition
        .TM5            ( GND_net ), // tied to 1'b0 from definition
        .CM0            ( GND_net ), // tied to 1'b0 from definition
        .CM1            ( GND_net ), // tied to 1'b0 from definition
        .CM2            ( GND_net ), // tied to 1'b0 from definition
        .CM3            ( GND_net ), // tied to 1'b0 from definition
        .CM4            ( GND_net ), // tied to 1'b0 from definition
        .CM5            ( GND_net ), // tied to 1'b0 from definition
        .GNDTM0         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM1         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM2         ( GND_net ), // tied to 1'b0 from definition
        .VAREF0         ( GND_net ), // tied to 1'b0 from definition
        .VAREF1         ( GND_net ), // tied to 1'b0 from definition
        .VAREF2         ( GND_net ), // tied to 1'b0 from definition
        .GNDVAREF       ( GND_net ), // tied to 1'b0 from definition
        .PUn            ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSSHADDR       ( net_72_HADDR ),
        .MSSHWDATA      ( net_72_HWDATA ),
        .MSSHTRANS      ( net_72_HTRANS ),
        .MSSHSIZE       ( net_72_HSIZE ),
        .MSSHLOCK       ( net_72_HLOCK ),
        .MSSHWRITE      ( net_72_HWRITE ),
        .FABHRDATA      (  ),
        .FABHREADYOUT   (  ),
        .FABHRESP       (  ),
        .CALIBOUT       (  ),
        .MSSINT         (  ),
        .WDINT          (  ),
        .M2FRESETn      ( net_71 ),
        .DEEPSLEEP      (  ),
        .SLEEP          (  ),
        .TXEV           (  ),
        .GPO            (  ),
        .UART0RTSn      (  ),
        .UART0DTRn      (  ),
        .UART1RTSn      (  ),
        .UART1DTRn      (  ),
        .I2C0SMBUSNO    (  ),
        .I2C0SMBALERTNO (  ),
        .I2C1SMBUSNO    (  ),
        .I2C1SMBALERTNO (  ),
        .MACM2FTXD      (  ),
        .MACM2FTXEN     (  ),
        .MACM2FMDO      (  ),
        .MACM2FMDEN     (  ),
        .MACM2FMDC      (  ),
        .ACEFLAGS       (  ),
        .CMP0           (  ),
        .CMP1           (  ),
        .CMP2           (  ),
        .CMP3           (  ),
        .CMP4           (  ),
        .CMP5           (  ),
        .CMP6           (  ),
        .CMP7           (  ),
        .CMP8           (  ),
        .CMP9           (  ),
        .CMP10          (  ),
        .CMP11          (  ),
        .LVTTL0         (  ),
        .LVTTL1         (  ),
        .LVTTL2         (  ),
        .LVTTL3         (  ),
        .LVTTL4         (  ),
        .LVTTL5         (  ),
        .LVTTL6         (  ),
        .LVTTL7         (  ),
        .LVTTL8         (  ),
        .LVTTL9         (  ),
        .LVTTL10        (  ),
        .LVTTL11        (  ),
        .PUFABn         (  ),
        .VCC15GOOD      (  ),
        .VCC33GOOD      (  ),
        .GPOE           (  ),
        .SPI0DO         (  ),
        .SPI0DOE        (  ),
        .SPI0CLKO       (  ),
        .SPI0MODE       (  ),
        .SPI0SSO        (  ),
        .UART0TXD       ( MSS_UART_0_TXD_D ),
        .I2C0SDAO       (  ),
        .I2C0SCLO       (  ),
        .SPI1DO         (  ),
        .SPI1DOE        (  ),
        .SPI1CLKO       (  ),
        .SPI1MODE       (  ),
        .SPI1SSO        (  ),
        .UART1TXD       (  ),
        .I2C1SDAO       (  ),
        .I2C1SCLO       (  ),
        .MACTXD         ( MACTXD_net_0 ),
        .MACTXEN        ( MSS_MAC_0_TXEN_D ),
        .MACMDO         ( MSS_MAC_0_MDIO_D ),
        .MACMDEN        ( MSS_MAC_0_MDIO_E ),
        .MACMDC         ( MSS_MAC_0_MDC_D ),
        .EMCCLK         ( MSS_ADLIB_INST_EMCCLK ),
        .EMCAB          (  ),
        .EMCWDB         (  ),
        .EMCRWn         (  ),
        .EMCCS0n        (  ),
        .EMCCS1n        (  ),
        .EMCOEN0n       (  ),
        .EMCOEN1n       (  ),
        .EMCBYTEN       (  ),
        .EMCDBOE        (  ),
        .SDD0           (  ),
        .SDD1           (  ),
        .SDD2           (  ),
        .VAREFOUT       (  ) 
        );

//--------MSS_CORE3_MSS_tmp_MSS_CCC_0_MSS_CCC   -   Actel:SmartFusionMSS:MSS_CCC:2.0.106
MSS_CORE3_MSS_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0(
        // Inputs
        .CLKA           ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKB           ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKC           ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADN      ( GND_net ), // tied to 1'b0 from definition
        .MAINXIN        ( MAINXIN ),
        .LPXIN          ( GND_net ), // tied to 1'b0 from definition
        .MAC_CLK        ( MAC_CLK ),
        // Outputs
        .GLA            (  ),
        .GLB            (  ),
        .GLC            (  ),
        .FAB_CLK        ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .YB             (  ),
        .YC             (  ),
        .FAB_LOCK       (  ),
        .RCOSC_CLKOUT   (  ),
        .MAINXIN_CLKOUT (  ),
        .LPXIN_CLKOUT   (  ),
        .GLA0           ( MSS_ADLIB_INST_FCLK ),
        .MSS_LOCK       ( MSS_ADLIB_INST_PLLLOCK ),
        .MAC_CLK_CCC    ( MSS_ADLIB_INST_MACCLKCCC ),
        .MAC_CLK_IO     ( MSS_ADLIB_INST_MACCLK ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W4" ) )
MSS_MAC_0_CRSDV(
        // Inputs
        .PAD ( MAC_CRSDV ),
        // Outputs
        .Y   ( MSS_MAC_0_CRSDV_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA3" ) )
MSS_MAC_0_MDC(
        // Inputs
        .D   ( MSS_MAC_0_MDC_D ),
        // Outputs
        .PAD ( PAD_1 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V4" ) )
MSS_MAC_0_MDIO(
        // Inputs
        .D   ( MSS_MAC_0_MDIO_D ),
        .E   ( MSS_MAC_0_MDIO_E ),
        // Outputs
        .Y   ( MSS_MAC_0_MDIO_Y ),
        // Inouts
        .PAD ( MAC_MDIO ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V5" ) )
MSS_MAC_0_RXD_0(
        // Inputs
        .PAD ( MAC_RXD_slice_0 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_0_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U5" ) )
MSS_MAC_0_RXD_1(
        // Inputs
        .PAD ( MAC_RXD_slice_1 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_1_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA4" ) )
MSS_MAC_0_RXER(
        // Inputs
        .PAD ( MAC_RXER ),
        // Outputs
        .Y   ( MSS_MAC_0_RXER_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA5" ) )
MSS_MAC_0_TXD_0(
        // Inputs
        .D   ( MSS_MAC_0_TXD_0_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W5" ) )
MSS_MAC_0_TXD_1(
        // Inputs
        .D   ( MSS_MAC_0_TXD_1_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_1 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y4" ) )
MSS_MAC_0_TXEN(
        // Inputs
        .D   ( MSS_MAC_0_TXEN_D ),
        // Outputs
        .PAD ( PAD_0 ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "R1" ) )
MSS_RESET_0_MSS_RESET_N(
        // Inputs
        .PAD ( MSS_RESET_N ),
        // Outputs
        .Y   ( MSS_RESET_0_MSS_RESET_N_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U18" ) )
MSS_UART_0_RXD(
        // Inputs
        .PAD ( UART_0_RXD ),
        // Outputs
        .Y   ( MSS_UART_0_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y22" ) )
MSS_UART_0_TXD(
        // Inputs
        .D   ( MSS_UART_0_TXD_D ),
        // Outputs
        .PAD ( UART_0_TXD_net_0 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_0(
        // Inputs
        .A ( F2M_GPI_0 ),
        // Outputs
        .Y ( MSSINT_GPI_0_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_1(
        // Inputs
        .A ( F2M_GPI_1 ),
        // Outputs
        .Y ( MSSINT_GPI_1_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_2(
        // Inputs
        .A ( F2M_GPI_2 ),
        // Outputs
        .Y ( MSSINT_GPI_2_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_3(
        // Inputs
        .A ( F2M_GPI_3 ),
        // Outputs
        .Y ( MSSINT_GPI_3_Y ) 
        );


endmodule
