actions-stream
writeInt16: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 2.
	bytes shortAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray