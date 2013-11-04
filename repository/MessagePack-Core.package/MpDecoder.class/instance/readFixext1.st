reading-fixext
readFixext1
	| data type |
	type := self readStream next.
	data := self readStream next.
	^self readFixext: data as: type