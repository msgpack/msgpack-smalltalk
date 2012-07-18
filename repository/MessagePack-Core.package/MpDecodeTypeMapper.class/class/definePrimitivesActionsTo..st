actions for primitives
definePrimitivesActionsTo: map
	self defineNilActionTo: map.
	self defineFalseActionTo: map.
	self defineTrueActionTo: map.
	self defineFloatActionTo: map.
	self defineDoubleActionTo: map.
	self defineUnsignedIntegerActionTo: map.
	self defineIntegerActionTo: map.
	self defineRawBytesActionTo: map.
	