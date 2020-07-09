.data
	no1: .word 24
	no2: .word 1
.text
	lw $t0,no1($zero)
	lw $t1,no2($zero)
	add $t2,$t1,$t0
	li $v0,1
	add $a0,$zero,$t2
	syscall