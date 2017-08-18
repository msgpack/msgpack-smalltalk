reading-timestamp
readTimestamp96: aStream
	| nanos seconds |
	nanos := MpPortableUtil default readUint32From: aStream.
	seconds := MpPortableUtil default readInt64From: aStream.
	^MpPortableUtil default timestampFromSeconds: seconds nanos: nanos