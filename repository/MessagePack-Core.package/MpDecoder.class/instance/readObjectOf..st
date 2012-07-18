dispatching
readObjectOf: type
	^ self readObjectOf: type ifNotApplied: [self signalError]
	
	