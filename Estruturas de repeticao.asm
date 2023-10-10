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
#WHILE
li $t1, 6 # x
li $t2, 2 # y

while:
blt $t1, 10, menor # x<10
j fim

menor:
addi $t2, $t2, 2 # y = y+2
addi $t1, $t1, 1 # x = x+1
j while
fim:
#----------------------------------------------------
#FOR
li $t1, 1 # x
li $t2, 2 # y
