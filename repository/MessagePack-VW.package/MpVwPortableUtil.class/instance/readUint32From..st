actions-stream
readUint32From: stream
	^ (UninterpretedBytes from: (stream next: 4)) unsignedLongAt: 1 bigEndian: true.