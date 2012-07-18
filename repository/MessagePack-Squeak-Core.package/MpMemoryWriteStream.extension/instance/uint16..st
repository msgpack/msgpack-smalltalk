*MessagePack-Squeak-Core
uint16: anInteger
	"Store the given unsigned, 16-bit integer on this (binary) stream."
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
