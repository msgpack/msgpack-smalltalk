writing-timestamp
writeTimestamp96: seconds nanos: nanos
	| strm |
	strm := self writeStream.
	strm nextPut: MpConstants ext8; nextPut: 12; nextPut: MpConstants timestamp.	
	MpPortableUtil default writeUint32: nanos to: strm.
	MpPortableUtil default writeInt64: seconds to: strm.
