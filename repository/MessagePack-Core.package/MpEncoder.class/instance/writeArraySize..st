writing-helper
writeArraySize: size
	size < 16r10 ifTrue: [^ self writeStream nextPut: (2r10010000 bitOr: size)].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants array16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants array32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError