# Tarso Jabbes Lima de Oliveira
# Problema 2 - Roteiro 7

lui x5, 0x10000		# Carrega o valor 0x10000 nos 20 bits mais significativos de x5
addi x5, x5, 0x000	# Carrega o valor 0x000 nos 12 bits menos significativos de x5

addi x6, x0, 0xFE	# x6 = 0xFE ou x6 = 254
sw x6, 12(x5)		# Armazena o valor de x6 no endereço de memória de x5 aponta somado em 12
lw x10, 12(x5)		# Carrega em x10 o valor armazenado no endereço de memória de (x5 + 12)