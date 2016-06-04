building
buildTypeMapperFor2008: aTypeMapper
	aTypeMapper bytesAsRaw.
	self settings stringAsBytes 
			ifTrue: [aTypeMapper stringAsBytes]
			ifFalse: [aTypeMapper stringAsError]