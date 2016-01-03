reading-fixext
readFixext1
	| data type |
	type := self readStream next.
	data := ByteArray with: self readStream next.
	^self readFixext: data as: type