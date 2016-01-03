reading-fixext
readFixext16
	| data type |
	type := self readStream next.
	data := self readStream next: 16.
	^self readFixext: data as: type