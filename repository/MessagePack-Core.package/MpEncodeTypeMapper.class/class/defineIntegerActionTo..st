actions for primitives
defineIntegerActionTo: map
	Integer allSubclasses do: [:each |
		map at: each put: #writeInteger:
	]