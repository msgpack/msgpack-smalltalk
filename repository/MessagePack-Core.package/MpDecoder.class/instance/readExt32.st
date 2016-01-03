reading-ext
readExt32
	| size type |
	size := MpPortableUtil default readUint32From: self readStream.
	type := self readStream next.
	^self readExtSized: size as: type