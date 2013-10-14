private
encodeRandomBin8: size
	| bytes encoded |
	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.
	encoded := (ByteArray with: MpConstants bin8 with: size), bytes.
	^{bytes. encoded}