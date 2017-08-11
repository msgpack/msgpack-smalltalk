actions
unixSecondsWithNanosecondsFrom: timestamp
	| duration |
	duration := (timestamp offset: 0) -  DateAndTime unixEpoch.
	^Array with: duration asSeconds with: duration nanoSeconds 