actions-stream
writeDouble: value to: stream
	self writeUint32: (value at:1) to: stream.
	self writeUint32: (value at:2) to: stream.
	