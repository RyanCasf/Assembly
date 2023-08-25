.data
	escrevaIntro: .asciiz "Calculo de MUV\n\n*Os valores devem ser inteiros Positivos\n"
	escrevaS0: .asciiz "\nDigite o valor de S0 - Espaço inicial: "
	escrevaV0: .asciiz "\nDigite o valor de v0 - Velocidade inicial: "
	escrevaTempo: .asciiz "\nDigite o valor de t - Tempo: "
	escrevaAceleracao: .asciiz "\nDigite o valor de a - Aceleração: "
	escrevaSaida: .asciiz "\n\nValor de S = "
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
entradaS0:	
	li $v0, 4
	la $a0, escrevaS0
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0, entradaS0

entradaV0:
	li $v0, 4
	la $a0, escrevaV0
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	blt $t1, 0, entradaV0
	
entradaTempo:
	li $v0, 4
	la $a0, escrevaTempo
	syscall	
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	blt $t2, 0, entradaTempo

entradaAceleracao:
	li $v0, 4
	la $a0, escrevaAceleracao
	syscall	
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	blt $t3, 0, entradaAceleracao
	
calculo:
	mul $t4, $t2, $t2
	mul $t4, $t4, $t3
	mul $t5, $t1, $t2
	add $t4, $t4, $t5
	add $t4, $t4, $t0
	div $t4, $t4, 2
	
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
