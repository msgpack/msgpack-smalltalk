testing
testPackUnpackStrBytes
	"self debug: #testPackUnpackStrBytes"
	self rawStringArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:settings | settings formatVersion: 2013].
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed setting: [:settings | settings formatVersion: 2013].
		self should: [unpacked = each].
	]
			
		
