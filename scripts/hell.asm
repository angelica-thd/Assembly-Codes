	.text		
       	.globl __start 
__start:		
	li $v0,4
	la $a0,msg
	syscall
	
.data
msg:  .asciiz "He\n"
