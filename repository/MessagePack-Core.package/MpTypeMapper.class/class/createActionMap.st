factory
createActionMap
	| map |
	map := IdentityDictionary new.
	self definePrimitivesActionsTo: map.
	self defineCompoundsActionsTo: map.
	^map