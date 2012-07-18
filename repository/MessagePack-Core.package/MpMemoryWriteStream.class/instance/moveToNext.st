private
moveToNext
	
	| curChunk |
	self chunkPosition: 0.
	curChunk := self currentChunk.
	(curChunk isNil or: [curChunk == self chunks last])
		ifTrue: [self makeSpace]
		ifFalse:
			[1
				to: self chunks size
				do:
					[:idx | 
					(self chunks at: idx) == curChunk
						ifTrue:
							[self currentChunk: (self chunks at: idx + 1).
							^self]]]