private
rawExtValueArray
	| exts |
	exts := self rawBytesSizes collect: [:each | self createExtSized: each].
	1 to: exts size do: [:idx | (exts at: idx) typeCode: idx].
	^exts