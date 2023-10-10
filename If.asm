.text

li $t1, 12
li $t2, 2

blt $t1, 10, menor
addi $t2,$t2,-1 #subtraindo 1
j fim

menor:
addi $t2, $t2, 2

fim:

