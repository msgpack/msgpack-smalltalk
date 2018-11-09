reading-string
readFixString: firstByte
	| size |
	size := (firstByte bitAnd: 2r11111).
	size = 0 ifTrue: [ ^ '' ].
	^MpPortableUtil default stringFromBytes: (self readStream next: size)