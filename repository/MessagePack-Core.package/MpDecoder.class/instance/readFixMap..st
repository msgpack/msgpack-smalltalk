reading
readFixMap: firstByte
	| size |
	size := (firstByte bitAnd: 2r1111).
	^self readMapSized: size