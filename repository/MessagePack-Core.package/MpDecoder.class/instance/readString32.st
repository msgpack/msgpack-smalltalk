reading-string
readString32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^(self readStream next: size) asString