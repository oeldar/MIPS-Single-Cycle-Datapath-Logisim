j   main
 
funkcija:
subu $2, $4, $5
jr $31

main:
addiu $8, $0, 4
ori $9, $0, 0xabcd
sll $9, $9, 16
ori $9, $9, 0x1234
sw $9, 0($8)
sw $9, 4($8)
ori $10, $0, 4
addu $12, $8, $10
lw $13, 0($12)
addu $5, $0, $13
addiu $4, $5, 8
jal funkcija
sw $2, 8($8)
