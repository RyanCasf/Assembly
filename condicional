# Faça um algoritmo que leia os valores A, B, C e imprima na tela se a soma de A + B é menor que C
# A+B=SOMAAB SOMAAB<C esc OR SOMAAB>C esc
.data	
	escrevaA: .asciiz "Entre com o valor de A: "
	escrevaB: .asciiz "\nEntre com o valor de B: "
	escrevaC: .asciiz "\nEntre com o valor de C: "
	escrevaMenor: .asciiz "A soma de A e B é Menor que C."
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
	j final
	
menor:
	li $v0, 4
	la $a0, escrevaMenor
	syscall
	j final

final: