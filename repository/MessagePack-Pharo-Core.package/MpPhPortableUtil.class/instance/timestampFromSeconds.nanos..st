actions
timestampFromSeconds: seconds nanos: nanoSeconds
	| ts |
	ts := DateAndTime fromSeconds: seconds + 2177452800 offset: 0.
	nanoSeconds > 0 ifTrue: [ ts setNanoSeconds: nanoSeconds].
	^ts