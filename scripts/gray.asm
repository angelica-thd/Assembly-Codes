.data
.text
main:
	srl $t1,$t0,1
	xor $t2,$t1,$t0
	li $v0,10
	syscall