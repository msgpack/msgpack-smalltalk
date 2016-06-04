building
buildTypeMapper: aTypeMapper
	self settings formatVersion = 2008 ifTrue: [
		self buildTypeMapperFor2008: aTypeMapper.
	] ifFalse: [
		self buildTypeMapperFor2013: aTypeMapper.
	].
	
	^aTypeMapper
	