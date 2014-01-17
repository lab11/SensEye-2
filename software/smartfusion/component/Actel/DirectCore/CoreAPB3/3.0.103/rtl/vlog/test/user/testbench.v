// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2010 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:	User Testbench for CoreAPB3
//
// Revision Information:
// Date     Description
// 05Feb10		Production Release Version 3.0
//
// SVN Revision Information:
// SVN $Revision: 12192 $
// SVN $Date: 2010-02-08 16:57:09 -0800 (Mon, 08 Feb 2010) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
// 1. best viewed with tabstops set to "4"
// 2. Most of the behavior is driven from the BFM script for the APB
//    master.  Consult the Actel AMBA BFM documentation for more information.
//
// History:		1/28/10  - TFB created
//
// *********************************************************************

`timescale 1ns/1ps


module testbench ();

// location of this can be overridden at compile time (+incdir switch)
//`include "../../../../coreparameters.v"
`include "coreparameters.v"

//-----------------------------------------------------------------------------
// top-level parameters
//-----------------------------------------------------------------------------

// vector files for driving the APB master BFM
// NOTE: location of the following files can be overridden at run time
parameter APB_MASTER_VECTFILE	= "coreapb3_usertb_apb_master.vec";

// APB Master System Clock cycle (in ns)
parameter APB_MASTER_CLK_CYCLE	= 30;

// propagation delay in ns
parameter TPD			= 3;


// BFM slave constants
localparam SLAVE_AWIDTH		= 8;
localparam SLAVE_DEPTH		= (2**SLAVE_AWIDTH) ;


// System signals
reg							SYSRSTN_apb;
reg							SYSCLK_apb;

// APB master bfm signals
wire						PCLK;
wire						PRESETN;
wire	[31:0]				PADDR_apb_bfm_wide;
wire	[23:0]				PADDR;
wire	[15:0]				PSEL_apb_bfm_wide;
wire						PSEL;
wire						PENABLE;
wire						PWRITE;
wire	[31:0]				PWDATA_apb_bfm_wide;
//wire	[APB_DWIDTH-1:0]	PWDATA;
wire	[31:0]				PWDATA;

// input to bfm
wire	[31:0]				PRDATA_apb_bfm_wide;
//wire	[APB_DWIDTH-1:0]	PRDATA;
wire	[31:0]				PRDATA;
wire						PREADY;
wire						PSLVERR;

// input to APB bfm
//wire	[31:0]				GP_IN_apb_bfm=32'b0;
//wire	[31:0]				GP_OUT_apb_bfm;
wire						FINISHED_apb_bfm;
wire						FAILED_apb_bfm;


// misc. signals
wire	[255:0]				GND256=256'b0;
wire	[31:0]				GND32=32'b0;
wire						GND1=1'b0;
reg							stopsim=0;


wire	[23:0]				PADDRS;
wire	[(((1-IADDR_ENABLE)*24)+((IADDR_ENABLE)*32))-1:0] PADDRS0;
wire						PWRITES;
wire						PENABLES;
//wire	[APB_DWIDTH-1:0]	PWDATAS;
wire	[31:0]				PWDATAS;
wire						PSELS0;
wire						PSELS1;
wire						PSELS2;
wire						PSELS3;
wire						PSELS4;
wire						PSELS5;
wire						PSELS6;
wire						PSELS7;
wire						PSELS8;
wire						PSELS9;
wire						PSELS10;
wire						PSELS11;
wire						PSELS12;
wire						PSELS13;
wire						PSELS14;
wire						PSELS15;

/*
wire	[APB_DWIDTH-1:0]	PRDATAS0;
wire	[APB_DWIDTH-1:0]	PRDATAS1;
wire	[APB_DWIDTH-1:0]	PRDATAS2;
wire	[APB_DWIDTH-1:0]	PRDATAS3;
wire	[APB_DWIDTH-1:0]	PRDATAS4;
wire	[APB_DWIDTH-1:0]	PRDATAS5;
wire	[APB_DWIDTH-1:0]	PRDATAS6;
wire	[APB_DWIDTH-1:0]	PRDATAS7;
wire	[APB_DWIDTH-1:0]	PRDATAS8;
wire	[APB_DWIDTH-1:0]	PRDATAS9;
wire	[APB_DWIDTH-1:0]	PRDATAS10;
wire	[APB_DWIDTH-1:0]	PRDATAS11;
wire	[APB_DWIDTH-1:0]	PRDATAS12;
wire	[APB_DWIDTH-1:0]	PRDATAS13;
wire	[APB_DWIDTH-1:0]	PRDATAS14;
wire	[APB_DWIDTH-1:0]	PRDATAS15;
*/
wire	[31:0]				PRDATAS0;
wire	[31:0]				PRDATAS1;
wire	[31:0]				PRDATAS2;
wire	[31:0]				PRDATAS3;
wire	[31:0]				PRDATAS4;
wire	[31:0]				PRDATAS5;
wire	[31:0]				PRDATAS6;
wire	[31:0]				PRDATAS7;
wire	[31:0]				PRDATAS8;
wire	[31:0]				PRDATAS9;
wire	[31:0]				PRDATAS10;
wire	[31:0]				PRDATAS11;
wire	[31:0]				PRDATAS12;
wire	[31:0]				PRDATAS13;
wire	[31:0]				PRDATAS14;
wire	[31:0]				PRDATAS15;


wire						PREADYS0;
wire						PREADYS1;
wire						PREADYS2;
wire						PREADYS3;
wire						PREADYS4;
wire						PREADYS5;
wire						PREADYS6;
wire						PREADYS7;
wire						PREADYS8;
wire						PREADYS9;
wire						PREADYS10;
wire						PREADYS11;
wire						PREADYS12;
wire						PREADYS13;
wire						PREADYS14;
wire						PREADYS15;
wire						PSLVERRS0;
wire						PSLVERRS1;
wire						PSLVERRS2;
wire						PSLVERRS3;
wire						PSLVERRS4;
wire						PSLVERRS5;
wire						PSLVERRS6;
wire						PSLVERRS7;
wire						PSLVERRS8;
wire						PSLVERRS9;
wire						PSLVERRS10;
wire						PSLVERRS11;
wire						PSLVERRS12;
wire						PSLVERRS13;
wire						PSLVERRS14;
wire						PSLVERRS15;

/*
wire	[31:0]				PWDATAS_apb_slave;
wire	[31:0]				PRDATAS0_apb_slave;
wire	[31:0]				PRDATAS1_apb_slave;
wire	[31:0]				PRDATAS2_apb_slave;
wire	[31:0]				PRDATAS3_apb_slave;
wire	[31:0]				PRDATAS4_apb_slave;
wire	[31:0]				PRDATAS5_apb_slave;
wire	[31:0]				PRDATAS6_apb_slave;
wire	[31:0]				PRDATAS7_apb_slave;
wire	[31:0]				PRDATAS8_apb_slave;
wire	[31:0]				PRDATAS9_apb_slave;
wire	[31:0]				PRDATAS10_apb_slave;
wire	[31:0]				PRDATAS11_apb_slave;
wire	[31:0]				PRDATAS12_apb_slave;
wire	[31:0]				PRDATAS13_apb_slave;
wire	[31:0]				PRDATAS14_apb_slave;
wire	[31:0]				PRDATAS15_apb_slave;
*/


// instantiate DUT(s)
CoreAPB3 #(
	.APB_DWIDTH(APB_DWIDTH),
	.RANGESIZE(RANGESIZE),
	.IADDR_ENABLE(IADDR_ENABLE),
	.APBSLOT0ENABLE(APBSLOT0ENABLE),
	.APBSLOT1ENABLE(APBSLOT1ENABLE),
	.APBSLOT2ENABLE(APBSLOT2ENABLE),
	.APBSLOT3ENABLE(APBSLOT3ENABLE),
	.APBSLOT4ENABLE(APBSLOT4ENABLE),
	.APBSLOT5ENABLE(APBSLOT5ENABLE),
	.APBSLOT6ENABLE(APBSLOT6ENABLE),
	.APBSLOT7ENABLE(APBSLOT7ENABLE),
	.APBSLOT8ENABLE(APBSLOT8ENABLE),
	.APBSLOT9ENABLE(APBSLOT9ENABLE),
	.APBSLOT10ENABLE(APBSLOT10ENABLE),
	.APBSLOT11ENABLE(APBSLOT11ENABLE),
	.APBSLOT12ENABLE(APBSLOT12ENABLE),
	.APBSLOT13ENABLE(APBSLOT13ENABLE),
	.APBSLOT14ENABLE(APBSLOT14ENABLE),
	.APBSLOT15ENABLE(APBSLOT15ENABLE)
) u_coreapb3 (
	.PRESETN(PRESETN),
	.PCLK(PCLK),
	.PADDR(PADDR),
	.PWRITE(PWRITE),
	.PENABLE(PENABLE),
	.PSEL(PSEL),
	.PWDATA(PWDATA),
	.PRDATA(PRDATA),
	.PREADY(PREADY),
	.PSLVERR(PSLVERR),
	.PADDRS(PADDRS),
	.PADDRS0(PADDRS0),
	.PWRITES(PWRITES),
	.PENABLES(PENABLES),
	.PWDATAS(PWDATAS),
	.PSELS0(PSELS0),
	.PSELS1(PSELS1),
	.PSELS2(PSELS2),
	.PSELS3(PSELS3),
	.PSELS4(PSELS4),
	.PSELS5(PSELS5),
	.PSELS6(PSELS6),
	.PSELS7(PSELS7),
	.PSELS8(PSELS8),
	.PSELS9(PSELS9),
	.PSELS10(PSELS10),
	.PSELS11(PSELS11),
	.PSELS12(PSELS12),
	.PSELS13(PSELS13),
	.PSELS14(PSELS14),
	.PSELS15(PSELS15),
	.PRDATAS0(PRDATAS0),
	.PRDATAS1(PRDATAS1),
	.PRDATAS2(PRDATAS2),
	.PRDATAS3(PRDATAS3),
	.PRDATAS4(PRDATAS4),
	.PRDATAS5(PRDATAS5),
	.PRDATAS6(PRDATAS6),
	.PRDATAS7(PRDATAS7),
	.PRDATAS8(PRDATAS8),
	.PRDATAS9(PRDATAS9),
	.PRDATAS10(PRDATAS10),
	.PRDATAS11(PRDATAS11),
	.PRDATAS12(PRDATAS12),
	.PRDATAS13(PRDATAS13),
	.PRDATAS14(PRDATAS14),
	.PRDATAS15(PRDATAS15),
	.PREADYS0(PREADYS0),
	.PREADYS1(PREADYS1),
	.PREADYS2(PREADYS2),
	.PREADYS3(PREADYS3),
	.PREADYS4(PREADYS4),
	.PREADYS5(PREADYS5),
	.PREADYS6(PREADYS6),
	.PREADYS7(PREADYS7),
	.PREADYS8(PREADYS8),
	.PREADYS9(PREADYS9),
	.PREADYS10(PREADYS10),
	.PREADYS11(PREADYS11),
	.PREADYS12(PREADYS12),
	.PREADYS13(PREADYS13),
	.PREADYS14(PREADYS14),
	.PREADYS15(PREADYS15),
	.PSLVERRS0(PSLVERRS0),
	.PSLVERRS1(PSLVERRS1),
	.PSLVERRS2(PSLVERRS2),
	.PSLVERRS3(PSLVERRS3),
	.PSLVERRS4(PSLVERRS4),
	.PSLVERRS5(PSLVERRS5),
	.PSLVERRS6(PSLVERRS6),
	.PSLVERRS7(PSLVERRS7),
	.PSLVERRS8(PSLVERRS8),
	.PSLVERRS9(PSLVERRS9),
	.PSLVERRS10(PSLVERRS10),
	.PSLVERRS11(PSLVERRS11),
	.PSLVERRS12(PSLVERRS12),
	.PSLVERRS13(PSLVERRS13),
	.PSLVERRS14(PSLVERRS14),
	.PSLVERRS15(PSLVERRS15)
);
//assign PRDATA_apb_bfm_wide		= {{32-APB_DWIDTH{1'b0}},PRDATA};
assign PRDATA_apb_bfm_wide		= PRDATA;


// instantiate APB Master BFM to drive APB mirrored master port
BFM_APB #(
	.VECTFILE(APB_MASTER_VECTFILE),
	.TPD(TPD),
	// passing testbench parameters to BFM ARGVALUE* parameters
	.ARGVALUE0(APB_DWIDTH),
	.ARGVALUE1(RANGESIZE),
	.ARGVALUE2(IADDR_ENABLE),
	.ARGVALUE3(APBSLOT0ENABLE),
	.ARGVALUE4(APBSLOT1ENABLE),
	.ARGVALUE5(APBSLOT2ENABLE),
	.ARGVALUE6(APBSLOT3ENABLE),
	.ARGVALUE7(APBSLOT4ENABLE),
	.ARGVALUE8(APBSLOT5ENABLE),
	.ARGVALUE9(APBSLOT6ENABLE),
	.ARGVALUE10(APBSLOT7ENABLE),
	.ARGVALUE11(APBSLOT8ENABLE),
	.ARGVALUE12(APBSLOT9ENABLE),
	.ARGVALUE13(APBSLOT10ENABLE),
	.ARGVALUE14(APBSLOT11ENABLE),
	.ARGVALUE15(APBSLOT12ENABLE),
	.ARGVALUE16(APBSLOT13ENABLE),
	.ARGVALUE17(APBSLOT14ENABLE),
	.ARGVALUE18(APBSLOT15ENABLE)
) u_apb_master (
	.SYSCLK(SYSCLK_apb),
	.SYSRSTN(SYSRSTN_apb),
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PADDR(PADDR_apb_bfm_wide),
	.PSEL(PSEL_apb_bfm_wide),
	.PENABLE(PENABLE),
	.PWRITE(PWRITE),
	.PWDATA(PWDATA_apb_bfm_wide),
	.PRDATA(PRDATA_apb_bfm_wide),
	.PREADY(PREADY),
	.PSLVERR(PSLVERR),
	.INTERRUPT(GND256),
	.GP_OUT(),
	.GP_IN(GND32),
	.EXT_WR(),
	.EXT_RD(),
	.EXT_ADDR(),
	.EXT_DATA(),
	.EXT_WAIT(GND1),
	.FINISHED(FINISHED_apb_bfm),
	.FAILED(FAILED_apb_bfm)
);
assign PADDR				= PADDR_apb_bfm_wide[23:0];
assign PSEL					= PSEL_apb_bfm_wide[0];
//assign PWDATA				= PWDATA_apb_bfm_wide[APB_DWIDTH-1:0];
assign PWDATA				= PWDATA_apb_bfm_wide;

// BFM slave 0
BFM_APBSLAVE#(
	.AWIDTH(((1-IADDR_ENABLE)*SLAVE_AWIDTH)+((IADDR_ENABLE)*28)),
	.DEPTH(((1-IADDR_ENABLE)*SLAVE_DEPTH)+((IADDR_ENABLE)*(2**28))),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave0 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS0),
	.PADDR(PADDRS0[(((1-IADDR_ENABLE)*SLAVE_AWIDTH)+((IADDR_ENABLE)*28)-1):0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS0),
	.PREADY(PREADYS0),
	.PSLVERR(PSLVERRS0)
);

// BFM slave 1
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave1 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS1),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS1),
	.PREADY(PREADYS1),
	.PSLVERR(PSLVERRS1)
);

// BFM slave 2
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave2 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS2),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS2),
	.PREADY(PREADYS2),
	.PSLVERR(PSLVERRS2)
);

// BFM slave 3
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave3 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS3),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS3),
	.PREADY(PREADYS3),
	.PSLVERR(PSLVERRS3)
);

// BFM slave 4
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave4 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS4),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS4),
	.PREADY(PREADYS4),
	.PSLVERR(PSLVERRS4)
);

// BFM slave 5
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave5 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS5),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS5),
	.PREADY(PREADYS5),
	.PSLVERR(PSLVERRS5)
);

// BFM slave 6
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave6 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS6),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS6),
	.PREADY(PREADYS6),
	.PSLVERR(PSLVERRS6)
);

// BFM slave 7
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave7 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS7),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS7),
	.PREADY(PREADYS7),
	.PSLVERR(PSLVERRS7)
);

// BFM slave 8
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave8 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS8),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS8),
	.PREADY(PREADYS8),
	.PSLVERR(PSLVERRS8)
);

// BFM slave 9
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave9 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS9),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS9),
	.PREADY(PREADYS9),
	.PSLVERR(PSLVERRS9)
);

// BFM slave 10
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave10 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS10),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS10),
	.PREADY(PREADYS10),
	.PSLVERR(PSLVERRS10)
);

// BFM slave 11
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave11 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS11),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS11),
	.PREADY(PREADYS11),
	.PSLVERR(PSLVERRS11)
);

// BFM slave 12
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave12 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS12),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS12),
	.PREADY(PREADYS12),
	.PSLVERR(PSLVERRS12)
);

// BFM slave 13
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave13 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS13),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS13),
	.PREADY(PREADYS13),
	.PSLVERR(PSLVERRS13)
);

// BFM slave 14
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave14 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS14),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS14),
	.PREADY(PREADYS14),
	.PSLVERR(PSLVERRS14)
);

// BFM slave 15
BFM_APBSLAVE #(
	.AWIDTH(SLAVE_AWIDTH),
	.DEPTH(SLAVE_DEPTH),
	.DWIDTH(32),
	.TPD(TPD)
) u_slave15 (
	.PCLK(PCLK),
	.PRESETN(PRESETN),
	.PENABLE(PENABLES),
	.PWRITE(PWRITES),
	.PSEL(PSELS15),
	.PADDR(PADDRS[SLAVE_AWIDTH-1:0]),
	.PWDATA(PWDATAS),
	.PRDATA(PRDATAS15),
	.PREADY(PREADYS15),
	.PSLVERR(PSLVERRS15)
);


/*
// adjust busses to widths
assign PWDATAS_apb_slave = {{32-APB_DWIDTH{1'b0}},PWDATAS[APB_DWIDTH-1:0]};
assign PRDATAS0		=	PRDATAS0_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS1		=	PRDATAS1_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS2		=	PRDATAS2_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS3		=	PRDATAS3_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS4		=	PRDATAS4_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS5		=	PRDATAS5_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS6		=	PRDATAS6_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS7		=	PRDATAS7_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS8		=	PRDATAS8_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS9		=	PRDATAS9_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS10	=	PRDATAS10_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS11	=	PRDATAS11_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS12	=	PRDATAS12_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS13	=	PRDATAS13_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS14	=	PRDATAS14_apb_slave[APB_DWIDTH-1:0];
assign PRDATAS15	=	PRDATAS15_apb_slave[APB_DWIDTH-1:0];
*/

// System Clocks
initial SYSCLK_apb = 1'b0;
always #(APB_MASTER_CLK_CYCLE/2) SYSCLK_apb = ~SYSCLK_apb;


// Main simulation
initial
begin: main_sim
	SYSRSTN_apb	= 0;
	@ (posedge SYSCLK_apb); #TPD;
	SYSRSTN_apb	= 1;

	// wait until BFM is finished
	while (!(FINISHED_apb_bfm===1'b1))
	begin
		@ (posedge SYSCLK_apb); #TPD;
	end
	stopsim=1;
	#1;
	$stop;
end

endmodule // testbench
