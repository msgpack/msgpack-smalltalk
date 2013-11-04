reading-ext
readExt8
	| size type |
	size := self readStream next.
	type := self readStream next.
	^self readExtSized: size as: type