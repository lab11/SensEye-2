library verilog;
use verilog.vl_types.all;
entity MSS_BFM_AHB2APB is
    generic(
        TPD             : real    := 0.100000;
        T0              : integer := 0;
        T2              : integer := 5;
        T345            : integer := 6;
        TR0             : integer := 7;
        WAIT1           : integer := 1;
        WAIT2           : integer := 2;
        WAIT3           : integer := 3;
        WAIT4           : integer := 4;
        idle            : integer := 0;
        waitone         : integer := 1;
        waittwo         : integer := 2;
        waitthree       : integer := 3
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
        PSLVERR         : in     vl_logic;
        PCLK_DIV        : in     vl_logic_vector(1 downto 0)
    );
end MSS_BFM_AHB2APB;
