reading-helper
readArraySized: size
	| array |
	array := self createArray: size.
	1 to: size do: [:idx |
		array at: idx put: (self readObject)
	].
	^array