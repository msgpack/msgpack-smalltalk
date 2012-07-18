instance creation
default
	^Default ifNil: [Default := self dialectSpecificClass new]