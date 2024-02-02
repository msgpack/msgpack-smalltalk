factory
dialectSpecificClass
	^DialectSpecificClass ifNil: [DialectSpecificClass := self detectDialogSpecificClass]