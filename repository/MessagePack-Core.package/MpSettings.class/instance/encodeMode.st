accessing
encodeMode
	^self at: #encodeMode ifAbsent: [#strict]