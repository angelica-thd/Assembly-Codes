#Logical AND 
.data
.text
	addi $t0,$zero,2
	addi $t1,$zero,5
	and $t2,$t0,$t1
	li $v0,1
	add $a0,$zero,$t2
	syscall
