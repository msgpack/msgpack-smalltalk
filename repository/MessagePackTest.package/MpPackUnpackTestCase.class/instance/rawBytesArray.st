private
rawBytesArray
	^ self rawBytesSizes collect: [:each | self createRawBytesSized: each]