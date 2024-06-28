/* Full_adder of 1 bit
	by richard 05/04/2024
*/
 `timescale 10ns/100ps //escala de tempo/precisao de tempo(zoom)

module  ripple_carry_tb;
  
	reg [3:0]a_tb, b_tb ;
	reg ci_tb;
	wire [3:0]s_tb; 
	wire co_tb; //Ler as saidas pelos fios

ripple_carry U4(
	.a_i(a_tb), //receber os valores do testBench em cada posicao
	.b_i(b_tb),
	.c_i(ci_tb),
	.s_o(s_tb), //entregar os valores os testBench
	.c_o(co_tb)  
);

initial
begin
  a_tb[0] = 0;
  a_tb[1] = 0;
  a_tb[2] = 0;
  a_tb[3] = 0;
  b_tb[0] = 0;
  b_tb[1] = 0;
  b_tb[2] = 0;
  b_tb[3] = 0;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 0;
  a_tb[2] = 0;
  a_tb[3] = 0;
  b_tb[0] = 1;
  b_tb[1] = 0;
  b_tb[2] = 0;
  b_tb[3] = 0;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 1;
  a_tb[2] = 0;
  a_tb[3] = 0;
  b_tb[0] = 0;
  b_tb[1] = 1;
  b_tb[2] = 0;
  b_tb[3] = 0;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 1;
  a_tb[2] = 0;
  a_tb[3] = 0;
  b_tb[0] = 1;
  b_tb[1] = 1;
  b_tb[2] = 0;
  b_tb[3] = 0;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 0;
  a_tb[2] = 1;
  a_tb[3] = 0;
  b_tb[0] = 0;
  b_tb[1] = 0;
  b_tb[2] = 1;
  b_tb[3] = 0;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 0;
  a_tb[2] = 1;
  a_tb[3] = 0;
  b_tb[0] = 1;
  b_tb[1] = 0;
  b_tb[2] = 1;
  b_tb[3] = 0;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 1;
  a_tb[2] = 1;
  a_tb[3] = 0;
  b_tb[0] = 0;
  b_tb[1] = 1;
  b_tb[2] = 1;
  b_tb[3] = 0;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 1;
  a_tb[2] = 1;
  a_tb[3] = 0;
  b_tb[0] = 1;
  b_tb[1] = 1;
  b_tb[2] = 1;
  b_tb[3] = 0;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 0;
  a_tb[2] = 0;
  a_tb[3] = 1;
  b_tb[0] = 0;
  b_tb[1] = 0;
  b_tb[2] = 0;
  b_tb[3] = 1;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 0;
  a_tb[2] = 0;
  a_tb[3] = 1;
  b_tb[0] = 1;
  b_tb[1] = 0;
  b_tb[2] = 0;
  b_tb[3] = 1;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 1;
  a_tb[2] = 0;
  a_tb[3] = 1;
  b_tb[0] = 0;
  b_tb[1] = 1;
  b_tb[2] = 0;
  b_tb[3] = 1;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 1;
  a_tb[2] = 0;
  a_tb[3] = 1;
  b_tb[0] = 1;
  b_tb[1] = 1;
  b_tb[2] = 0;
  b_tb[3] = 1;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 0;
  a_tb[2] = 1;
  a_tb[3] = 1;
  b_tb[0] = 0;
  b_tb[1] = 0;
  b_tb[2] = 1;
  b_tb[3] = 1;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 0;
  a_tb[2] = 1;
  a_tb[3] = 1;
  b_tb[0] = 1;
  b_tb[1] = 0;
  b_tb[2] = 1;
  b_tb[3] = 1;
  ci_tb = 1;
  #5;//delay 5
  a_tb[0] = 0;
  a_tb[1] = 1;
  a_tb[2] = 1;
  a_tb[3] = 1;
  b_tb[0] = 0;
  b_tb[1] = 1;
  b_tb[2] = 1;
  b_tb[3] = 1;
  ci_tb = 0;
  #5;//delay 5
  a_tb[0] = 1;
  a_tb[1] = 1;
  a_tb[2] = 1;
  a_tb[3] = 1;
  b_tb[0] = 1;
  b_tb[1] = 1;
  b_tb[2] = 1;
  b_tb[3] = 1;
  ci_tb = 1;
  #20;//delay 20
  $stop;
end


always @(a_tb or b_tb or ci_tb) $display("a=%b ",a_tb, "b=%b ",b_tb, "s=%b ",s_tb,"ci=%b ", ci_tb);

endmodule