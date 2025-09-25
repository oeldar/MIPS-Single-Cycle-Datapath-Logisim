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
bne   $5, $0, razlicito
addiu $4, $5, -8
j     krajif
razlicito:
addiu $4, $5, 8
krajif:

jal funkcija
sw $2, 8($8)

# Nakon izvrsenja programa u RAM memoriji bi trebalo da budu podaci:
# adresa 0: 0xabcd1234
# adresa 4: 0xabcd1234
# adresa 8: 0x00000008
# Ako je na adresi 8 vrijednost 0xfffffff8 onda branch ne radi kako bi trebalo
