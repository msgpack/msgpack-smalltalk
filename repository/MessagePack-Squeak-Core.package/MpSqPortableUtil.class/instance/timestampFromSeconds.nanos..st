actions
timestampFromSeconds: seconds nanos: nanoSeconds
	| microseconds ts |
	microseconds := seconds * 1000000.
	nanoSeconds isZero ifFalse: [ | microsPart rem |
		rem := nanoSeconds rem: 1000.
		rem = 0 ifTrue: [
			microsPart := nanoSeconds / 1000.
		] ifFalse: [
			microsPart := nanoSeconds * 0.001.
		].
		microseconds := microseconds + microsPart.
	].
	ts := DateAndTime utcMicroseconds: microseconds offset: 0.
	^ts