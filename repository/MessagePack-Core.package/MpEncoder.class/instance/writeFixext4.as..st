writing-fixext
writeFixext4: data as: type
	self writeStream nextPut: MpConstants fixext4;
		nextPut: type;
		nextPutAll: data