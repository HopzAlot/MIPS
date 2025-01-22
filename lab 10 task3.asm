.text
li $t0,1462736113 #specifying the number
li $t1,32767
li $t2,1073709056
and $s0,$t0,$t1 #getting last 15 bits
and $s1,$t0,$t2 #getting the other 15 bits
srl $s1,$s1,15
srl $s2,$t0,30 #getting the first 2 bits
#specifying values for the given condition
li $t3,0
li $t4,1
li $t5,2
li $t6,3
beq $s2,$t3,addition
beq $s2,$t4,subtraction
beq $s2,$t5,multiplication
beq $s2,$t6,division
#performing the operations according to the value of first 2 bits
addition:
add $s3,$s1,$s0
b exit
subtraction:
sub $s3,$s1,$s0
b exit
multiplication:
mul $s3,$s1,$s0
b exit
division:
div $s3,$s1,$s0
exit:
li $s4,0x10010000
#saving the output into memory
sw $s3,0($s4)