building
buildTypeMapperFor2013: aTypeMapper
	self settings symbolAsString
		ifTrue: [aTypeMapper symbolAsString]
		ifFalse: [aTypeMapper symbolAsError]