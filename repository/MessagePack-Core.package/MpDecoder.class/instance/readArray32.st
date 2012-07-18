reading
readArray32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^ self readArraySized: size