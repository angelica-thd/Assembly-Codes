.data
	msg: .asciiz "For loop is done."
	space: .asciiz ", "
	done: .asciiz "."
.text
main:
	addi $t0,$zero,0  #int i =0;
while: 
	bgt $t0,9,exit  #if(i>10){exit}
	jal printNo
	addi $t0,$t0,1
	beq $t0,10,doneproc
	j while
exit:
	li $v0,4
	la $a0,msg
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
doneproc:
	li $v0,1
	add $a0,$t0,$zero
	syscall
	li $v0,4
	la $a0,done
	syscall
	jr $ra