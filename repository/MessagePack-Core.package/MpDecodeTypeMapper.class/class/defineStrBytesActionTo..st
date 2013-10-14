actions for primitives
defineStrBytesActionTo: map
	map at: MpConstants str8 put: #readStr8.
	map at: MpConstants str16 put: #readStr16.
	map at: MpConstants str32 put: #readStr32.