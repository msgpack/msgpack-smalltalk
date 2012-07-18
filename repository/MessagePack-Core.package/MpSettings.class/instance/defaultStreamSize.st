accessing
defaultStreamSize
	^self at: #defaultStreamSize ifAbsentPut: [1024]