*MessagePack-Squeak-Core
int16: anInteger
	"Store the given signed, 16-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r10000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
