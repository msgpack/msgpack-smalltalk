actions
onBytes: byteArray
	^self on: (ReadStream on: byteArray)