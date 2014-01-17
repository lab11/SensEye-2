library verilog;
use verilog.vl_types.all;
entity BFM_APBSLAVE is
    generic(
        AWIDTH          : integer := 10;
        DEPTH           : integer := 256;
        DWIDTH          : integer := 32;
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
        PSLVERR         : out    vl_logic
    );
end BFM_APBSLAVE;
