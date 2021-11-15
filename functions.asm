.data
	message: .asciiz "Hi I am amazing"
	
.text
	main:
		jal displayMessage
	
	# tell the system that the program is done
	li $v0, 10
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra # goes back to the procedure that called it; its not gonna stay inside the procedure
	