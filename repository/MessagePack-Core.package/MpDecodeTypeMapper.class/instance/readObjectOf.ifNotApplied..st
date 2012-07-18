actions
readObjectOf: typeCode ifNotApplied: aBlock 
	| actionSelector |
	
	actionMap
		ifNotNil: [actionSelector := self actionMap at: typeCode ifAbsent: [].
			actionSelector ifNotNil: [^ self decoder perform: actionSelector]].
	
	actionSelector := self defaultActionMap
				at: typeCode
				ifAbsent: [^ aBlock value].
	^ self decoder perform: actionSelector