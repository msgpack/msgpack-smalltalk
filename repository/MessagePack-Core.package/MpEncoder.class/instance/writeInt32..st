writing-helper
writeInt32: value
	self writeStream nextPut: MpConstants int32.
	MpPortableUtil default writeInt32: value to: self writeStream