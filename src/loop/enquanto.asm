# Fazer um algoritmo que leia 5 n�meros INTEIROS e, imediatamente ao ler o n�mero, mostre o quadrado daquele n�mero
.data
	escrevaEntrada: .asciiz "\n\nEntre com um numero: "
	escrevaQuadrado: .asciiz "Quadrado = "
.text
main:
	li $t2, 1

enquanto:
	li $v0, 4
	la $a0, escrevaEntrada
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0

	mul $t1, $t0, $t0

	li $v0, 4
	la $a0, escrevaQuadrado
	syscall

	li $v0, 1
	add $a0, $t1, 0
	syscall

	add $t2, $t2, 1

	ble $t2, 5, enquanto