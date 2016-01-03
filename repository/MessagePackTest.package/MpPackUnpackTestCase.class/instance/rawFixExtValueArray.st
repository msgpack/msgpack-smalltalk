private
rawFixExtValueArray
	| sizes exts |
	sizes := #(1 2 4 8 16).
	exts := sizes collect: [:each | self createFixExtSized: each].
	1 to: exts size do: [:idx | (exts at: idx) typeCode: idx].
	^exts