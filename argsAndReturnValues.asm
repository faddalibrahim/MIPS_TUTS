.data
	message: .asciiz "Hi I am amazing"
	
.text
	main:
		addi $a1, $zero, 50
		addi $a2, $zero, 60
		jal addNumbers
		
		li $v0, 1
		addi $a0, $v1,0
		syscall
	
	# tell the system that the program is done
	li $v0, 10
	syscall
	
	addNumbers:
		add $v1, $a1, $a2
		jr $ra # goes back to the procedure that called it; its not gonna stay inside the procedure
	