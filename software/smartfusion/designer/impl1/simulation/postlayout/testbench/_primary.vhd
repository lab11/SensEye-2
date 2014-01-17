library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        SYSCLK_PERIOD   : integer := 100
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYSCLK_PERIOD : constant is 1;
end testbench;
