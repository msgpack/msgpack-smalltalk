writing-helper
writeNegativeFixNum: number
	"-32 to -1"
	| val |
	val :=  256 + number.
	self writeStream nextPut: val