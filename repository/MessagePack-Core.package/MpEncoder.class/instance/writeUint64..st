writing-helper
writeUint64: value
	self writeStream nextPut: MpConstants uint64.
	MpPortableUtil default writeUint64: value to: self writeStream