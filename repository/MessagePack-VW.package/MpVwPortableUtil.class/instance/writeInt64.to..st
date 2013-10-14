actions-stream
writeInt64: value to: stream
	| bytes |
	bytes := UninterpretedBytes new: 8.
	bytes longLongAt: 1 put: value bigEndian: true.
	stream nextPutAll: bytes asByteArray