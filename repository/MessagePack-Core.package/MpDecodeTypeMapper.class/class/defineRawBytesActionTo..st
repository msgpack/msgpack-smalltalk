actions for primitives
defineRawBytesActionTo: map
	map at: MpConstants raw16 put: #readRaw16.
	map at: MpConstants raw32 put: #readRaw32.