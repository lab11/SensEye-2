library verilog;
use verilog.vl_types.all;
entity COREAHBTOAPB3 is
    generic(
        FAMILY          : integer := 17
    );
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        HSEL            : in     vl_logic;
        HADDR           : in     vl_logic_vector(23 downto 0);
        HWRITE          : in     vl_logic;
        HREADY          : in     vl_logic;
        HTRANS          : in     vl_logic_vector(1 downto 0);
        HWDATA          : in     vl_logic_vector(31 downto 0);
        HREADYOUT       : out    vl_logic;
        HRESP           : out    vl_logic_vector(1 downto 0);
        HRDATA          : out    vl_logic_vector(31 downto 0);
        PADDR           : out    vl_logic_vector(23 downto 0);
        PWRITE          : out    vl_logic;
        PENABLE         : out    vl_logic;
        PWDATA          : out    vl_logic_vector(31 downto 0);
        PSEL            : out    vl_logic;
        PREADY          : in     vl_logic;
        PSLVERR         : in     vl_logic;
        PRDATA          : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FAMILY : constant is 1;
end COREAHBTOAPB3;
