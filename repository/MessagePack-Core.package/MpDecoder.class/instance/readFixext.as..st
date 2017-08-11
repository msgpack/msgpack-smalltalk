reading-fixext
readFixext: data as: type
	type = MpConstants timestamp ifTrue: [ 
		^ self readFixedTimestamp: data
	 ].

	^MpFixextValue typeCode: type data: data