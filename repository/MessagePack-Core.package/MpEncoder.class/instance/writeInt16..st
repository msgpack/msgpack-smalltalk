writing-helper
writeInt16: value
	self writeStream nextPut: MpConstants int16.
	MpPortableUtil default writeInt16: value to: self writeStream