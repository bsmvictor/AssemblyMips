.text
#----------------------------------------------------
#IF
li $t1, 12 # x
li $t2, 2  # y

blt $t1, 10, menor # x<10
addi $t2,$t2,-1 # y = y-1
j fim

menor:
addi $t2, $t2, 2 # y = y+2
fim:
#----------------------------------------------------

