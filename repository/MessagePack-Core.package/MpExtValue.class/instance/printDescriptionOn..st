printing
printDescriptionOn: aStream
	self typeCode printOn: aStream.
	aStream space.
	aStream nextPutAll: 'data: '.
	self data printOn: aStream