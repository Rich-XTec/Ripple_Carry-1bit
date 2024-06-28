library verilog;
use verilog.vl_types.all;
entity half_adder is
    port(
        a_i             : in     vl_logic;
        b_i             : in     vl_logic;
        s_o             : out    vl_logic;
        c_o             : out    vl_logic
    );
end half_adder;
