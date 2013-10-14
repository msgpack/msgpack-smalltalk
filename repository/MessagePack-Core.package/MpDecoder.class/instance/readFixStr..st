reading
readFixStr: firstByte
	self settings formatVersion = 2008 ifTrue: [^self readFixRaw: firstByte].
	^self readFixString: firstByte