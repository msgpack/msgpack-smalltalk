writing-ext
writeExt8: data as: type
	self writeStream nextPut: MpConstants ext8;
		nextPut: data size;
		nextPut: type;
		nextPutAll: data