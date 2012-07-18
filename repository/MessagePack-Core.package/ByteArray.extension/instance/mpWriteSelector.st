*MessagePack-Core-optimization
mpWriteSelector
	self class == ByteArray ifTrue: [^#writeRawBytes:].
	^nil