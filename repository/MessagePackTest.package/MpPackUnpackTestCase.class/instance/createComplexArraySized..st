private
createComplexArraySized: size
	| col dict |
	col := OrderedCollection new.
	col add: (self newCollection: ByteArray sized: 100 withAll: 100).
	col add: (self newCollection: Array sized: 200 withAll: #(2)).
	col add: (Dictionary new at: 3 put: 333; yourself).
	
	dict := Dictionary new: size.
	1 to: size do: [:idx | dict at: (idx printString asByteArray) put: (self atRandom: col size)].
	^dict