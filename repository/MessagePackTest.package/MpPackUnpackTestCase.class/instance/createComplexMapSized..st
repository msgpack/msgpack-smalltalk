private
createComplexMapSized: size
	| col idx |
	col := OrderedCollection new.
	col add: (self newCollection: ByteArray sized: 100 withAll: 100).
	col add: (self newCollection: Array sized: 200 withAll: #(2)).
	col add: (Dictionary new at: 3 put: 333; yourself).
	idx := self atRandom: col size.
	^ Array new: size withAll: (col at: idx)