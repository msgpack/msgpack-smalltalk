reading
readNegativeFixNum: firstByte
	| val |
	val := (firstByte bitAnd: 2r11111).
	^ val - 32