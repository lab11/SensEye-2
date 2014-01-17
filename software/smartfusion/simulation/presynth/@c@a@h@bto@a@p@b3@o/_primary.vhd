library verilog;
use verilog.vl_types.all;
entity CAHBtoAPB3O is
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        HSEL            : in     vl_logic;
        CAHBtoAPB3I     : in     vl_logic;
        HWRITE          : in     vl_logic;
        HREADY          : in     vl_logic;
        HRESP           : out    vl_logic_vector(1 downto 0);
        HREADYOUT       : out    vl_logic;
        PREADY          : in     vl_logic;
        PSLVERR         : in     vl_logic;
        PENABLE         : in     vl_logic;
        PWRITE          : out    vl_logic;
        PSEL            : out    vl_logic;
        CAHBtoAPB3l     : out    vl_logic;
        CAHBtoAPB3OI    : out    vl_logic;
        CAHBtoAPB3II    : out    vl_logic;
        CAHBtoAPB3lI    : out    vl_logic;
        CAHBtoAPB3Ol    : out    vl_logic;
        CAHBtoAPB3Il    : out    vl_logic;
        CAHBtoAPB3ll    : out    vl_logic
    );
end CAHBtoAPB3O;
