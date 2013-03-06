fixtures
dictionaryWithNil
	| dic |
	dic := Dictionary new.
	dic at: 'key1' put: nil.
	dic at: 'key2' put: 'bbb'.
	^dic