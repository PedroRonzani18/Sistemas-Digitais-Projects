library verilog;
use verilog.vl_types.all;
entity contadorDecada is
    port(
        CLOCK_50        : in     vl_logic;
        HEX0            : out    vl_logic_vector(0 to 6);
        SW              : in     vl_logic_vector(17 downto 0)
    );
end contadorDecada;
