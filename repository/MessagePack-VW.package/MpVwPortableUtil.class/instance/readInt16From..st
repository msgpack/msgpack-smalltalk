actions-stream
readInt16From: stream
	^ (UninterpretedBytes from: (stream next: 2)) shortAt: 1 bigEndian: true.