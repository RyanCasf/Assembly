# Cálculo do quadrado do Número 5
.data # Cadeia de pequenos de scaracteres (32 bits nos $a0)
       escreva00: .asciiz"Quadrado = " #binário para ASCII
.text # Cadeia de grandes de caracteres
main: # Início do código
	
	li $t0, 5
	mul $t1, $t0, $t0
	
	li $v0, 4
		la $a0, escreva00	# Atribuição .data -> registrador
	syscall # interrupção

	li $v0, 1
		add $a0, $t1, 0
	syscall