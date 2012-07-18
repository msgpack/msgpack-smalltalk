accessing
actionMap
	^ actionMap ifNil: [actionMap := self createActionMap]