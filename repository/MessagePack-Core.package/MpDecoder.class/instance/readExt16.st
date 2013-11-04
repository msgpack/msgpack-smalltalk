reading-ext
readExt16
	| size type |
	size := MpPortableUtil default readUint16From: self readStream.
	type := self readStream next.
	^self readExtSized: size as: type