testing
testPackUnpackArray
	"self debug: #testPackUnpackArray"
	self simpleArraysArray do: [:each | | packed unpacked |
		packed := each messagePacked.
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked with: each]
	]
			
		
