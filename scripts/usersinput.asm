.data
	prompt: .asciiz "Enter age: "
	msg: .asciiz "\nYour age is "
.text
	li $v0,4
	la $a0,prompt
	syscall
	
	li $v0,5
	syscall

	move $t0,$v0
	li $v0,4
	la $a0,msg
	syscall

	li $v0,1
	add $a0,$zero,$t0
	syscall
