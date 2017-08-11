reading-timestamp
readFixedTimestamp: data
	data size = 4 ifTrue: [ ^self readTimestamp32: data readStream].
	^self readTimestamp64: data readStream