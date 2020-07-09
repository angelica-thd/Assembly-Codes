.data
	done: .asciiz "For loop is done."
	space: .asciiz ", "
.text
main:
	addi $t0,$zero,0  #int i =0;
while: 
	bgt $t0,10,exit  #if(i>=10){exit}
	jal printNo
	addi $t0,$t0,1
	j while
exit:
	li $v0,4
	la $a0,done
	syscall
	li $v0,10
	syscall
printNo:
	li $v0,1
	add $a0,$t0,$zero
	syscall
	li $v0,4
	la $a0,space
	syscall
	jr $ra