library verilog;
use verilog.vl_types.all;
entity MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC is
    port(
        CLKA            : in     vl_logic;
        CLKA_PAD        : in     vl_logic;
        CLKA_PADP       : in     vl_logic;
        CLKA_PADN       : in     vl_logic;
        CLKB            : in     vl_logic;
        CLKB_PAD        : in     vl_logic;
        CLKB_PADP       : in     vl_logic;
        CLKB_PADN       : in     vl_logic;
        CLKC            : in     vl_logic;
        CLKC_PAD        : in     vl_logic;
        CLKC_PADP       : in     vl_logic;
        CLKC_PADN       : in     vl_logic;
        MAINXIN         : in     vl_logic;
        LPXIN           : in     vl_logic;
        MAC_CLK         : in     vl_logic;
        GLA0            : out    vl_logic;
        GLA             : out    vl_logic;
        FAB_CLK         : out    vl_logic;
        FAB_LOCK        : out    vl_logic;
        MSS_LOCK        : out    vl_logic;
        GLB             : out    vl_logic;
        YB              : out    vl_logic;
        GLC             : out    vl_logic;
        YC              : out    vl_logic;
        MAC_CLK_CCC     : out    vl_logic;
        MAC_CLK_IO      : out    vl_logic;
        RCOSC_CLKOUT    : out    vl_logic;
        MAINXIN_CLKOUT  : out    vl_logic;
        LPXIN_CLKOUT    : out    vl_logic
    );
end MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC;
