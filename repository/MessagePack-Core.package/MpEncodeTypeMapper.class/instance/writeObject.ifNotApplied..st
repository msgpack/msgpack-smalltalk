actions
writeObject: anObject ifNotApplied: aBlock 
	| actionSelector |
	actionMap
		ifNotNil: [actionSelector := self actionMap at: anObject class ifAbsent: [].
			actionSelector ifNotNil: [^ self encoder perform: actionSelector with: anObject]].
		
	actionSelector := anObject mpWriteSelector.
	actionSelector ifNil: [
		actionSelector := self defaultActionMap at: anObject class ifAbsent: [^ self encoder writeUnknown: anObject withHandler: aBlock ]
	].
	^ self encoder perform: actionSelector with: anObject