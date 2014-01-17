library verilog;
use verilog.vl_types.all;
entity CAHBtoAPB3IOl is
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        CAHBtoAPB3Il    : in     vl_logic;
        CAHBtoAPB3ll    : in     vl_logic;
        PENABLE         : out    vl_logic
    );
end CAHBtoAPB3IOl;
