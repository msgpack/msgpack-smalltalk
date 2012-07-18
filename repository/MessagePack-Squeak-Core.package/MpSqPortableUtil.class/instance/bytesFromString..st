actions
bytesFromString: aString
	aString isWideString ifTrue: [^(aString convertToEncoding: #utf8) asByteArray].
	^super bytesFromString: aString