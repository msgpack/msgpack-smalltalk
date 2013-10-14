building
buildTypeMapper: aTypeMapper
	self settings formatVersion = 2008 ifTrue: [
		aTypeMapper bytesAsRaw.
		self settings stringAsBytes 
			ifTrue: [aTypeMapper stringAsBytes]
			ifFalse: [aTypeMapper stringAsError]
	].
	^aTypeMapper
	