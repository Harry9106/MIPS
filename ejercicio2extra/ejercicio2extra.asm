addi $t1, $zero, 0x00000055
addi $t2, $zero, 0x000000AA
sll $zero, $zero, 0
sll $zero, $zero, 0
loop: sw $t1, 0xFC($zero)
sw $t2, 0xFC($zero)
exit: beq $zero $zero loop


