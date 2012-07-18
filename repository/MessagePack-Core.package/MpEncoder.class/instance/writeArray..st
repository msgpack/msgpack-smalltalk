writing
writeArray: array
	| size |
	size := array size.
	self writeArraySize: size.
	array do: [:each | self writeObject: each].
	