.data
.text
fact:
	addi $sp,$sp,-8 	# adjust stack for 2 items
	sw $ra,4($sp)		# save return address
	sw $a0,0($sp)		# save argument
	
	slti $t0,$a0,1		# if $a0>1(n<1) then $t0 =1
	beq $t0,$zero,label	# if $t0 == 0 go to label
	addi $v0,$zero,1	# else $v0 = 1 
	addi $sp,$sp,8		# reset stack since we dont need it, facctorial is 1
	jr $ra			# return 
label:
	addi $a0,$a0,-1		# $a0 = $a0-1
	jal fact		# call fact(n-1) -> recursive call

	lw $a0,0($sp)		# reset the stack regs
	lw $ra,4($sp)
	mul $v0,$a0,$v0		# $v0 = $a0*$v0 -> facotrial calculation
	jr $ra			# return 
	
	
	
