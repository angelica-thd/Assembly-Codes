.data
	prompt: .asciiz "Enter your name."
	msg: .asciiz "Hello, "
	userinpt: .space 30
.text
main: 
	li $v0,4
	la $a0,prompt
	syscall

	li,$v0,8
	la $a0,userinpt
	li $a1,30
	syscall

	li $v0,4
	la $a0,msg
	syscall
	
	li $v0,4
	la $a0,userinpt
	syscall

	li $v0,10
	syscall
	