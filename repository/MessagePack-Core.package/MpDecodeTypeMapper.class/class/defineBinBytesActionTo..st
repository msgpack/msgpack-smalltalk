actions for primitives
defineBinBytesActionTo: map
	map at: MpConstants bin8 put: #readBin8.
	map at: MpConstants bin16 put: #readBin16.
	map at: MpConstants bin32 put: #readBin32.