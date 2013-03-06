testing
testUnpackBytesAsString
	"self debug: #testUnpackBytesAsString"
	| bytes unpackedAsByteArrays unpacked  |
	bytes := self simpleStringContainedArray messagePacked: [:se | se stringAsBytes: true].
	unpackedAsByteArrays := Object fromMessagePack: bytes.
	self assert: (unpackedAsByteArrays = (self simpleStringContainedArray collect: [:each | MpPortableUtil default bytesFromString: each])).
	
	unpacked := Object fromMessagePack: bytes setting: [:se | se bytesAsString: true].
	self assert: (unpacked = self simpleStringContainedArray)
			
		
