# Tarso Jabbes Lima de Oliveira
# Problema 1 - Roteiro 7

		addi a1, zero, 5 	# Carrega o valor que queremos descobrir o fatorial em a1
        addi a2, zero, 1 	# Carrega 1 em a2 para ser a condição de parada
        addi a5, zero, 1	# Carrega 1 em a5 para multiplicação efetiva entre termos
        
loop:	beq a1, a2, fim		# Condição de parada do fatorial que atinge 1
		beq a1, zero, fim	# Condição de parada para N = 0
		addi a3, a1, -1		# Carrega em a3 o antecedente de a1
		mul a4, a1, a3		# Multiplica a1 com o seu antecedente e guarda em a4
        mul a5, a5, a4		# Multiplica o último valor de a5 com o valor de a4
        addi a1, a1, -2		# Decrementa a1 em 2 unidades
        j loop				# Repete a execução do loop
        
fim: nop					# Finaliza a execução