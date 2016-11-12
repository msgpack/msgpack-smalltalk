testing
testPackUnpackRawBytes
	"self debug: #testPackUnpackRawBytes"
	self rawBytesArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:settings | settings formatVersion: 2008].
		self should: [packed isMemberOf: ByteArray].
		"For invalid utf8 bytearray, we need more setting"
		"
		unpacked := Object fromMessagePack: packed] on: Error do: [ :ex | ex return ].
		self should: [self collectionEquals: unpacked asByteArray with: each].
		"
		unpacked := Object fromMessagePack: packed setting: [:settings | settings formatVersion: 2008].
		self should: [self collectionEquals: unpacked with: each]
	]
			
		
