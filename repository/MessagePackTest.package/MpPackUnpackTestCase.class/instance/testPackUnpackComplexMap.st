testing
testPackUnpackComplexMap
	"self debug: #testPackUnpackComplexMap"
	self simpleMapsArray do: [:each | | packed unpacked |
		packed := each messagePacked.
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked with: each]
	]
			
		
