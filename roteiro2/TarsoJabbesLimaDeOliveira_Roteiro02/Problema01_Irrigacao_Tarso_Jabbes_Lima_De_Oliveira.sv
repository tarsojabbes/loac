// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 2;
module Irrigacao(input logic [N_BITS-1:0] U,
                 output logic [N_BITS-1:0] Saida);
  always_comb begin
    Saida <= U; // Atribui valor do sensor de umidade à saída 
  end

endmodule