actions
bytesFromString: aString
	(aString isWideString not and: [aString isAsciiString ]) ifTrue: [ ^super bytesFromString: aString].
	^(aString convertToEncoding: #utf8) asByteArray