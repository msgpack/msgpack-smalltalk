writing-fixext
writeFixext8: data as: type
	self writeStream nextPut: MpConstants fixext8;
		nextPut: type;
		nextPutAll: data