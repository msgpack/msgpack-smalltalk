actions-stream
readFloatFrom: stream
	"32 bit"
	^ Float fromIEEE32Bit: (stream nextNumber: 4)