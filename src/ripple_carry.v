/* Full_adder of 1 bit
	by richard 05/04/2024
*/

module  ripple_carry (
	a_i,
	b_i,
	c_i,
	s_o,
	c_o
);
	input [3:0]a_i,b_i;
	input c_i;
	output [3:0]s_o;
	output c_o;

	wire w_carry1,w_carry2,w_carry3;

full_adder U0(
	.a_i(a_i[0]),
	.b_i(b_i[0]),
	.c_i(c_i),
	.s_o(s_o[0]),
	.c_o(w_carry1)
);
full_adder U1(
	.a_i(a_i[1]),
	.b_i(b_i[1]),
	.c_i(w_carry1),
	.s_o(s_o[1]),
	.c_o(w_carry2)
);
full_adder U2(
	.a_i(a_i[2]),
	.b_i(b_i[2]),
	.c_i(w_carry2),
	.s_o(s_o[2]),
	.c_o(w_carry3)
);
full_adder U3(
	.a_i(a_i[3]),
	.b_i(b_i[3]),
	.c_i(w_carry3),
	.s_o(s_o[3]),
	.c_o(c_o)
);

endmodule