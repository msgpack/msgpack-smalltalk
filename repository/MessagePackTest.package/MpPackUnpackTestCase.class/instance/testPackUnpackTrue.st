testing
testPackUnpackTrue
	"self debug: #testPackUnpackTrue"
	| packed unpacked |
	packed := true messagePacked.
	self should: [packed isMemberOf: ByteArray].
	self should: [packed = (ByteArray with: MpConstants true)].
	unpacked := Object fromMessagePack: packed.
	self should: [unpacked = true]
	
			
		
