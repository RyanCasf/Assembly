# Uma f�brica de camisetas produz os tamanhos pequeno, m�dio e grande, cada uma sendo vendida respectivamente por 10, 12 e 15 reais. Construa um algoritmo em que o usu�rio 
# forne�a a quantidade de camisetas pequenas, m�dias e grandes referentes a uma venda, e a m�quina informe quanto ser� o valor total arrecadado.
.data	
	escrevaP: .asciiz "CAMISETAS\nEntre com a quantidade desejada de camisetas Pequenas: "
	escrevaM: .asciiz "\nEntre com a quantidade desejada de camisetas M�dias: "
	escrevaG: .asciiz "\nEntre com a quantidade desejada de camisetas Grandes: "
	escrevaSaida: .asciiz "\nValor das camisetas R$ "
.text
main:
	li $v0, 4
	la $a0, escrevaP
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, escrevaM
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, escrevaG
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	mul $t3, $t0, 10
	mul $t4, $t1, 12
	mul $t5, $t2, 15
	
	add $t6, $t3, $t4
	add $t7, $t6, $t5
	
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall