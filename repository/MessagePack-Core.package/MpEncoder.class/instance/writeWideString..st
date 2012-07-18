writing-string
writeWideString: aString
	self writeRawBytes: (MpPortableUtil default bytesFromString: aString)