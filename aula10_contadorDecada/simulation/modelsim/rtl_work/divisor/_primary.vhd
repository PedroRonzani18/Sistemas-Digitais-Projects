library verilog;
use verilog.vl_types.all;
entity divisor is
    port(
        reset           : in     vl_logic;
        CLOCK_50        : in     vl_logic;
        novo_clock      : out    vl_logic
    );
end divisor;
