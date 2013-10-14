writing-ext
writeExt16: data as: type
	self writeStream nextPut: MpConstants ext16.
	MpPortableUtil default writeUint16: data size to: self writeStream.
	self writeStream
		nextPut: type;
		nextPutAll: data