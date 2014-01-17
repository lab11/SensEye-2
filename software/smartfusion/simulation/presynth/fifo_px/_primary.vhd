library verilog;
use verilog.vl_types.all;
entity fifo_px is
    port(
        DATA            : in     vl_logic_vector(7 downto 0);
        Q               : out    vl_logic_vector(31 downto 0);
        WE              : in     vl_logic;
        RE              : in     vl_logic;
        CLK             : in     vl_logic;
        FULL            : out    vl_logic;
        EMPTY           : out    vl_logic;
        RESET           : in     vl_logic;
        AFULL           : out    vl_logic;
        OVERFLOW        : out    vl_logic;
        UNDERFLOW       : out    vl_logic
    );
end fifo_px;
