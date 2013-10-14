reading
readRaw32
	"Obsolete"
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^self readStream next: size