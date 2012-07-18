actions-stream
readDoubleFrom: stream
	| float |
	float := Float new: 2.
	float at: 1 put: (stream nextNumber: 4).
	float at: 2 put: (stream nextNumber: 4).
	^float