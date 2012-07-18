reading
readFixRaw: firstByte
	| size |
	size := (firstByte bitAnd: 2r11111).
	^self readStream next: size