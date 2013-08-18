actions for primitives
definePrimitivesActionsTo: map
	self defineNilActionTo: map.
	self defineTrueActionTo: map.
	self defineFalseActionTo: map.
	self defineIntegerActionTo: map.
	self defineFloatActionTo: map.
	self defineDoubleActionTo: map.
	self defineBinBytesActionTo: map.
	self defineStrBytesActionTo: map.