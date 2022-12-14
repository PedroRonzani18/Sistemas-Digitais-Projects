library verilog;
use verilog.vl_types.all;
entity mux_2canais is
    port(
        X               : in     vl_logic;
        Y               : in     vl_logic;
        sel             : in     vl_logic;
        saida           : out    vl_logic
    );
end mux_2canais;
