.data
#assigning values for the desired product
var_i: .word 8
var_j: .word 8
var_a: .word 5
var_b: .word 4
var_c: .word 3
var_d: .word 3
var_f: .word 0
.text
lw $t0,var_i
lw $t1,var_j
lw $t2,var_a
lw $t3,var_b
lw $t4,var_c
lw $t5,var_d
lw $s2,var_f
#Setting up if else condition
beq $t0,$t1,condition
    sub $s0,$t2,$t3
    sub $s1,$s0,$t4
    add $s2,$s1,$t5
    b end
condition:
    add $s0,$t2,$t3
    sub $s1,$s0,$t4
    sub $s2,$s1,$t5
end:
#saving the output in memory
    sw $s2,var_f
 


    
