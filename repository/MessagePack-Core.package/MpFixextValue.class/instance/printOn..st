printing
printOn: aStream
	aStream nextPutAll: 'FixExt('.
	aStream nextPutAll: self size printString. 
	aStream nextPutAll: '): '.
	self printDescriptionOn: aStream