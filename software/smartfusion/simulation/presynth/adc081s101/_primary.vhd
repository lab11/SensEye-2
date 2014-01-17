library verilog;
use verilog.vl_types.all;
entity adc081s101 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        startCapture    : in     vl_logic;
        miso            : in     vl_logic;
        cs              : out    vl_logic;
        dataout         : out    vl_logic_vector(7 downto 0);
        conversionComplete: out    vl_logic
    );
end adc081s101;
