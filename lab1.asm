.text
#Soma
# x = 5 + 4 --> tipo R
# A = 5 --> $t1
# B = 4 --> $t2
# X = A + B --> $t3 = $t1 + $t2
li $t1, 5
li $t2, 4
add $t3, $t1, $t2

#--------------------------------------------------------
# x = 10 + 125 --> tipo i
# A = 10 --> $s0
# B = 125
# X = $s1
li $s0, 10
addi $s1, $s0, 125

#--------------------------------------------------------
#Subtração
sub $t4, $s1, $t1	#(resultado, var, var)
subi $t0, $t4, 100	#(resultado, var, const)

#alternativa para subtração
addi $s7, $s1, -10 # soma com num neg é uma sub

#--------------------------------------------------------
#Multiplicação
li $t6, 10
li $t7, 5
mul $s6, $t6, $t7
mul $s5, $t6, 3

#--------------------------------------------------------
#Divisão
div $s7, $s5, 2

#--------------------------------------------------------
#Move é uma soma com 0, pois add é basic, consome menos 