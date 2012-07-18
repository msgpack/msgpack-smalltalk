testing
testPackUnpackRawBytes
	"self debug: #testPackUnpackRawBytes"
	self rawBytesArray do: [:each | | packed unpacked |
		packed := each messagePacked.
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked with: each]
	]
			
		
