actions-stream
writeFloat: value to: stream
	value isBigEndian ifTrue: [
		1 to: 4 do: [:idx | stream nextPut: (value basicAt: idx)]
	] ifFalse: [
		4 to: 1 by: -1 do: [:idx | stream nextPut: (value basicAt: idx)]
	]