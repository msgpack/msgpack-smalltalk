writing-fixext
writeFixext: data as: type
	| sz |
	sz := data size.
	sz = 1 ifTrue: [^self writeFixext1: data as: type].
	sz = 2 ifTrue: [^self writeFixext2: data as: type].
	sz = 4 ifTrue: [^self writeFixext4: data as: type].
	sz = 8 ifTrue: [^self writeFixext8: data as: type].
	sz = 16 ifTrue: [^self writeFixext16: data as: type].
	
	self signalError