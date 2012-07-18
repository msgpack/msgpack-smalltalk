actions
position
	
	| idx size coll |
	self currentChunk isNil ifTrue: [^0].
	idx := 1.
	size := 0.
	[(coll := self chunks at: idx) == self currentChunk]
		whileFalse:
			[idx := idx + 1.
			size := size + coll size].
	^size + self chunkPosition