decode customization
bytesAsString
	| map |
	map := self actionMap.
	map at: MpConstants str8 put: #readString8.
	map at: MpConstants str16 put: #readString16.
	map at: MpConstants str32 put: #readString32.
	
	self isBytesAsString: true