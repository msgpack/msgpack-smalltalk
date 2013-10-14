reading
readRaw16
	"Obsolete"
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^self readStream next: size