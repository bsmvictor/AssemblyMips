#ARRAY
#----------------------------------------------------------------------------------
# .word - 32bits ; .half - 16bits ; .byte -8bits
#.data #0x10010001, apontando para o segundo endereço

 .data #0x10010000 

 a: .word 2,6,5 #0x10010000, 0x10010004, 0x10010008
 
   #load: memoria -> registrador
   #store: registrador -> memoria
 
 .text
  la $s1, a # a = 0x10010000
  lw $t1, 0($s1) # registrador $t1 acessa 0x10010000 da memoria
  lw $t2, 4($s1) #0ffset 4, deslocando 4 na memoria, 0x10010000 + 4 = 0x10010004
  
#----------------------------------------------------------------------------------
