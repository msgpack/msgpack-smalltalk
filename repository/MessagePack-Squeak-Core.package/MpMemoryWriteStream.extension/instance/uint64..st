*MessagePack-Squeak-Core
uint64: anInteger
	"Store the given unsigned, 64-bit integer on this (binary) stream."		
	self nextPut: (anInteger digitAt: 8).
	self nextPut: (anInteger digitAt: 7).
	self nextPut: (anInteger digitAt: 6).
	self nextPut: (anInteger digitAt: 5).
	self nextPut: (anInteger digitAt: 4).
	self nextPut: (anInteger digitAt: 3).
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
