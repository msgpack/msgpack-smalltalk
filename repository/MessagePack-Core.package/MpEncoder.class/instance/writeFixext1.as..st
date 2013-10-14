writing-fixext
writeFixext1: data as: type
	self writeStream nextPut: MpConstants fixext1;
		nextPut: type;
		nextPut: data