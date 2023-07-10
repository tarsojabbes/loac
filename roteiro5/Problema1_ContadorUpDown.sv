// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 4;
module ContadorUpDown(
	input logic clk, reset, SEL,
	output logic [N_BITS-1:0] Saida);
  
  always_ff @ (posedge clk or posedge reset) begin
    // Realização do reset assíncrono
    if (reset) 
      Saida <= 0;
    else
      // Caso de SEL = 1 torna a contagem crescente
      if (SEL)
        Saida <= Saida + 1;
      // Caso de SEL = 0 torna a contagem decrescente
      else
        Saida <= Saida - 1;
  end
endmodule