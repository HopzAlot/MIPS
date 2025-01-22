.text
li $t0,0x10010000
li $t6,0x10010040
li $t7,0x10010080
loop:
li $v0,5
syscall
sw $v0,0($t0)
and $t4,$v0,1
addi $t0,$t0,4
beq $t4,1,odd
beq $t4,0,even
odd:
sw $v0,0($t6)
addi $t6,$t6,4
addi $t5,$t5,1
addi $t1,$t1,1
beq $t5,10,exit
b loop
even:
sw $v0,0($t7)
addi $t7,$t7,4
addi $t5,$t5,1
addi $t2,$t2,1
beq $t5,10,exit
b loop
exit:
li $v0,1
move $a0,$t1
syscall
li $v0,1
move $a0,$t2
syscall