actions for primitives
defineUnsignedIntegerActionTo: map
	map at: MpConstants uint8 put: #readUint8.
	map at: MpConstants uint16 put: #readUint16.
	map at: MpConstants uint32 put: #readUint32.
	map at: MpConstants uint64 put: #readUint64.