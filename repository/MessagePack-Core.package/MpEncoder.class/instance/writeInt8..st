writing-helper
writeInt8: value
	| val |
	self writeStream nextPut: MpConstants int8.
	val := value < 0 ifTrue: [256 + value] ifFalse: [value].
	self writeStream nextPut: val