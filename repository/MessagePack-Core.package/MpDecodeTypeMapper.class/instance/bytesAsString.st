decode customization
bytesAsString
	| map |
	map := self actionMap.
	map at: MpConstants map16 put: #readString16.
	map at: MpConstants map32 put: #readString32.
	
	self isBytesAsString: true