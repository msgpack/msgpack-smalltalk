writing-helper
writeBinBytesSize: size
	size < 16r10 ifTrue: [
		self writeStream nextPut: MpConstants bin8.
		^ self writeStream nextPut: size].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants bin16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants bin32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError