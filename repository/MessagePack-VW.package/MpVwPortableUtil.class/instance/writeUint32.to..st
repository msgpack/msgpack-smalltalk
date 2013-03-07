actions-stream
writeUint32: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 4.
	bytes unsignedLongAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray