writing
writeInteger: anInteger 
	(anInteger between: 0 and: 127)
		ifTrue: [^self writePositiveFixNum: anInteger].
		
	(anInteger between: -32 and: -1)
		ifTrue: [^self writeNegativeFixNum: anInteger].
	
	anInteger >= 128 ifTrue: [
		anInteger <= 255 ifTrue: [^self writeUint8: anInteger].
		anInteger <= 65535 ifTrue: [^self writeUint16: anInteger].
		anInteger <= 4294967295 ifTrue: [^self writeUint32: anInteger].
		anInteger <= 18446744073709551615 ifTrue: [^self writeUint64: anInteger].
	].
	
	anInteger >= -128 ifTrue: [^self writeInt8: anInteger].
	anInteger >= -32768 ifTrue: [^self writeInt16: anInteger].
	anInteger >= -2147483648 ifTrue: [^self writeInt32: anInteger].
	anInteger >= -9223372036854775808 ifTrue: [^self writeInt64: anInteger].
	
	self signalError