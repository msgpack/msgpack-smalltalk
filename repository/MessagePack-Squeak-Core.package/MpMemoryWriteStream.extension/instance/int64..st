*MessagePack-Squeak-Core
int64: anInteger
	"Store the given signed, 64-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r10000000000000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 8).
	self nextPut: (n digitAt: 7).
	self nextPut: (n digitAt: 6).
	self nextPut: (n digitAt: 5).
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
