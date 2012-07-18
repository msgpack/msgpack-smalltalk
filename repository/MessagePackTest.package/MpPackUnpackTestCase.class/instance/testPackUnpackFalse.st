testing
testPackUnpackFalse
	"self debug: #testPackUnpackFalse"
	| packed unpacked |
	packed := false messagePacked.
	self should: [packed isMemberOf: ByteArray].
	self should: [packed = (ByteArray with: MpConstants false)].
	unpacked := Object fromMessagePack: packed.
	self should: [unpacked = false]
	
			
		
