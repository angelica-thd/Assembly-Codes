#(8/4)/2=1
.data
.text
	addi $s0,$zero,8		#$s0=8
	srl $t0,$s0,2			#8/2^2=2
	srl $t1,$t0,1			#2/2^1
	li $v0,1			#print it
	add $a0,$zero,$t1
	syscall