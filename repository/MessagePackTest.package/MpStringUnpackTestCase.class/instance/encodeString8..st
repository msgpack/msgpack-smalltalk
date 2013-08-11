private
encodeString8: aString
	| byteStream |
	byteStream := WriteStream with: (ByteArray with: MpConstants str8 with: aString size).
	byteStream nextPutAll: aString asByteArray.
	^ byteStream contents
	