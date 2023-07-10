// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 4;
module ContadorSequenciaQualquer(
  input logic clk, reset, load,
  input [N_BITS-1:0] Data_In,
  output logic [N_BITS-1:0] Count
);
  always_ff @ (posedge clk) begin
    // Reset síncrono que volta a contagem para 1
    if (reset)
      Count <= 4'b0001;
    // Quando queremos carregar a saída com uma entrada paralela
    else if (load)
      Count <= Data_In;
    else
      // Implementação da contagem 1 -> 2 -> 4 -> 8 -> 1...
      unique case (Count)
        1: Count <= 2;
        2: Count <= 4;
        4: Count <= 8;
        8: Count <= 1;
      endcase
  end
endmodule