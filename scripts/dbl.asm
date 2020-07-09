.data
	dbl: .double 3.104
	
.text
	li $v0,3
	ldc1 $f12,dbl
	syscall