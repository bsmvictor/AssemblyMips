.data
#n1: .byte 0x20 #0x10010000
#n2: .byte 0x60 #0x10010001
#m: .byte
#.text
#lb $t1,n1
#lb $t2,n2 #colocando no registrador
#add $t3,$t1,$t2 #fazendo a soma
#srl $t4,$t3,1 #deslocar para direita divide, para esquerda multiplica por 2^n, onde n = num de deslocamento

#la $t5,m
#sb $t4,9($t5)

#--------------------------------------------------------------------------------------------------------------

li $t1, 0x10203040
li $t2, 0x5060
li $t3, 0x70
li $s0,0x10010000
sw $t1, 0($s0) #offset 0 -> 0x10010000
sh $t2, 4($s0) #offset 4 -> 0x10010004
sb $t3, 6($s0) #offset 6 -> 0x10010008

#---------------------------------------------------------------------------------------------------------------
