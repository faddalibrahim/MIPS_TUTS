.data

.text
	#lw $s0, number1
	#lw $s1, number2
	
	#mul $t0,$s0,$s1
	
	#li $v0, 1
	#move $a0, $t0
	#syscall
	
	addi $t0, $zero, 2000
	addi $t1, $zero, 15
	
	mult $t0, $t1
	
	mflo $s0 # moves the product to $s0
	
	# display tje product to the screen
	li $v0, 1
	add $a0, $zero, $s0
	syscall

