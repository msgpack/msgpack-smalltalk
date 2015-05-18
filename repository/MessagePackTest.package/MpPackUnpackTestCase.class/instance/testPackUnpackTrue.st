testing
testPackUnpackTrue
	"self debug: #testPackUnpackTrue"
	| packed unpacked |
	packed := true messagePacked.
	self should: [packed isMemberOf: ByteArray].
	self should: [packed = (ByteArray with: MpConstants boolTrue)].
	unpacked := Object fromMessagePack: packed.
	self should: [unpacked = true]
	
			
		
