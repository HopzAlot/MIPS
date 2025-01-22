li $a0,5 #specifying value of n
jal fact
move $t0,$v0
li $a0,3 #specifying value of r
jal fact
move $t1,$v0
li $a0,2 #specifying value of (n-r)
jal fact
move $t2,$v0
mul $s0,$t1,$t2
div $s1,$t0,$s0
move $v0,$s1  #final answer(combination of given numbers)
b exit
fact: #factorial calculation
addi $t3,$a0,-1
mul $v0,$a0,$t3
beq $a0,0,condition
slti $t4,$a0,0
beq $t4,1,exit
beq $t3,1,abc
loop:
addi $t3,$t3,-1
mul $v0,$v0,$t3
bne $t3,1,loop
abc:
jr $ra
condition:
li $v0,1
b abc
exit:

