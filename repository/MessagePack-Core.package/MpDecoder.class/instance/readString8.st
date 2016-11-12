reading-string
readString8
	| size |
	size := self readStream next.
	^MpPortableUtil default stringFromBytes: (self readStream next: size)