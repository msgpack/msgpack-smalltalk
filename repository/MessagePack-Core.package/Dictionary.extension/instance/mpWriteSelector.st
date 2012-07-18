*MessagePack-Core-optimization
mpWriteSelector
	self class == Dictionary ifTrue: [^#writeMap:].
	^nil