factory
createArray: size
	size = 0 ifTrue: [ ^#() ].
	^Array new: size