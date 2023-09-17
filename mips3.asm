.data 
num: .byte 0x20
.text
addi $t1,$0,0x50 # movimenta para $t1 o 0x50 move = addu
addi $t2,$0,0x30 # movimenta para $t2 o 0x30
#add $t3,$t1,$t2  # soma $t1 com $t2 e armazena em $t3 50 + 30 = 80
#sub $t4,$t1,$t2  # subtrai $t1 com $t2 e armazena em $t4 50 - 30 = 20
#mul $t5,$t1,$t2  # multiplica $t1 com $t2 e aramazena em $t5 50 x 30 
#div $t6,$t1,$t2  # divide $t1 com $t2 e aramazena em $t6 50 / 30
#subi $t3,$t1,0x10 #
#or $t4,$t1,$t2    #
#not $t5,$t1       #