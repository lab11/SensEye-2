library verilog;
use verilog.vl_types.all;
entity imaging is
    port(
        PADDR           : in     vl_logic_vector(31 downto 0);
        PENABLE         : in     vl_logic;
        PSEL            : in     vl_logic;
        PWDATA          : in     vl_logic_vector(31 downto 0);
        PWRITE          : in     vl_logic;
        clk             : in     vl_logic;
        px0_adc_din     : in     vl_logic;
        px1_adc_din     : in     vl_logic;
        px2_adc_din     : in     vl_logic;
        px3_adc_din     : in     vl_logic;
        reset           : in     vl_logic;
        PRDATA          : out    vl_logic_vector(31 downto 0);
        PREADY          : out    vl_logic;
        PSLVERR         : out    vl_logic;
        TP_REG_OFFSET_UPPER_NIBBLE: out    vl_logic_vector(3 downto 0);
        incp            : out    vl_logic;
        incv            : out    vl_logic;
        inphi           : out    vl_logic;
        px_adc_cs       : out    vl_logic;
        px_adc_sclk     : out    vl_logic;
        resp            : out    vl_logic;
        resv            : out    vl_logic;
        tp_busy         : out    vl_logic;
        tp_cam0_afull   : out    vl_logic;
        tp_cam0_empty   : out    vl_logic;
        tp_cam0_full    : out    vl_logic;
        tp_cam0_rden    : out    vl_logic;
        tp_startcap     : out    vl_logic;
        tp_stateout     : out    vl_logic_vector(3 downto 0);
        tp_substateout  : out    vl_logic_vector(3 downto 0);
        tp_wren         : out    vl_logic
    );
end imaging;
