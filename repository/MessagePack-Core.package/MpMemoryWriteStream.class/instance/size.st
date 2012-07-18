actions
size
	
	| size count |
	self currentChunk isNil ifTrue: [^0].
	size := 0.
	count := self chunks size.
	1
		to: count - 1
		do: [:idx | size := size + (self chunks at: idx) size].
	self currentChunk == (self chunks at: count)
		ifTrue:
			[self lastSize < self chunkPosition
				ifTrue: [self lastSize: self chunkPosition]].
	^size + self lastSize