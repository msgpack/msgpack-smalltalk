private
createFixExtSized: size
	| data |
	data := self createRawBytesSized: size.
	^MpFixextValue typeCode: 0 data: data	
