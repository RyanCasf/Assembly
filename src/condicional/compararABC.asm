.data
	escrevaIntro: .asciiz "Ordenacao de numeros inteiros diferentes\n*Os numeros devem ser distintos\n"
	escrevaNum1: .asciiz "\nDigite o Primeiro valor: "
	escrevaNum2: .asciiz "\nDigite o Segundo valor: "
	escrevaNum3: .asciiz "\nDigite o Terceiro valor: "
	escrevaSaida: .asciiz "\n\nRESULTADO = "
	escrevaVirgula: .asciiz ", "
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
entradaNum1:
	li $v0, 4
	la $a0, escrevaNum1
	syscall	
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
entradaNum2:
	li $v0, 4
	la $a0, escrevaNum2
	syscall	
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t1, $t0, entradaNum2
	
entradaNum3:
	li $v0, 4
	la $a0, escrevaNum3
	syscall	
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	beq $t2, $t0, entradaNum3
	beq $t2, $t1, entradaNum3
	
resultado:
	bgt $t0, $t1, saida1
	bgt $t1, $t2, saida6
	j saida5
	
saida1:
	bgt $t1, $t2, saida2
	bgt $t0, $t2, saida3
	j saida4
		
saida2:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
	
saida3:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	j fim
	
saida4:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	j fim

saida5:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	j fim	
	
saida6:
	bgt $t0, $t2, saida7
	j saida8

saida7:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	j fim
	
saida8:
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, escrevaVirgula
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall

	j fim

fim:
	