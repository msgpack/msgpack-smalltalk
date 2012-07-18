reading-helper
readMapSized: size
	| dic |
	dic := self createDictionary: size.
	size timesRepeat: [
		dic at: self readObject put: self readObject
	].
	^dic