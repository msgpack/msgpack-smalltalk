dispatching
readObjectOf: type ifNotApplied: aBlock
	
	type <=16rBF ifTrue: [ | fixMapOrArray |
		type <= 16r7F ifTrue: [^ self readPositiveFixNum: type].
		fixMapOrArray := type bitShift: -4.
		fixMapOrArray = 2r1000 ifTrue: [^ self readFixMap: type].
		fixMapOrArray = 2r1001 ifTrue: [^ self readFixArray: type].
		^ self readFixRaw: type.
	].
	(type bitShift: -5) = 2r111 ifTrue: [^ self readNegativeFixNum: type].
	^self typeMapper readObjectOf: type ifNotApplied: aBlock