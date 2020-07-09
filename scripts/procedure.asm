.data
	msg: .asciiz "Hi\nYou stupid.\n"
.text
main: 
	jal displaymsg
	li $v0,10
	syscall
displaymsg: 
	li $v0,4
	la $a0,msg
	syscall
	jr $ra
	
