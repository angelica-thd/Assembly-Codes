#4*4*7=112
.data
.text
	addi $s0,$zero,4
	sll $t0,$s0,2			#4*2^2=16
	sll $t1,$t0,3			#16*2^3=128
	sub $t1,$t1,$t0			#128-16=112
	li $v0,1			#print it
	add $a0,$zero,$t1
	syscall