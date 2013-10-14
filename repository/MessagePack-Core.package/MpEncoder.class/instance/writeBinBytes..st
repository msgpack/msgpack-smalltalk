writing
writeBinBytes: bytes
	| size |
	size := bytes size.
	self writeBinBytesSize: size.
	self writeStream nextPutAll: bytes