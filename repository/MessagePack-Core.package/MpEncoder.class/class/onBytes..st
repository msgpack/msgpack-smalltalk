actions
onBytes: byteArray
	^self on: (WriteStream on: byteArray).