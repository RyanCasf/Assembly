# Um motorista deseja colocar no seu tanque X reais de gasolina. Escreva um algoritmo para ler o
# valor do pagamento (Deve ser um número INTEIRO), e exibir quantos litros (Número INTEIRO) ele conseguiu colocar 
#no tanque, considerando que o algoritmo já sabe que o combustível custa R$6
.data
	escrevaIntro: .asciiz "GASOLINA\nEntre com o valor do pagamento (inteiro): R$"
	escrevaSaida: .asciiz "\nQuantidade de litros de gasolina adicionado ao tanque: "
.text
main:
	li $v0, 4
	la $a0, escrevaIntro
	syscall
	
	li $v0, 5
	syscall
	
	add $t0, $v0, 0
	
	div $t1, $t0, 6
	
	li $v0, 4
	la $a0, escrevaSaida
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall