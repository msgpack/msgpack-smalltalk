writing-timestamp
writeTimestamp: timestamp
	| secondsArray seconds nanos nanosAndSeconds |
	secondsArray := MpPortableUtil default unixSecondsWithNanosecondsFrom: timestamp.
	seconds := secondsArray at: 1.
	nanos := secondsArray at: 2.
	(seconds >> 34) == 0 ifFalse: [ ^ self writeTimestamp96: seconds nanos: nanos ].
	(nanos == 0 and: [seconds < 4294967296]) ifTrue: [ ^self writeTimestamp32: seconds ].
	nanosAndSeconds := (nanos << 34) bitOr: seconds.
	^self writeTimestamp64: nanosAndSeconds