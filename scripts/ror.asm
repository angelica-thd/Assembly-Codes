.data
input: .word 0x12345678
.text
main:
	la $a0,input
	lw $t1,0($a0)
	li $t0,0xFC00011FF
	and $t2,$t1,$t0
	li $v0,1
	move $a0,$t2
	syscall
	li $v0,10
	syscall