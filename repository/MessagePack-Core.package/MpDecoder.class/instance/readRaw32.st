reading
readRaw32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^self readStream next: size