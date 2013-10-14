actions-stream
readInt32From: stream
	^ (UninterpretedBytes from: (stream next: 4)) longAt: 1 bigEndian: true.