accessing
encodeMode: aSymbol
	"#strict #unknownAsNil #loose"
	^self at: #encodeMode ifAbsentPut: aSymbol