addi $t0, $zero, 1
sll $zero, $zero, 0
sll $zero, $zero, 0
sll $zero, $zero, 0
addi $t1, $t0, 2
sll $zero, $zero, 0
sll $zero, $zero, 0
sll $zero, $zero, 0
addi $t2, $t1, 2
sll $zero, $zero, 0
sll $zero, $zero, 0
sll $zero, $zero, 0
addi $t3, $t2, 2
sw $t0, 0($zero)
sw $t1, 4($zero)
sw $t2, 8($zero)
sw $t3, 12($zero)
exit: beq $zero $zero exit