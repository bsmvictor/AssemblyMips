.data
f1: .asciiz "maior que 100"
f2: .asciiz "menor que 100"
f3: .asciiz "igual a 100"

.text 
#entrando com o primeiro valor e armazenando em $s0
li $v0, 5
syscall
add $s0, $v0,$0

#entrando com o segundo valor e armazenando em $s1
li $v0, 5
syscall
add $s1, $v0,$0

#entrando com o terceiro valor e armazenando em $s2
li $v0, 5
syscall
add $s2, $v0,$0

#somando valores digitados
add $s0,$s0,$s1
add $s0,$s0,$s2

#verificando se a soma
bgt $s0, 100, maior
blt $s0, 100, menor
beq $s0, 100, igual

#caso maior
maior:
li $v0, 4
la $a0, f1
syscall
j fim

#caso menor
menor:
li $v0, 4
la $a0, f2
syscall
j fim

#caso igual
igual:
li $v0, 4
la $a0, f3
syscall
j fim

#finalizando programa
fim:
li $v0, 10
syscall
