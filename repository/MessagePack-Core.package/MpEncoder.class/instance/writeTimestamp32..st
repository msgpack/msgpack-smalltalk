writing-timestamp
writeTimestamp32: seconds
	| strm |
	strm := self writeStream.
	strm nextPut: MpConstants fixext4; nextPut: MpConstants timestamp.	
	MpPortableUtil default writeUint32: seconds to: strm.
	