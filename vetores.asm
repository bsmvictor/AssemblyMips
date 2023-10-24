.data #0x10010000
a: .word 2,6,5

.text #0x00400000

la $s1, a #$s1 = 0x10010000
lw $t1, 0($s1) #armazenando conteudo do endereço inicial de $s1
lw $t2, 4($s1) #armazenando conteudo do endereço inicial + 4 de $s1
lw $t3, 8($s1) #armazenando conteudo do endereço inicial + 8 de $s1
#--------------------------------------------------------------------------------
.data #0x10010000
b: .byte 2,6,5,9

.text #0x00400000

la $s1, b #$s1 = 0x10010000
lb $t1, 0($s2) #armazenando conteudo do endereço inicial de $s1
lb $t2, 1($s2) #armazenando conteudo do endereço inicial + 1 de $s1
lb $t3, 2($s2) #armazenando conteudo do endereço inicial + 2 de $s1
lb $t3, 3($s2) #armazenando conteudo do endereço inicial + 3 de $s1
#--------------------------------------------------------------------------------
.data
c: .word 2, 6, 5, 8, 0, -6, 50, 120

.text
la $s1, c #0x10010000
li $t2, 0 #j = 0
li $s0, 0 #e = 0

while; ble $s0, 2, loop #$s0 <= 2
j exit

loop:
sll $t3, $t2, 2
add $t1, $t3, $s1
lw $t5, 0($t1) #$t5 = dadodo end. 0x10010000
addi $s0, $s0, 11
addi $t2, $t2, 1
j while

exit:
la $s1, c

