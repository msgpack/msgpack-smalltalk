testing
testPackUnpackStrings
	"self debug: #testPackUnpackStrings"
	self stringsArray do: [:each | | packed unpacked |
		packed := each messagePacked: [:se | se stringAsBytes: true].
		self should: [packed isMemberOf: ByteArray].
		unpacked := Object fromMessagePack: packed.
		self should: [self collectionEquals: unpacked asString with: each]
	]