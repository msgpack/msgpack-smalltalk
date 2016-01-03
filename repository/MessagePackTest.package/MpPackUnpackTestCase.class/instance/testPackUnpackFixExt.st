testing
testPackUnpackFixExt
	"self debug: #testPackUnpackFixExt"
	self rawFixExtValueArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:settings | settings formatVersion: 2013].
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [unpacked isMemberOf: MpFixextValue].
		self should: [each typeCode = unpacked typeCode].
		self should: [self collectionEquals: unpacked data with: each data].
	]
			
		
