actions-stream
writeUint64: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 8.
	bytes unsignedLongLongAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray