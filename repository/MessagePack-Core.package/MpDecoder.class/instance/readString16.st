reading-string
readString16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^(self readStream next: size) asString