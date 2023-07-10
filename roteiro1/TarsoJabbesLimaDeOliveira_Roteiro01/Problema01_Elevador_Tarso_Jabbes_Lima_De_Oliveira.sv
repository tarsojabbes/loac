// Problema 01 - Elevador
// Aluno: Tarso Jabbes Lima de Oliveira
module Elevador(input logic A1, A2, A3, M,
               output logic P);
  always_comb P <= ~M & (A1 || A2 || A3); // Determina se o elevador está em algum andar
  					  // e se ele está em movimento
endmodule
