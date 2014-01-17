library verilog;
use verilog.vl_types.all;
entity CAHBtoAPB3O1I is
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        CAHBtoAPB3l     : in     vl_logic;
        CAHBtoAPB3OI    : in     vl_logic;
        CAHBtoAPB3II    : in     vl_logic;
        CAHBtoAPB3lI    : in     vl_logic;
        CAHBtoAPB3Ol    : in     vl_logic;
        HADDR           : in     vl_logic_vector(23 downto 0);
        HWDATA          : in     vl_logic_vector(31 downto 0);
        HRDATA          : out    vl_logic_vector(31 downto 0);
        PADDR           : out    vl_logic_vector(23 downto 0);
        PWDATA          : out    vl_logic_vector(31 downto 0);
        PRDATA          : in     vl_logic_vector(31 downto 0)
    );
end CAHBtoAPB3O1I;
