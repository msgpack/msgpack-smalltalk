private
encodeRandomBin32: size
	| bytes encoded |
	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.
	encoded := bytes messagePacked at: 1 put: MpConstants bin32; yourself.
	^{bytes. encoded}