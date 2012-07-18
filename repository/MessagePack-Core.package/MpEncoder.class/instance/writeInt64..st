writing-helper
writeInt64: value
	self writeStream nextPut: MpConstants int64.
	MpPortableUtil default writeInt64: value to: self writeStream