library verilog;
use verilog.vl_types.all;
entity AHB is
    generic(
        BASE            : integer := 768;
        DATA_IN         : vl_notype;
        DATA_OUT        : vl_notype;
        PSRAM_ADDR      : vl_notype;
        OPERATION       : vl_notype;
        PSRAM_CR_MAGIC_ADDR: vl_notype;
        PSRAM_CR_MAGIC_REG: integer := 30583;
        VERSION_ROM     : integer := 256;
        VERSION_ROM_BYTE1: vl_notype;
        VERSION_ROM_BYTE2: vl_notype;
        VERSION_ROM_BYTE3: vl_notype
    );
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
        dt_req          : out    vl_logic;
        dt_ack          : in     vl_logic;
        dt_rw           : out    vl_logic;
        data_to_cr      : out    vl_logic_vector(15 downto 0);
        data_from_cr    : in     vl_logic_vector(15 downto 0);
        max_addr        : out    vl_logic_vector(31 downto 0);
        reg_addr        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BASE : constant is 1;
    attribute mti_svvh_generic_type of DATA_IN : constant is 3;
    attribute mti_svvh_generic_type of DATA_OUT : constant is 3;
    attribute mti_svvh_generic_type of PSRAM_ADDR : constant is 3;
    attribute mti_svvh_generic_type of OPERATION : constant is 3;
    attribute mti_svvh_generic_type of PSRAM_CR_MAGIC_ADDR : constant is 3;
    attribute mti_svvh_generic_type of PSRAM_CR_MAGIC_REG : constant is 1;
    attribute mti_svvh_generic_type of VERSION_ROM : constant is 1;
    attribute mti_svvh_generic_type of VERSION_ROM_BYTE1 : constant is 3;
    attribute mti_svvh_generic_type of VERSION_ROM_BYTE2 : constant is 3;
    attribute mti_svvh_generic_type of VERSION_ROM_BYTE3 : constant is 3;
end AHB;
