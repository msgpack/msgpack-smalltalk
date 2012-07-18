writing
writeRawBytes: bytes
	| size |
	size := bytes size.
	self writeRawBytesSize: size.
	self writeStream nextPutAll: bytes