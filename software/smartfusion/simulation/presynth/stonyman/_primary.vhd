library verilog;
use verilog.vl_types.all;
entity stonyman is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        startCapture    : in     vl_logic;
        px0_in          : in     vl_logic_vector(7 downto 0);
        px1_in          : in     vl_logic_vector(7 downto 0);
        px2_in          : in     vl_logic_vector(7 downto 0);
        px3_in          : in     vl_logic_vector(7 downto 0);
        adcConvComplete : in     vl_logic;
        resp            : out    vl_logic;
        incp            : out    vl_logic;
        resv            : out    vl_logic;
        incv            : out    vl_logic;
        inphi           : out    vl_logic;
        writeEnable     : out    vl_logic;
        px0_out         : out    vl_logic_vector(7 downto 0);
        px1_out         : out    vl_logic_vector(7 downto 0);
        px2_out         : out    vl_logic_vector(7 downto 0);
        px3_out         : out    vl_logic_vector(7 downto 0);
        startAdcCapture : out    vl_logic;
        busy            : out    vl_logic;
        tp_stateout     : out    vl_logic_vector(3 downto 0);
        tp_substateout  : out    vl_logic_vector(3 downto 0)
    );
end stonyman;
