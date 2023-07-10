// Tarso Jabbes Lima de Oliveira
module DetectorSequencia(
	input logic clk, reset, in_bit,
	output alarme
);
  // Estados possíveis:
  // Lampada 1 estar acesa, Lampada 2 estar acesar,
  // Lampada 3 estar acesa e o alarme estar acionado
  enum logic [1:0] {Lampada1, Lampada2, Lampada3, Acionamento} estado;
  
  always_ff @ (posedge clk) begin
    // Realização do reset sincrono
    if (reset) estado <= Lampada1;
  	else
      // Implementação da mudança dos estados
      unique case (estado)
        Lampada1:
          if (in_bit == 0)
            estado <= Lampada1;
          else
            estado <= Lampada2;
        Lampada2:
          if (in_bit == 0)
            estado <= Lampada1;
          else
            estado <= Lampada3;
        Lampada3:
          if (in_bit == 0)
            estado <= Lampada1;
          else
            estado <= Acionamento;
        // O estado Acionamento só ocorre quando
        // Lampada1, Lampada2 e Lampada3 são ligadas
        // sequencialmente.
        Acionamento:
          // Caso se receba um bit 0 após o acionamento,
          // o sistema volta a esperar que as 3 lampadas
          // sejam acesas sequencialmente
          if (in_bit == 0)
            estado <= Lampada1;
          else
            estado <= Acionamento;
      endcase
  end
  
  // Varifica se o estado é de acionamento para
  // que a saída para o alarme seja 1.
  always_comb alarme <= (estado == Acionamento);
  
endmodule