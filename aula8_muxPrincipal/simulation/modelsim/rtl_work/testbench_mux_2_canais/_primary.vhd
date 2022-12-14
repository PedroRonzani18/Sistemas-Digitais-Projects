library verilog;
use verilog.vl_types.all;
entity testbench_mux_2_canais is
    generic(
        stop_time       : integer := 1000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of stop_time : constant is 1;
end testbench_mux_2_canais;
