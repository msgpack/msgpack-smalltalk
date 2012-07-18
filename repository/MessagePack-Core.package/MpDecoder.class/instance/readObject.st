dispatching
readObject
	| type |
	type := self readType.
	^ self readObjectOf: type
	