.data
integers: .word -32,1,2,10,1,-8,10,9,0,-65,43
.text
main: 
	la $a1,integers
	addi $a0,$zero,0
	addi $a2,$zero,10
loop:
	lw $t0,0($a1)
	andi $t0,$t0,1
	addi $a1,$a1,4
	addi $a2,$a2,-1
	beq $t0,$zero,even
	bne $a2,$zero,loop
	b exit
even:
	addi $a0,$a0,1
	bne $a2,$zero,loop
	b exit
exit:
	li $v0,1
	syscall
	li $v0,10
	syscall