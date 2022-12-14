library verilog;
use verilog.vl_types.all;
entity comparador is
    port(
        ig              : out    vl_logic;
        me              : out    vl_logic;
        ma              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        ha              : in     vl_logic
    );
end comparador;
