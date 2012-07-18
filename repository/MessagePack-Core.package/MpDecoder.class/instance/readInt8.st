reading-integer
readInt8
	| val |
	val := self readStream next.
	val >= 128 ifTrue: [^(256 - val) negated].
	^val