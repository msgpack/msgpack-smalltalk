writing
writeDouble: aFloat
	self writeStream nextPut: MpConstants double.
	MpPortableUtil default writeDouble: aFloat to: self writeStream