accessing
typeMapper
	^ typeMapper
		ifNil: [typeMapper := self typeMapperClass on: self.
			self settings stringAsBytes ifTrue: [typeMapper stringAsBytes].
			typeMapper]