.data 
	int:	.word 01234
.text
	li $v0,1
	lw $a0,int
	syscall