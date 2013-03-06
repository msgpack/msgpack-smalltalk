private
createStringSized: size
	^ self newCollection: String sized: size withAll: (Character value: (self atRandom: 255))