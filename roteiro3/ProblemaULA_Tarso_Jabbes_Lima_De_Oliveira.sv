// Tarso Jabbes Lima de Oliveira
module ULA(
            input logic signed [7:0]A, B,
            input logic [1:0]F,
            output logic signed [7:0] Saida,
            output logic FLAG_O);

    always_comb begin
      case (F)
      'b00: Saida <= A & B; // Operação bit a bit para AND de A e B 
      'b01: Saida <= A | B; // Operação bit a bit para OR de A e B
      'b10: Saida <= A + B; // Operação de soma entre A e B
      'b11: Saida <= A - B; // Operação de subtração entre A e B
    endcase


      if (F == 'b10 && A >= 0 && B >= 0 && Saida < 0 ||
          F == 'b10 && A < 0 && B < 0 && Saida > 0 ||
          F == 'b11 && A < 0  && B > 0 && Saida >= 0 ||
          F == 'b11 && A > 0 && B < 0 && Saida < 0)
      	FLAG_O <= 1;
      else
      FLAG_O <= 0;
    end

endmodule