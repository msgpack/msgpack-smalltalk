testing
testPackUnpackNil
	"self debug: #testPackUnpackNil"
	| packed unpacked |
	packed := nil messagePacked.
	self should: [packed isMemberOf: ByteArray].
	self should: [packed = (ByteArray with: MpConstants nil)].
	unpacked := Object fromMessagePack: packed.
	self should: [unpacked = nil]
	
			
		
