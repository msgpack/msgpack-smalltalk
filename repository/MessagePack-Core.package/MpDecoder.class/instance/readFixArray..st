reading
readFixArray: firstByte
	| size |
	size := (firstByte bitAnd: 2r1111).
	^ self readArraySized: size