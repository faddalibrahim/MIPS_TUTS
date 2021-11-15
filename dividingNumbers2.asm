.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div $t2, $t0, $t1
	# div $t2, $t0, 10
	
	# remainder goes to high, quotient goes to low (for the 2 registers approach)
	div $t0, $t1
	mflo $s0  # Quotient
	mfhi $s1  # remainder
	
	
	# display the quotient to the screen
	li $v0, 1
	add $a0, $zero, $t2
	syscall

