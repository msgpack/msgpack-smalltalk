decoding
decode
	self readStream atEnd ifTrue: [^self signalError: 'No data to read'].
	^self read