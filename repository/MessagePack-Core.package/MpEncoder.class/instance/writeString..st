writing-string
writeString: aString
	self writeStrBytes: (MpPortableUtil default bytesFromString: aString)