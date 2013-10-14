private
encodeRandomBin16: size
	| bytes encoded |
	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.
	encoded := bytes messagePacked at: 1 put: MpConstants bin16; yourself.
	^{bytes. encoded}