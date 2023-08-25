.data
	escrevaIntro: .asciiz "LOOP com retorno de areas preenchidas!" 
	escrevaEntrada: .asciiz "\nDigite um numero Inteiro:\nEntre com um número negativo para sair.\n"
	escrevaSaida00: .asciiz "\nTotal de numeros digitados: "
	escrevaSaida01: .asciiz "\nRESULTADO de 000-033: "
	escrevaSaida02: .asciiz "\nRESULTADO de 034-066: "
	escrevaSaida03: .asciiz "\nRESULTADO de 067-100: "
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall

	li $v0, 4
	la $a0, escrevaEntrada
	syscall 

	li $v0, 5
	syscall
	add $t0, $v0, 0

	bgt $t0, 100 main
	blt $t0, 0 fim 
	
	li $t4, 0
	
	j controlador

controlador: 
	add $t4, $t4, 1
	ble $t0, 33 contar0a33
	ble $t0, 66 contar34a66 
	j contar67a100

contar0a33:
	add $t5, $t5, 1
	j main

contar34a66:
	add $t6, $t6, 1
	j main

contar67a100:
	add $t7, $t7, 1
	j main

fim:	
	li $v0, 4 
	la $a0, escrevaSaida00
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall 
	
	li $v0, 4 
	la $a0, escrevaSaida01
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall 

	li $v0, 4 
	la $a0, escrevaSaida02
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall

	li $v0, 4 
	la $a0, escrevaSaida03
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall