library verilog;
use verilog.vl_types.all;
entity BFM_APBSLAVEEXT is
    generic(
        AWIDTH          : integer := 10;
        DEPTH           : integer := 256;
        DWIDTH          : integer := 32;
        EXT_SIZE        : integer := 2;
        INITFILE        : string  := " ";
        ID              : integer := 0;
        TPD             : integer := 1;
        ENFUNC          : integer := 0;
        DEBUG           : integer := 0
    );
    port(
        PCLK            : in     vl_logic;
        PRESETN         : in     vl_logic;
        PENABLE         : in     vl_logic;
        PWRITE          : in     vl_logic;
        PSEL            : in     vl_logic;
        PADDR           : in     vl_logic_vector;
        PWDATA          : in     vl_logic_vector;
        PRDATA          : out    vl_logic_vector;
        PREADY          : out    vl_logic;
        PSLVERR         : out    vl_logic;
        EXT_EN          : in     vl_logic;
        EXT_WR          : in     vl_logic;
        EXT_RD          : in     vl_logic;
        EXT_ADDR        : in     vl_logic_vector;
        EXT_DATA        : inout  vl_logic_vector
    );
end BFM_APBSLAVEEXT;
