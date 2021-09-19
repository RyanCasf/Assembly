# Cálculo do quadrado do Número 5
.data # Cadeia de pequenos de scaracteres (32 bits nos $a0)
	escrevaIntro: .asciiz "Digite o numero para obter o quadrado: "
.text # Cadeia de grandes de caracteres
main: # Início do código
	
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
	li $v0, 5
	syscall

	add $t0, $v0, 0
	mul $t1, $t0, $t0

	li $v0, 1
	add $a0, $t1, 0
	syscall