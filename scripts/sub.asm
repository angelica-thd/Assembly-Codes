.data
	no1: .word 8
	no2: .word 70
.text
	lw $s0,no1 		#s regs do not need offsets
	lw $s1,no2
	sub $t0,$s0,$s1
	li $v0,1
	add $a0,$zero,$t0
	syscall