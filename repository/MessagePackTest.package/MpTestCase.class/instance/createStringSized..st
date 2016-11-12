private
createStringSized: size
	"TODO - create utf8 string"
	^ self newCollection: String sized: size withAll: (Character value: (32 + (self atRandom: 94)))