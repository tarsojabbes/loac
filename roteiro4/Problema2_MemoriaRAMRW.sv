// Tarso Jabbes Lima de Oliveira
parameter ADDR_WIDTH = 2; // Número de endereços de memória (0 a 4)
parameter DATA_WIDTH = 4; // Tamanho do dado armazenado (4 bits)
module RAM_RW(
  input logic clk, reset, SEL,
  input logic [ADDR_WIDTH-1:0] Addr,
  input logic [DATA_WIDTH-1:0] Din,
  output logic [DATA_WIDTH-1:0] Dout
);
  
  logic [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];
  
  always_ff @ (posedge clk) begin
    if (reset)
      mem[Addr] <= 0; // Operação de Reset no endereço de memória indicado
    else
    	if(SEL)
      		mem[Addr] <= Din;  // Operação de Escrita ("W")
    	else 
      		Dout <= mem[Addr]; // Operação de Leitura ("R")
  end
  
endmodule