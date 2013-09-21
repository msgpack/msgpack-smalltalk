writing-ext
writeExt: data as: type
	| sz |
	sz := data size.
	sz < 256 ifTrue: [^self writeExt8: data as: type].
	sz < 65536 ifTrue: [^self writeExt16: data as: type].
	sz < 4294967296 ifTrue: [^self writeExt32: data as: type].