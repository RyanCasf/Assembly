# C�lculo do quadrado do N�mero 5
.data # Cadeia de pequenos de scaracteres (32 bits nos $a0)
       escreva00: .asciiz"Quadrado = " #bin�rio para ASCII
.text # Cadeia de grandes de caracteres
main: # In�cio do c�digo
	
	li $t0, 5
	mul $t1, $t0, $t0
	
	li $v0, 4
		la $a0, escreva00	# Atribui��o .data -> registrador
	syscall # interrup��o

	li $v0, 1
		add $a0, $t1, 0
	syscall