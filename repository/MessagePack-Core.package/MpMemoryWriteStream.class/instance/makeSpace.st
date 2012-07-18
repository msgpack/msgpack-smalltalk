private
makeSpace
	
	self chunks add: self prepareCurrentChunk.
	self chunkPosition: 0.
	self lastSize: 0