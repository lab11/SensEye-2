library verilog;
use verilog.vl_types.all;
entity cr_int is
    generic(
        OP_NUMBER       : integer := 8;
        AC_NUMBER       : integer := 4
    );
    port(
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        dt_req          : in     vl_logic;
        dt_ack          : out    vl_logic;
        rw              : in     vl_logic;
        data_in         : in     vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(15 downto 0);
        max_addr        : in     vl_logic_vector(31 downto 0);
        reg_addr        : in     vl_logic_vector(31 downto 0);
        address         : out    vl_logic_vector(24 downto 0);
        nbyte_en        : out    vl_logic_vector(1 downto 0);
        ncs0            : out    vl_logic;
        ncs1            : out    vl_logic;
        data            : inout  vl_logic_vector(15 downto 0);
        noe0            : out    vl_logic;
        noe1            : out    vl_logic;
        nwe             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OP_NUMBER : constant is 1;
    attribute mti_svvh_generic_type of AC_NUMBER : constant is 1;
end cr_int;
