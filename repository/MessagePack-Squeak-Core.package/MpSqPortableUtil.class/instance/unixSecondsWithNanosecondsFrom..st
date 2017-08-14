actions
unixSecondsWithNanosecondsFrom: timestamp
	| duration secs nanos |
	duration := (timestamp offset: 0) -  DateAndTime unixEpoch.
	secs := duration asSeconds.
	nanos := duration nanoSeconds.
	(nanos ~= 0 and: [duration <  0 nanoSeconds]) ifTrue: [ 
		secs := secs - 1.
		nanos := 1000000000 + nanos.
	 ].
	^Array with: secs with: nanos