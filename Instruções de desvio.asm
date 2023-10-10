# INSTRUÇÕES DE DESVIO
.text
#-------------------------------------------------------------
#WHILE
li $t0, 0
li $t2, 0

while: 
 ble $t0, 4, loop # 0,1,2,3,4,5 ; ble: menor igual que  0 <= 2
 j exit

loop:
 addi $t0, $t0, 1 # incremento
 addi $t2, $t2, 1 # increment
 j while
exit:

#-------------------------------------------------------------

li $s1, 4
li $s2, 5
li $s3, 4
li $s4, 5

bne $s3, $s4, A # checar se é diferente de
sub $s0, $s1, $s2
j EXIT

A:
 add $s0, $s1, $s2
EXIT:

#-------------------------------------------------------------


