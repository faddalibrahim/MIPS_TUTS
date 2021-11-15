.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div $t2, $t0, $t1
	
	# display the quotient to the screen
	li $v0, 1
	add $a0, $zero, $t2
	syscall

