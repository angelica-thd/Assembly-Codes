.data
.text
	addi $t0,$zero,2
	addi $t1,$zero,5
	or $t2,$t1,$t0
	add $a0,$zero,$t2
	syscall