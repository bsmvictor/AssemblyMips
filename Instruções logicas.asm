# INSTRUÇÕES LÓGICAS
.text
#-------------------------------------------------------------

#Lógica AND
li $t1, 10
li $t2, 8
and $t0, $t1, $t2 # 10 and 8 = 8
andi $t3, $t1, 8
#OR/ ORI/ NOR/ XOR/ XORI

#-------------------------------------------------------------

#Set lees than ( menor que ) 1 = verdadeiro 0 = falso
slt $t4, $t1, $t2 # 10 < 8
slti $t5, $t1, 10

#-------------------------------------------------------------

#Shift left logical ( Deslocamento de bits para esquerda )
sll $s0, $t1, 2 # 2^x * 10

#Shift right logical ( Deslocamento de bits para direita )
srl $t7, $t1, 1 # 10/2^x

#Shift right arithmetic ( manter o sinal no numero )
sra $t1, $t2, 2

#-------------------------------------------------------------

