// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 4;
module Roteamento(input logic [N_BITS-1:0] A, B,
                  input logic SEL,
                  output logic [N_BITS-1:0] Saida);
  
  always_comb begin
    if (SEL) Saida <= A; // Determina que a saída recebe valor de A caso SEL == 1
    else Saida <= B; // Determina que a saída recebe valor de B caso SEL == 0
  end
endmodule