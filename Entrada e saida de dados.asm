
.data
f1: .asciiz "Entre com um numero: "
f_par: .asciiz "PAR!"
f_impar: .asciiz "IMPAR!"

.text
li $v0,4
la $a0, f1
li $t2, 2
syscall

li $v0, 5
syscall
add $t1, $v0, $s0
div $t1, $t2

mfhi $t3 # desloca o resto da divisao em $t3
beqz $t3, par # se $t3 for igual a 0

impar: 
li $v0, 4
la $a0,f_impar
syscall
j fim

par:
li $v0, 4
la $a0,f_par
syscall

fim: 
li, $v0, 10
syscall

