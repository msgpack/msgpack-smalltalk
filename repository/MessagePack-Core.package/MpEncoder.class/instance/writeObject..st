dispatching
writeObject: anObject 
	^self
		writeObject: anObject
		ifNotApplied: [self signalError]