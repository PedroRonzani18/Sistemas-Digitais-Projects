library verilog;
use verilog.vl_types.all;
entity muxPrincipal is
    port(
        I               : in     vl_logic_vector(0 to 3);
        Sel             : in     vl_logic_vector(0 to 1);
        O               : out    vl_logic
    );
end muxPrincipal;
