private
rawStringArray
	^ self rawBytesSizes collect: [:each | self createByteStringSized: each]