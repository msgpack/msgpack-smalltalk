writing-helper
writeUint8: value
	self writeStream nextPut: MpConstants uint8.
	self writeStream nextPut: value