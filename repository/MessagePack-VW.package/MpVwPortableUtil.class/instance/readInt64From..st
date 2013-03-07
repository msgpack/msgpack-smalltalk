actions-stream
readInt64From: stream
	^ (UninterpretedBytes from: (stream next: 8)) longLongAt: 1 bigEndian: true.