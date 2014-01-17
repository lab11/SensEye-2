library verilog;
use verilog.vl_types.all;
entity clkgenerator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clkCameraSS     : out    vl_logic
    );
end clkgenerator;
