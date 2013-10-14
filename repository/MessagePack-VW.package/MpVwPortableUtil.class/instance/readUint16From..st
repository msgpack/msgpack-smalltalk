actions-stream
readUint16From: stream
	^ (UninterpretedBytes from: (stream next: 2)) unsignedShortAt: 1 bigEndian: true.