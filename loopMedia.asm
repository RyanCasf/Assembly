.data
	escrevaIntro: .asciiz "Loop - Insira algum numero para comecar: "
	escrevaEntrada: .asciiz "Digite o respectivo:\n0. Sair (0)\n(*). Continuar loop\n "
	escrevaMedia: .asciiz "\nMedia: "
	escrevaNegativo: .asciiz "\nNegativos: "
	escrevaPositivo: .asciiz "\nPositivos: " 
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bne $t0, 0, while
	j fimse
	
while:
	add $t1, $t1, $t0
	add $t2, $t2, 1
	
	bgt $t0, 0, se
	j fimif
	
	se: 
		add $t3, $t3, 1
		j else
		
	else:
		add $t4, $t4, 1
		j fimif
		
fimif:
	li $v0, 4
	la $a0, escrevaEntrada
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bne $t0, 0, while
	j fimse
	
fimse:
	div $t1, $t1, $t2

	li $v0, 4
	la $a0, escrevaMedia
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaNegativo
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall

	li $v0, 4
	la $a0, escrevaPositivo
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall