testing
testUnpackString8
	"self debug: #testUnpackString8"
	| str1 data1 data2 str2 |
	str1 := 'hi'.
	data1 := self encodeString8: str1.
	self assert: ((MpMessagePack unpack: data1) = str1).
	
	str2 := 'Str format family stores an byte array in 1, 2, 3, or 5 bytes of extra bytes in addition to the size of the byte array'.
	data2 := self encodeString8: str2.
	self assert: ((MpMessagePack unpack: data2) = str2).
	