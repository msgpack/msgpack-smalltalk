actions-stream
writeDouble: value to: stream
	value isBigEndian ifTrue: [
		1 to: 8 do: [:idx | stream nextPut: (value basicAt: idx)]
	] ifFalse: [
		8 to: 1 by: -1 do: [:idx | stream nextPut: (value basicAt: idx)]
	]