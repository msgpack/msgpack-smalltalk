actions for primitives
definePrimitivesActionsTo: map
	self defineRawBytesActionTo: map.
	self defineIntegerActionTo: map.
	self defineFloatActionTo: map.
	self defineDoubleActionTo: map.
	self defineNilActionTo: map.
	self defineTrueActionTo: map.
	self defineFalseActionTo: map.
