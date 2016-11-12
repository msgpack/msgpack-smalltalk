reading-string
readFixString: firstByte
	| size |
	size := (firstByte bitAnd: 2r11111).
	^MpPortableUtil default stringFromBytes: (self readStream next: size)