*MessagePack-Squeak-Core
uint32: anInteger
	"Store the given unsigned, 32-bit integer on this (binary) stream."
	self nextPut: (anInteger digitAt: 4).
	self nextPut: (anInteger digitAt: 3).
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
