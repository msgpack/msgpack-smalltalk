writing
writeFloat: aFloat
	self writeStream nextPut: MpConstants float.
	MpPortableUtil default writeFloat: aFloat to: self writeStream