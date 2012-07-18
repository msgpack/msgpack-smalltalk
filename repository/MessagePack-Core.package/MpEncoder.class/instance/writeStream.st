accessing
writeStream
	writeStream isNil
		ifTrue: [writeStream := self createWriteStream].
	^ writeStream