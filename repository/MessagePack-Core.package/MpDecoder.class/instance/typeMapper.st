accessing
typeMapper
	^ typeMapper ifNil: [typeMapper := self typeMapperClass on: self].