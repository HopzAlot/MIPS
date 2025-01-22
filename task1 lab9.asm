.data
a: .word 4  #saving a number in the memory
.text
li $t0, 0x10010000
lw $t1, 0($t0)

li $v0,5   #getting input from the user
syscall
add $a0, $v0, $t1

li $v0,1   #displaying the result as an output
syscall
