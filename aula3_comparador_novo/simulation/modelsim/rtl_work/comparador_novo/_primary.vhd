library verilog;
use verilog.vl_types.all;
entity comparador_novo is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        ig              : out    vl_logic;
        me              : out    vl_logic;
        ma              : out    vl_logic
    );
end comparador_novo;
