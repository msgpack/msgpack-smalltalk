private
createRawBytesSized: size
	^ self newCollection: ByteArray sized: size withAll: (self atRandom: 255)