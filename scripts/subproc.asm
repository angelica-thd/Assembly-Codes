.data
.text
main: 
	addi $a1,$zero, 123
	addi $a2,$zero, 3
	jal subp
	li $v0,1
	addi $a0,$v1,0
	syscall
subp:
	sub $v1,$a1,$a2
	jr $ra