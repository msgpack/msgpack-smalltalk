*MessagePack-Core-optimization
mpWriteSelector
	self class == Array ifTrue: [^#writeArray:].
	^nil