reading
readMap16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^ self readMapSized: size