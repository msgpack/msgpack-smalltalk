testing
testPackUnpackSymbolBytes
	"self debug: #testPackUnpackSymbolBytes"
	(self rawStringArray collect: [ :str | str asSymbol ]) do: [:each | | packed unpacked |
		self assert: (each isKindOf: Symbol).
		packed := each messagePacked: [:settings | settings formatVersion: 2013].
		self should: [packed isMemberOf: ByteArray].
		self should: [  each messagePacked: [:settings | settings formatVersion: 2013; symbolAsString: false ]] raise: MpError.
		unpacked := Object fromMessagePack: packed.
		self assert: (unpacked isKindOf: String).
		self assert: (unpacked = each asString).
	]
			
		
