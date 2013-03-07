actions-stream
readUint64From: stream
	^ (UninterpretedBytes from: (stream next: 8)) unsignedLongLongAt: 1 bigEndian: true.