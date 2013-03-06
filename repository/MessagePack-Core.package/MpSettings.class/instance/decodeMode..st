accessing
decodeMode: aSymbol
	"#strict #unknownAsNil #loose"
	^self at: #decodeMode ifAbsentPut: aSymbol