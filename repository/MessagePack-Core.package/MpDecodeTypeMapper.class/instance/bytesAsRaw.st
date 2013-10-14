decode customization
bytesAsRaw
	"For older MP specification"
	| map |
	map := self actionMap.
	map at: MpConstants str8 put: #signalError.
	map at: MpConstants str16 put: #readRaw16.
	map at: MpConstants str32 put: #readRaw32.
	
	self isBytesAsString: false