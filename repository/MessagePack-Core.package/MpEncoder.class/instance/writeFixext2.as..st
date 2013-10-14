writing-fixext
writeFixext2: data as: type
	self writeStream nextPut: MpConstants fixext2;
		nextPut: type;
		nextPutAll: data