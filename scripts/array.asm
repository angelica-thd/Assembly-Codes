.data
	array: .space 12
	newLine: .asciiz "\n"
.text
main:
	addi $s0,$zero,5
	addi $s1,$zero,10
	addi $s2,$zero,12
	addi $t0,$zero,0
	sw $s0,array($t0)
	addi $t0,$t0,4
	sw $s1,array($t0)
	addi $t0,$t0,4
	sw $s2,array($t0)
	addi $t0,$zero,0
loop:
	beq $t0,12,exit
	lw $t6,array($t0)
	addi $t0,$t0,4
	li $v0,1
	move $a0,$t6
	syscall
	jal printLine
	j loop
exit:
	li $v0,10
	syscall
printLine:
	li $v0,4
	la $a0,newLine
	syscall
	jr $ra