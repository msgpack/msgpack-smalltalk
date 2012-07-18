actions
nextPut: integer
	
	self chunkPosition >= self chunkSize ifTrue: [self moveToNext].
	self chunkPosition: self chunkPosition + 1.
	self currentChunk
		at: self chunkPosition
		put: integer