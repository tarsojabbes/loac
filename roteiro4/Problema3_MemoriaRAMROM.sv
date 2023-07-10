// Tarso Jabbes Lima de Oliveira
parameter ADDR_WIDTH = 2; // Quantidades de bits para o endereço
parameter DATA_WIDTH = 4; // Tamanho do dado armazenável
module RAM_ROM(
  input logic [ADDR_WIDTH-1:0] Addr,// Endereço
  output logic [DATA_WIDTH-1:0] Dout // Dado armazenado);
  
  always_comb
    case(Addr)
      2'b00: Dout = 4'b0100;
      2'b01: Dout = 4'b1100;
      2'b10: Dout = 4'b0110;
      2'b11: Dout = 4'b0111;
    endcase
  
endmodule