.data
	escrevaIntro: .asciiz "Calcula de fatorial!"
	escrevaFatorial: .asciiz "\nDígite o fatorial: "
	escrevaSaida: .asciiz "Resuultado Fatorial: "
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
	li $v0, 4
	la $a0, escrevaFatorial
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	add $t1, $t0, 0
	add $t2, $t3, 1
	
	bgt $t0, 0, fatorial
	j main

fatorial:
	mul $t2, $t2, $t1
	add $t1, $t1, -1
	
	ble $t1, 1, fim
	j fatorial
	
fim:
	li $v0, 4
	la $a0, escrevaSaida
	syscall	
	
	li $v0, 1
	add $a0, $t2, 0
	syscall