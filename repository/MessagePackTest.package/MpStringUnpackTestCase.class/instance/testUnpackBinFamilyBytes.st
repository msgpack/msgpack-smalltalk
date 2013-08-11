testing
testUnpackBinFamilyBytes
	"self debug: #testUnpackBinFamilyBytes"
	| arr bytes1 encoded1 bytes2 encoded2 bytes3 encoded3 |
	arr := self encodeRandomBin8: 130.
	bytes1 := arr first.
	encoded1 := arr second. 
	self assert: (bytes1 = (MpMessagePack unpack: encoded1)).
	arr := self encodeRandomBin16: 300.
	bytes2 := arr first.
	encoded2 := arr second. 
	self assert: (bytes2 = (MpMessagePack unpack: encoded2)).
	arr := self encodeRandomBin32: 67000.
	bytes3 := arr first.
	encoded3 := arr second. 
	self assert: (bytes3 = (MpMessagePack unpack: encoded3))
	
	