printing
printOn: aStream
	aStream nextPutAll: 'a MpSettings('.
	self settingsDict printOn: aStream.
	aStream nextPutAll: ')'.
