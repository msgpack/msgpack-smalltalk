reading-string
readString8
	| size |
	size := self readStream next.
	^(self readStream next: size) asString