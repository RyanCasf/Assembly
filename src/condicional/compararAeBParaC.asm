.data
	escrevaA: .asciiz "Entre com o valor de A: "
	escrevaB: .asciiz "Entre com o valor de B: "
	escrevaC: .asciiz "Entre com o valor de C: "
	escrevaMenor: .asciiz "A soma de A e B � Menor que C."
	escrevaMaior: .asciiz "A soma de A e B � Maior que C."
	escrevaIgual: .asciiz "A, B e C s�o iguais."
.text
main:
	li $v0, 4
	la $a0, escrevaA
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, escrevaB
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, escrevaC
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	add $t3, $t0, $t1
	
	blt $t3, $t2, menor
	bgt $t3, $t2, maior
	
	li $v0, 4
	la $a0, escrevaIgual
	syscall
	j final
	
menor:
	li $v0, 4
	la $a0, escrevaMenor
	syscall
	j final
	
maior:
	li $v0, 4
	la $a0, escrevaMaior
	syscall
	j final

final:
