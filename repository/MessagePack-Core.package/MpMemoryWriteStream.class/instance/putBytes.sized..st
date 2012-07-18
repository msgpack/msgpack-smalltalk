private
putBytes: bytes sized: len
	
	len > (self chunkSize - self chunkPosition)
		ifTrue:
			[(self currentChunk notNil
				and: [self chunks last == self currentChunk and: [len > 64]])
				ifTrue:
					[self chunks
						at: self chunks size
						put:
							(self currentChunk
								copyFrom: 1
								to: self chunkPosition).
					self chunks add: bytes.
					self makeSpace]
				ifFalse:
					[1
						to: len
						do: [:i | self nextPut: (bytes at: i)]]]
		ifFalse:
			[self currentChunk
				replaceFrom: self chunkPosition + 1
				to: self chunkPosition + len
				with: bytes
				startingAt: 1.
			self chunkPosition: self chunkPosition + len]