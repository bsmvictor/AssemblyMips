.text
#a) 2+5
li $t0, 2
li $t1, 5
add $t2, $t0, $t1

#b) 89+20
li $t3, 89
li $t4, 20
add $t5, $t3, $t4

#c) -80+1234
li $t6, 1234
addi $t7, $t6, -80

#d) 70-24
li $s0, 70
li $s1, 24
sub $s2, $s0, $s1

#e) 20-150
li $s3, 20
li $s4, 150
sub, $s5, $s3, $s4

#Desafio 1
li $v0, 5	# lendo um inteiro
syscall		# chamada de sistema
addi $s6, $v0, 30
li $v0, 1	# imprimindo um inteiro
move $a0, $s6	# movendo $s6 (resultado da idade) para $a0
syscall		# chamada de sistema

#Desafio 2
li $s7, 54	   # a = 45
li $t8, 45 	   # b = 54
li $v0, 1	   # imprimindo um inteiro
add $t9, $s7, $t8  # soma 54+45
move $a0, $t9      # movendo $t9 para $a0
syscall		   # chamada de sistema
