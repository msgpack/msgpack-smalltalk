actions
bytesFromString: aString
	(aString isWideString not and: [aString isAsciiString ]) ifTrue: [ ^aString asByteArray].
	^ZnUTF8Encoder new encodeString: aString