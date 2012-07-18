*MessagePack-Squeak-Core
int32: anInteger
	"Store the given signed, 32-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r100000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
