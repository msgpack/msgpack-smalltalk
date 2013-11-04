reading-fixext
readFixext8
	| data type |
	type := self readStream next.
	data := self readStream next: 8.
	^self readFixext: data as: type