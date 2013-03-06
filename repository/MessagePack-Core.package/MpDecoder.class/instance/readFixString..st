reading-string
readFixString: firstByte
	| size |
	size := (firstByte bitAnd: 2r11111).
	^(self readStream next: size) asString