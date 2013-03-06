accessing
typeMapper
	^ typeMapper
		ifNil: [typeMapper := self typeMapperClass on: self.
			self settings bytesAsString ifTrue: [typeMapper bytesAsString].
			typeMapper]