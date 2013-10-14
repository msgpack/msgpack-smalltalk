actions-stream
readDoubleFrom: stream
	| bytes |
	bytes :=  stream next: 8.
	UninterpretedBytes isBigEndian ifFalse: [ bytes := bytes reverse].
	^ bytes changeClassTo: Double.