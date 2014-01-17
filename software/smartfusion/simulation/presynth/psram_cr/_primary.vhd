library verilog;
use verilog.vl_types.all;
entity psram_cr is
    port(
        HSEL            : in     vl_logic;
        HWRITE          : in     vl_logic;
        HMASTLOCK       : in     vl_logic;
        HREADY          : in     vl_logic;
        HRESETn         : in     vl_logic;
        HCLK            : in     vl_logic;
        HADDR           : in     vl_logic_vector(31 downto 0);
        HWDATA          : in     vl_logic_vector(31 downto 0);
        HSIZE           : in     vl_logic_vector(2 downto 0);
        HBURST          : in     vl_logic_vector(2 downto 0);
        HPROT           : in     vl_logic_vector(3 downto 0);
        HTRANS          : in     vl_logic_vector(1 downto 0);
        HREADYOUT       : out    vl_logic;
        HRESP           : out    vl_logic_vector(1 downto 0);
        HRDATA          : out    vl_logic_vector(31 downto 0);
        address         : out    vl_logic_vector(24 downto 0);
        nbyte_en        : out    vl_logic_vector(1 downto 0);
        ncs0            : out    vl_logic;
        ncs1            : out    vl_logic;
        data            : inout  vl_logic_vector(15 downto 0);
        noe0            : out    vl_logic;
        noe1            : out    vl_logic;
        nwe             : out    vl_logic
    );
end psram_cr;
