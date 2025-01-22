.text
li $t8,0xBC614E
li $t0,0xC0000000
and $t1,$t8,$t0
srl $t1,$t1,30
sll $t2,$t8,2
or $t3,$t2,$t1
