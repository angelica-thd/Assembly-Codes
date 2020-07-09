.data
	prompt: .asciiz "Give me a number."
	msg1: .asciiz "\nThe number is greater than 0."
	msg2: .asciiz "\nThe number is less than 0."
.text
main:
	li $v0,4
	la $a0,prompt
	syscall
	
	li $v0,5
	syscall

	move $t0,$v0
	slt $s0,$t0,$zero
	beq $s0,$zero,label1
	bne $s0,$zero,label2
	
	li $v0,10
	syscall


label1: 
	li $v0,4
	la $a0,msg1
	syscall

label2:
	li $v0,4
	la $a0,msg2
	syscall