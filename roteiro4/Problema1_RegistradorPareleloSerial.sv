// Tarso Jabbes Lima de Oliveira
parameter N_BITS = 4; // Número de bits armazenados
module RegistradorPareleloSerial(
    input logic clk, reset, 
    input logic Din_serie, // Entrada serial
    input logic SEL, // Variável de seleção entre paralelo e serial
  input logic [N_BITS-1:0] Din, // Entrada paralela
  output logic [N_BITS-1:0] Dout // Saída

);
    always_ff @ (posedge reset or posedge clk) begin
        if (reset)
            Dout <= 0; // Caso de reset do valor de saída
        else begin
            if (SEL)
              	// Registro de forma serial
                Dout <= {Din_serie, Dout[N_BITS-1:1]};
            else 
              	// Registro de forma paralela
                Dout <= Din;
        end
    end
endmodule
