reading-ext
readExtSized: size as: type
	type = MpConstants timestamp ifTrue: [ 
		^ self readTimestamp96: self readStream
	 ].
	^MpExtValue typeCode: type data: (self readStream next: size)