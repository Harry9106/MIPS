addi $t0, $zero, 0x000000ff
sll $zero, $zero, 0
sll $zero, $zero, 0
sll $zero, $zero, 0
sw $t0, 0xfc($zero)
exit: beq $zero $zero exit