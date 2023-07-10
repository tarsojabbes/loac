// Tarso Jabbes Lima de Oliveira
 parameter TAMANHO = 1;
 module DetectorParidadePar(
  input clk, reset, in_bit, 
  output out_bit);
  
   // Definição do estados possíveis
   enum logic [TAMANHO-1 : 0] {PAR, IMPAR} state;
    
  always_ff @ (posedge clk)
    // Realização do reset síncrono
     if (reset) state <= PAR;
     else
       // Implementação dos estados
		unique case (state)
			PAR:
              // Se tem um número par de bits iguais a 1
              // e recebe um bit igual a 1, então passa a ter
              // um número ímpar de bits iguais a 1
              if (in_bit == 1)
                state <= IMPAR;
			IMPAR:
              // Se tem um número impar de bit iguais a 1
              // e recebe um bit igual a 1, então passa a ter
              // um número par de bits iguais a 1
              if (in_bit == 1)
					state <= PAR;
		endcase

   // Determina se temos um número ímpar ou par de bits iguais 1
   // Deve retorna 1 se for ímpar (erro)
   always_comb out_bit <= (state == IMPAR);
 
endmodule