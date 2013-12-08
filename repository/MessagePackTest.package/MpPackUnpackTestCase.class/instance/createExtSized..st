private
createExtSized: size
	| data |
	data := self createRawBytesSized: size.
	^MpExtValue typeCode: 0 data: data	
