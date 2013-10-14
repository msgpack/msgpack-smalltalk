testing
testPackUnpackBinBytes
	"self debug: #testPackUnpackBinBytes"
	self rawBytesArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:settings | settings formatVersion: 2013].
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked with: each].
	]
			
		
