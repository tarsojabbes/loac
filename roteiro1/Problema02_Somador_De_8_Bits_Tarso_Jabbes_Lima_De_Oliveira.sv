// Problema 02 - Somador de 8 Bits
// Aluno: Tarso Jabbes Lima de Oliveira
parameter N_BITS = 8;
module Somador8Bits(input logic [N_BITS - 1:0] A, B,
                    output logic [N_BITS - 1:0] S,
                   output logic Z, N, P);
  always_comb S <= A + B;
  always_comb Z <= S == 0;
  always_comb N <= S < 0;
  always_comb P <= S%2 ==0;
endmodule