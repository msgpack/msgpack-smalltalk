actions-stream
writeInt32: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 4.
	bytes longAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray