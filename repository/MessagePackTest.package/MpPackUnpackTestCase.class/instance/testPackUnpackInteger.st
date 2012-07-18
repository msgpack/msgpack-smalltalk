testing
testPackUnpackInteger
	"self debug: #testPackUnpackInteger"
	self integersArray do: [:each | | packed unpacked |
		packed := each messagePacked.
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [unpacked = each]
	]
			
		
