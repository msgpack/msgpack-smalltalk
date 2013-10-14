writing-fixext
writeFixext16: data as: type
	self writeStream nextPut: MpConstants fixext16;
		nextPut: type;
		nextPutAll: data