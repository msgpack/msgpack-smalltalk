testing
testUnpackBytesAsString
	"self debug: #testUnpackBytesAsString"
	| bytes unpackedAsByteArrays unpacked  |
	bytes := self simpleStringContainedArray messagePacked: [:se | se legacyFormat; stringAsBytes: true].
	unpackedAsByteArrays := Object fromMessagePack: bytes setting: [:se | se legacyFormat].
	self assert: (unpackedAsByteArrays = (self simpleStringContainedArray collect: [:each | each asByteArray])).
	
	unpacked := Object fromMessagePack: bytes setting: [:se | se legacyFormat; bytesAsString: true].
	self assert: (unpacked = self simpleStringContainedArray)
			
		
