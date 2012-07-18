decoding
decodeFrom: aStream
	self readStream: aStream "binary".
	^self decode