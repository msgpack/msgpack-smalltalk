actions-stream
readFloatFrom: stream
	"32 bit"
	| bytes |
	bytes := stream next: 4.
	UninterpretedBytes isBigEndian ifFalse: [ bytes := bytes reverse].
	^ bytes changeClassTo: Float.