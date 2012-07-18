actions-dictionary
at: key ifAbsentPut: aBlock
	^self settingsDict at: key ifAbsentPut: aBlock