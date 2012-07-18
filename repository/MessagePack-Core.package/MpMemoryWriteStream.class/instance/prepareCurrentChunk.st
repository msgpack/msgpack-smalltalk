private
prepareCurrentChunk
	
	^self currentChunk: (ByteArray new: self chunkSize)