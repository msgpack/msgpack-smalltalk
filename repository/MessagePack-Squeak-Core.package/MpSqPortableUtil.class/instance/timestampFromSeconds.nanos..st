actions
timestampFromSeconds: seconds nanos: nanoSeconds
	| microseconds ts |
	microseconds := (seconds * 1000000) + (nanoSeconds * 0.001).
	ts := DateAndTime utcMicroseconds: microseconds offset: 0.
	^ts