testing
testPackUnpackComplexArray
	"self debug: #testPackUnpackComplexArray"
	self complexArraysArray do: [:each | | packed unpacked |
		packed := each messagePacked.
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked with: each]
	]
			
		
