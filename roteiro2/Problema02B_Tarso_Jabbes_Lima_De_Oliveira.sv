// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 4;
module Roteamento(input logic [N_BITS-1:0] A, B, C, D,
                  input logic [1:0] SEL,
                  output logic [N_BITS-1:0] Saida);
  always_comb begin
    case (SEL)
      2'b00: Saida <= A; // Saída é A caso SEL seja 00
      2'b01: Saida <= B; // Saída é B caso SEL seja 01
      2'b10: Saida <= C; // Saída é C caso SEL seja 10
      2'b11: Saida <= D; // Saída é D caso SEL seja 11
    endcase
  end
endmodule