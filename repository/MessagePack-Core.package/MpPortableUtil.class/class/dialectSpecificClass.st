factory
dialectSpecificClass
	^DialectSpecificClass ifNil: [DialectSpecificClass := self subclasses at: 1]