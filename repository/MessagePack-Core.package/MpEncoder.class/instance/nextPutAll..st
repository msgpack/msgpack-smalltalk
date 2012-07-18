stream-like
nextPutAll: aCollection
	aCollection do: [:each | self nextPut: each]