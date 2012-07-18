private
createSimpleArraySized: size
	| col idx |
	col := OrderedCollection withAll: #(true false nil 1 -1 3.14 -3.14).
	idx := self atRandom: col size.
	^self newCollection: Array sized: size withAll: (col at: idx)