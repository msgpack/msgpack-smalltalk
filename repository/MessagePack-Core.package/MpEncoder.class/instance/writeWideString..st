writing-string
writeWideString: aString
	self writeStrBytes: (MpPortableUtil default bytesFromString: aString)