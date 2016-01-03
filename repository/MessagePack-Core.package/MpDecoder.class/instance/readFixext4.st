reading-fixext
readFixext4
	| data type |
	type := self readStream next.
	data := self readStream next: 4.
	^self readFixext: data as: type