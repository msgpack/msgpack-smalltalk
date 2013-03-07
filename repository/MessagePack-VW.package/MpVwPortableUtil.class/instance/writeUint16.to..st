actions-stream
writeUint16: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 2.
	bytes unsignedShortAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray