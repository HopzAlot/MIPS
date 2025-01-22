.text
li $s0,5
loop:
slti $t0,$s0,1
beq $t0,1,exit
addi $s0,$s0,-1
b loop
exit: