.data
a: .ascii "The smallest number is:"
.text
la $t8,0($gp)
li $t0,0x10010020
move $s0,$t0
loop:
li $v0,5
syscall
slti $t2,$v0,0
beq $t2,1,hello
addi $t7,$t7,1
sw $v0,0($t0)
addi $t0,$t0,4
b loop
hello:
lw $t3,0($s0)
beq $t7,$t6,exit
jump:
lw $t4,4($s0)
slt $t5,$t3,$t4
addi $t6,$t6,1
addi $s0,$s0,4
beq $t7,$t6,exit
beq $t5,1,jump
beq $t5,0,hello
exit:
li $v0,4
la $a0,a
syscall
li $v0,1
move $a0,$t3
syscall


