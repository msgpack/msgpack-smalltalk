building
buildTypeMapper: aTypeMapper
	self settings formatVersion = 2008 ifTrue: [
		aTypeMapper bytesAsRaw.
		self settings bytesAsString ifTrue: [aTypeMapper bytesAsString].
	].
	^ aTypeMapper