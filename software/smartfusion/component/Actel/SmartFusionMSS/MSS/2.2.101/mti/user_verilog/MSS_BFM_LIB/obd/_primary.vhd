library verilog;
use verilog.vl_types.all;
entity obd is
    generic(
        RESOLUTION      : integer := 0
    );
    port(
        OBD_CONFIG      : in     vl_logic_vector(1 downto 0);
        OBD_DIN         : in     vl_logic;
        OBD_CLKIN       : in     vl_logic;
        OBD_ENABLE      : in     vl_logic;
        DAC_OUT         : out    vl_logic
    );
end obd;
