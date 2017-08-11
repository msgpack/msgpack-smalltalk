reading-timestamp
readTimestamp32: aStream
	| seconds |
	seconds := MpPortableUtil default readInt32From: aStream.
	^MpPortableUtil default timestampFromSeconds: seconds nanos: nil