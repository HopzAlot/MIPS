li $t0,1332423  #specifying the number
li $t1,1
li $t2,0xfffffffe
and $t3,$t0,$t1  #checking if the number is even or odd
beq $t3,$zero,even
#converting even to odd and vice versa
odd:
and $s0,$t0,$t2
b exit
even:
ori $s0,$t0,1
exit:
