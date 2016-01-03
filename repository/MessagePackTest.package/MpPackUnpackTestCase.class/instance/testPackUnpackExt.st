testing
testPackUnpackExt
	"self debug: #testPackUnpackExt"
	self rawExtValueArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:settings | settings formatVersion: 2013].
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [unpacked isMemberOf: MpExtValue].
		self should: [each typeCode = unpacked typeCode].
		self should: [self collectionEquals: unpacked data with: each data].
	]
			
		
