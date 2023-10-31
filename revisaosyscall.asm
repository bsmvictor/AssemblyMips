# saida de dados (print)
#int
.text

li $v0,1
li $a0, 450
syscall

#float
.data
pi: .float 3.14

.text
li $v0,2
lwc1  $f12, pi #coproc1
syscall

#double
.data
double: .double 53.60245
zero: .double 0.0

.text
ldc1 $f2, double #coproc1
ldc1 $f0, zero #coproc1
li $v0,3
add.d $f12, $f2, $f0
syscall

#string
.data
a: .asciiz "Entre com o seu nome: "

.text
li $v0, 4
la $a0, a
syscall
#---------------------------------------------------------------------------------------
# entrada de dados
#Integer
.text
li $v0,5
syscall

move $s1, $v0

#Float
.data
msg: .asciiz "Forneça um numero decimal:"
dez: .float 10.0

.text
li $v0,4
la $a0, msg # imprimindo a msg
syscall

li $v0, 6 #entre com um float armazenado em $f0
syscall

lwc1 $f1, dez
add.s $f12, $f1, $f0

li $v0, 2
syscall

#Double
.data
msg2: .asciiz "Forneça um numero decimal:"
onze: .double 11.0

.text
li $v0,4
la $a0, msg2 # imprimindo a msg
syscall

li $v0, 7 #entre com um double armazenado em $f0
syscall

ldc1 $f2, onze
add.d $f12, $f1, $f0

li $v0, 3
syscall
#---------------------------------------------------------------------------------------
#space
.data
space: .space 5

.text
li $v0,8
la $a0, space
li $a1, 5
syscall