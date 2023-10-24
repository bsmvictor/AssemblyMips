.data
input_prompt: .asciiz "Digite um número inteiro: "   # Prompt para o usuário
output_prime: .asciiz "O número é primo.\n"         # Mensagem de saída se for primo
output_not_prime: .asciiz "O número não é primo.\n" # Mensagem de saída se não for primo

.text
.globl main

main:
    # Imprimir o prompt
    li $v0, 4
    la $a0, input_prompt
    syscall

    # Ler um número inteiro do usuário
    li $v0, 5
    syscall

    # Armazenar o número lido em $t0
    move $t0, $v0

    # Verificar se o número é menor ou igual a 1 (não é primo)
    blez $t0, not_prime

    # Inicializar variáveis de controle
    li $t1, 2       # Inicializar o divisor com 2
    li $t2, 0       # Inicializar o contador de divisores com 0

loop:
    # Verificar se o divisor (t1) é maior que o número (t0)
    bge $t1, $t0, check_divisor

    # Verificar se t0 é divisível por t1
    div $t0, $t1
    mfhi $t3

    # Se o resto (t3) for zero, t0 é divisível por t1
    beqz $t3, not_prime

    # Caso contrário, incrementar o divisor (t1) e continuar o loop
    addi $t1, $t1, 1
    j loop

check_divisor:
    # Verificar se o contador de divisores (t2) é zero
    beqz $t2, is_prime

    # Se o contador de divisores (t2) for maior que zero, não é primo
    j not_prime

is_prime:
    # Imprimir "O número é primo."
    li $v0, 4
    la $a0, output_prime
    syscall
    j end

not_prime:
    # Imprimir "O número não é primo."
    li $v0, 4
    la $a0, output_not_prime
    syscall

end:
    # Encerrar o programa
    li $v0, 10
    syscall
