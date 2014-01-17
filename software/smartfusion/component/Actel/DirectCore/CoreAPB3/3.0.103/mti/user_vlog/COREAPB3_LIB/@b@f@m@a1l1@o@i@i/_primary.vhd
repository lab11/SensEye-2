library verilog;
use verilog.vl_types.all;
entity BFMA1l1OII is
    generic(
        TPD             : integer := 1;
        BFMA1OOIII      : integer := 0;
        BFMA1IOIII      : integer := 1;
        BFMA1lOIII      : integer := 2;
        BFMA1OIIII      : integer := 3
    );
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        HSEL            : in     vl_logic;
        HWRITE          : in     vl_logic;
        HADDR           : in     vl_logic_vector(31 downto 0);
        HWDATA          : in     vl_logic_vector(31 downto 0);
        HRDATA          : out    vl_logic_vector(31 downto 0);
        HREADYIN        : in     vl_logic;
        HREADYOUT       : out    vl_logic;
        HTRANS          : in     vl_logic_vector(1 downto 0);
        HSIZE           : in     vl_logic_vector(2 downto 0);
        HBURST          : in     vl_logic_vector(2 downto 0);
        HMASTLOCK       : in     vl_logic;
        HPROT           : in     vl_logic_vector(3 downto 0);
        HRESP           : out    vl_logic;
        PSEL            : out    vl_logic_vector(15 downto 0);
        PADDR           : out    vl_logic_vector(31 downto 0);
        PWRITE          : out    vl_logic;
        PENABLE         : out    vl_logic;
        PWDATA          : out    vl_logic_vector(31 downto 0);
        PRDATA          : in     vl_logic_vector(31 downto 0);
        PREADY          : in     vl_logic;
        PSLVERR         : in     vl_logic
    );
end BFMA1l1OII;
