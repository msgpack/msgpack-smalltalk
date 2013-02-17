encoding
encode: anObject on: aStream setting: aBlock
	aBlock value: self settings.
	self write: anObject on: aStream.
	^self contents.