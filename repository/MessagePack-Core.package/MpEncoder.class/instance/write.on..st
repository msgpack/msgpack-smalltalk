encoding
write: anObject on: aStream
	self writeStream: aStream "binary".
	self writeObject: anObject