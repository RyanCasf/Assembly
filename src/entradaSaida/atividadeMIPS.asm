.data
	escrevaEntrada: .asciiz "\nDigite o numero de termos (n): "
	escrevaSaida: .asciiz "RESULTADO DE (H) = "
	escrevaSaidaMenor: .asciiz "Numero digitado (-) negativo, nao pode gerar nenhum termo"
	escrevaSaidaZero: .asciiz "Numero digitado (0), valor de H = 0"
.text
main:
	li $v0, 4
	la $a0, escrevaEntrada
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0 saidaMenor
	beq $t0, 0 saidaZero
	
	li $t4, 1
	j for

saidaZero:
	li $v0, 4
	la $a0, escrevaSaidaZero
	syscall
	j fim
	
saidaMenor:
	li $v0, 4
	la $a0, escrevaSaidaMenor
	syscall
	j fim
	
decisao:
	beq $t4, 1, dobro
	j mono

dobro:
	li $t4, 2
	j for
	
mono:
	li $t4, 1
	j for

for:
	add $t1, $t1, 1
	
	mul $t3, $t1, $t4
	add $t2, $t2, $t3
		
	beq $t1, $t0, resultado
	j decisao
	
resultado:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
	
fim:	
