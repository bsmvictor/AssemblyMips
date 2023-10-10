#1)
li $t0, 10
li $t1, 25
li $t2, 43
li $t3, 89

#Deslocando para direta em 8 bits
srl $t4, $t0, 8
srl $t5, $t1, 8
srl $t6, $t2, 8
srl $t7, $t3, 8

#Deslocando para esquerda em 4 bits
sll $t4, $t0, 4
sll $t5, $t1, 4
sll $t6, $t2, 4
sll $t7, $t3, 4
#---------------------------------------------
#2)
  #1
  li $s1, 324
  li $s2, 100
  and $s0,$s1,$s2
  
  #2
  li $s1, 2018
  li $s2, 1870
  and $s0,$s1,$s2
  
  #3
  li $s1, 33
  li $s2, 66
  and $s0,$s1,$s2
 #--------------------------------------------- 
#3)
  #1
  li $s1, 324
  li $s2, 100
  or $s0, $s1, $s2
  
  #2
  li $s1, 2018
  li $s2, 1970
  or $s0, $s1, $s2
  
  #3
  li $s1, 33
  li $s2, 66
  or $s0, $s1, $s2
#---------------------------------------------  
#4)
    #1
  li $s1, 324
  li $s2, 100
  nor $s0, $s1, $s2
  
  #2
  li $s1, 2018
  li $s2, 1970
  nor $s0, $s1, $s2
  
  #3
  li $s1, 33
  li $s2, 66
  nor $s0, $s1, $s2
#---------------------------------------------  
#5)
#1
.text

li $s4, 10 # a
li $s5, 10 # b

beq $s4,$s5, true # a == b
j false

true:
add $s3, $s4, $s5 # c = a + b
sub $s4, $s5, $s3 # a = b - c

false:
add $s5, $s4, $s3 # b = a + c
sub $s3, $s5, $s3 # c = b - c

#2
li $s4, 10 # a
li $s5, 10 # b

bne $s4,$s5, true # a != b
j false

true:
add $s3, $s4, $s5 # c = a + b
sub $s4, $s5, $s3 # a = b - c

false:
add $s5, $s4, $s3 # b = a + c
sub $s3, $s5, $s3 # c = b - c

#3
li $s4, 10 # a
li $s5, 10 # b

bgt $s4,$s5, true # a > b
j false

true:
add $s3, $s4, $s5 # c = a + b
sub $s4, $s5, $s3 # a = b - c

false:
add $s5, $s4, $s3 # b = a + c
sub $s3, $s5, $s3 # c = b - c

#4
li $s4, 10 # a
li $s5, 10 # b

blt $s4,$s5, true # a < b
j false

true:
add $s3, $s4, $s5 # c = a + b
sub $s4, $s5, $s3 # a = b - c

false:
add $s5, $s4, $s3 # b = a + c
sub $s3, $s5, $s3 # c = b - c

#5
li $t8, 10 # i
li $t9, 0  # cont

while: 
 bgt $t8, 0, menor # i > 0
 j maior

menor:
 addi $t9, $t9, 5 # cont += 5
 addi $t8, $t8, 2 # i -= 2
 j while
maior:
#---------------------------------------------



 

