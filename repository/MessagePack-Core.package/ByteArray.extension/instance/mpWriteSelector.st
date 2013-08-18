*MessagePack-Core-optimization
mpWriteSelector
	self class == ByteArray ifTrue: [^#writeBinBytes:].
	^nil