reading
readMap32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^ self readMapSized: size