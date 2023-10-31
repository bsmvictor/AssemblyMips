.data
prompt:     .asciiz "Digite um número N: "
result:     .asciiz "A diferença é: "

.text
.globl main

main:
    # Prompt para inserir o valor de N
    li $v0, 4
    la $a0, prompt
    syscall

    # Ler o valor de N
    li $v0, 5
    syscall
    move $t0, $v0 # $t0 contém o valor de N

    # Inicializar as variáveis para a soma da soma e a soma dos quadrados
    li $t1, 0   # $t1 armazena a soma dos números naturais
    li $t2, 0   # $t2 armazena a soma dos quadrados

    # Calcular a soma dos N primeiros números naturais
    li $t3, 1   # Inicializa o contador para 1
    soman:
        add $t1, $t1, $t3   # Soma o valor do contador a $t1
        addi $t3, $t3, 1     # Incrementa o contador
        bne $t3, $t0, soman  # Continua o loop enquanto o contador não atingir N

    # Calcular a soma dos quadrados dos N primeiros números naturais
    li $t3, 1   # Reinicializa o contador para 1
    somaquadrado:
        mul $t4, $t3, $t3   # Calcula o quadrado do contador
        add $t2, $t2, $t4   # Soma o quadrado a $t2
        addi $t3, $t3, 1     # Incrementa o contador
        bne $t3, $t0, somaquadrado  # Continua o loop enquanto o contador não atingir N

    # Calcular o quadrado da soma
    mul $t1, $t1, $t1

    # Calcular a diferença
    sub $t1, $t1, $t2

    # Imprimir o resultado
    li $v0, 4
    la $a0, result
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    # Sair do programa
    li $v0, 10
    syscall
