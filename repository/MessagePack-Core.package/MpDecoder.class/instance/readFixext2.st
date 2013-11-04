reading-fixext
readFixext2
	| data type |
	type := self readStream next.
	data := self readStream next: 2.
	^self readFixext: data as: type