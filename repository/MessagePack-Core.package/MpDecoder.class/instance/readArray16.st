reading
readArray16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^ self readArraySized: size