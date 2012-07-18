private
createSimpleMapSized: size
	| values dic |
	values := #(true false nil 1 -1 3.14 -3.14).
	dic := Dictionary new: size.
	1 to: size do: [:idx | dic at: idx put: (values at: (idx - 1 \\ values size + 1))].
	^dic
	