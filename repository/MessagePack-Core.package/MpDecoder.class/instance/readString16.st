reading-string
readString16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^MpPortableUtil default stringFromBytes: (self readStream next: size)