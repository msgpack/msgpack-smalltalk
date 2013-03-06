fixtures
dictionaryWithUnknown
	| dic |
	dic := Dictionary new.
	dic at: 'key1' put: Time now.
	dic at: 'key2' put: 'bbb'.
	^dic