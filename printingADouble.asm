.data
	myDouble: .double 9.95
	zeroDouble: .double 0.0
	
.text
	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall