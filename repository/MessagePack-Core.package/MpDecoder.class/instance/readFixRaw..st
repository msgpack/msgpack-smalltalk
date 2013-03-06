reading
readFixRaw: firstByte
	| size |
	self typeMapper isBytesAsString ifTrue: [^self readFixString: firstByte].
	size := (firstByte bitAnd: 2r11111).
	^self readStream next: size