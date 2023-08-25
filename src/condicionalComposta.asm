# Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, imprimindo o resultado
.data
	escrevaEntrada: .asciiz "Entre com um valor: "
	escrevaSaida: .asciiz "Resultado: "
.text
main:
	li $v0, 4
	la $a0, escrevaEntrada
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bge $t0, 0, positivo
	j negativo
	
negativo:
	mul $t1, $t0, 3
	j final
	
positivo:
	mul $t1, $t0, 2
	j final

final:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall