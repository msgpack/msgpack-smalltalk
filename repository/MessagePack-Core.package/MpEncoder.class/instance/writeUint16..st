writing-helper
writeUint16: value
	self writeStream nextPut: MpConstants uint16.
	MpPortableUtil default writeUint16: value to: self writeStream