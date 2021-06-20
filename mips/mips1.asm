addiu $t1, $t1, 3
addiu $t2, $t2, 15
addiu $t3, $t3, 20
addiu $t4, $t4, 0
addiu $t5, $t5, 5

loop_i:
beq $t1, $zero, exit
addu $t3, $t3, $t1

loop_j:
beq $t2, $t5, exit_j
addu $t4, $t2, $t3
subu $t2, $t2, $t5

J loop_j

exit_j:

addiu $t1, $t1, -1
J loop_i

exit: