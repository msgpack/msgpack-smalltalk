encoding
encode: anObject on: aStream
	self write: anObject on: aStream.
	^self contents.