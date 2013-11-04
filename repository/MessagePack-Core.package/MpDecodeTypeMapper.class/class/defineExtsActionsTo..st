actions for exts
defineExtsActionsTo: map
	map at: MpConstants fixext1 put: #readFixext1.
	map at: MpConstants fixext1 put: #readFixext2.
	map at: MpConstants fixext1 put: #readFixext4.
	map at: MpConstants fixext1 put: #readFixext8.
	map at: MpConstants fixext1 put: #readFixext16.
	map at: MpConstants ext8 put: #readExt8.
	map at: MpConstants ext16 put: #readExt16.
	map at: MpConstants ext32 put: #readExt32.