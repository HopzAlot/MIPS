.text
li $s1, 0x10010000
#getting value of k as input
li $v0,5
syscall
sw $v0, 0x10010040
lw $s2, 0x10010040
local:
lw $s3, 0($s1)
#setting up loop condition
beq $s2,$s3,off
addi $s1,$s1,4
b local
off:
#saving the address of k
sw $s1,0x10010000
