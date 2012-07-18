actions for primitives
defineIntegerActionTo: map
	map at: MpConstants int8 put: #readInt8.
	map at: MpConstants int16 put: #readInt16.
	map at: MpConstants int32 put: #readInt32.
	map at: MpConstants int64 put: #readInt64.