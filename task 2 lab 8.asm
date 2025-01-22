.text
#loading and saving values in addresses
li $t0, 0x10010000
lw $t1, 0($t0)
addi $t2, $t1,1
sw $t2, 4($t0)
lw $t3, 4($t0)
addi $t4, $t3,1
sw $t4, 4($t0)
addi $t5, $t4,1
sw $t5, 4($t0)

.data
#specifying the value which needs to be incremented
a: .word 5
b: .word 0