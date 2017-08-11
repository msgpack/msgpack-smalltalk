writing-timestamp
writeTimestamp64: nanosAndSeconds
	| strm |
	strm := self writeStream.
	strm nextPut: MpConstants fixext8; nextPut: MpConstants timestamp.	
	MpPortableUtil default writeUint64: nanosAndSeconds to: strm.
	