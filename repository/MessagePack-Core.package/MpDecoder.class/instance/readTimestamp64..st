reading-timestamp
readTimestamp64: aStream
	| nanosAndSeconds nanos seconds |
	nanosAndSeconds := MpPortableUtil default readUint64From: aStream.
	nanos := nanosAndSeconds >> 34.
	seconds := nanosAndSeconds & 16r00000003ffffffff.
	^MpPortableUtil default timestampFromSeconds: seconds nanos: nanos