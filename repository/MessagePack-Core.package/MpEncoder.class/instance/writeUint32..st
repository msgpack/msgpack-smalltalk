writing-helper
writeUint32: value
	self writeStream nextPut: MpConstants uint32.
	MpPortableUtil default writeUint32: value to: self writeStream