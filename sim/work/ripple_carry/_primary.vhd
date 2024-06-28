library verilog;
use verilog.vl_types.all;
entity ripple_carry is
    port(
        a_i             : in     vl_logic_vector(3 downto 0);
        b_i             : in     vl_logic_vector(3 downto 0);
        c_i             : in     vl_logic;
        s_o             : out    vl_logic_vector(3 downto 0);
        c_o             : out    vl_logic
    );
end ripple_carry;
