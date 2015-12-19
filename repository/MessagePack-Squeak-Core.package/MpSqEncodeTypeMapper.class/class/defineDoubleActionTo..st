actions for primitives
defineDoubleActionTo: map
	map at: Float put: #writeDouble:.
	map at: BoxedFloat64 put: #writeDouble:.
	map at: SmallFloat64 put: #writeDouble: