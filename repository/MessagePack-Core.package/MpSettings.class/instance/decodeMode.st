accessing
decodeMode
	^self at: #decodeMode ifAbsent: [#strict]