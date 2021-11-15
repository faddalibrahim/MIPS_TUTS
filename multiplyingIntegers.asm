.data
	#number1: .word 5
	#number2: .word 4

.text
	#lw $s0, number1
	#lw $s1, number2
	
	#mul $t0,$s0,$s1
	
	#li $v0, 1
	#move $a0, $t0
	#syscall
	
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	
	mul $t0 $s0, $s1 # mul can only mutiple 2 numbers that are max 16 bits long
	
	# display
	li $v0, 1
	add $a0, $zero, $t0
	syscall

