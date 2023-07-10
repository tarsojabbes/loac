// Problema 02 - Somador de 8 Bits
// Aluno: Tarso Jabbes Lima de Oliveira
parameter N_BITS = 8;
module Somador8Bits(input logic signed [N_BITS - 1:0] A, B,
                    output logic signed [N_BITS - 1:0] S,
                   output logic Z, N, P);
  always_comb begin 
	S <= A + B; // Soma dois números de 8 bits
	Z <= S == 0; // Checa se a soma é zero
  	N <= S < 0; // Checa se a soma é menor que zero
  	P <= S%2 ==0; // Checa se a soma é par
  end
endmodule
