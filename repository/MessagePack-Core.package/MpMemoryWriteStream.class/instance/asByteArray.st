actions
asByteArray
	"Answer receiver as byte array."
	
	| bytes pos idx len coll bytesSize |
	bytes := ByteArray new: (bytesSize := self size).
	pos := 0.
	idx := 1.
	[coll := self chunks at: idx.
	len := coll size.
	pos + len < bytesSize]
		whileTrue:
			[bytes
				replaceFrom: pos + 1
				to: (pos := pos + len)
				with: coll
				startingAt: 1.
			idx := idx + 1].
	bytes
		replaceFrom: pos + 1
		to: bytesSize
		with: coll
		startingAt: 1.
	^bytes