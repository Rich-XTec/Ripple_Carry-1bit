/* Full_adder of 1 bit
	by richard 05/04/2024
*/

module  full_adder (
	a_i,
	b_i,
	c_i,
	s_o,
	c_o
);
	input a_i, b_i,c_i;
	output s_o, c_o;

	wire w_carry1, w_carry2, w_sum;

half_adder U0(
	.a_i(a_i),
	.b_i(b_i),
	.s_o(w_sum),
	.c_o(w_carry1)
);

half_adder U1(
	.a_i(w_sum),
	.b_i(c_i),
	.s_o(s_o),
	.c_o(w_carry2)
);
or U2(c_o, w_carry1, w_carry2);

endmodule