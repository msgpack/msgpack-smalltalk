reading-ext
readExtSized: size as: type
	^MpExtValue typeCode: type data: (self readStream next: size)