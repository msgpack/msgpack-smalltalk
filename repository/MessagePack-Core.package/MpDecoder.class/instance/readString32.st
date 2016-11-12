reading-string
readString32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^MpPortableUtil default stringFromBytes: (self readStream next: size)