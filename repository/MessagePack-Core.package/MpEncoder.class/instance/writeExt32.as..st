writing-ext
writeExt32: data as: type
	self writeStream nextPut: MpConstants ext32.
	MpPortableUtil default writeUint32: data size to: self writeStream.
	self writeStream
		nextPut: type;
		nextPutAll: data