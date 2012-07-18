private
createArraySized: size
	| col idx |
	col := OrderedCollection withAll: #(true false nil 1 -1 3.14 -3.14).
	"col add: (ByteArray new: 100 withAll: 100).
	col add: (Array new: 200 withAll: #(2)).
	col add: (Dictionary new at: 3 put: 333; yourself)."
	idx := self atRandom: col size.
	^self newCollection: Array sized: size withAll: (col at: idx)