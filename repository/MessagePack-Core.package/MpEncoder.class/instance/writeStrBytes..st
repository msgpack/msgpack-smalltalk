writing
writeStrBytes: bytes
	| size |
	size := bytes size.
	self writeStrBytesSize: size.
	self writeStream nextPutAll: bytes