.data 
	PI: .float 3.142
	
.text
	li $v0, 2
	lwc1 $f12, PI
	syscall