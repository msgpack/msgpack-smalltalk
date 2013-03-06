fixtures
simpleIdentityDictionary
	| dic |
	dic := IdentityDictionary new.
	dic at: #key1 put: 'aaa'.
	dic at: #key2 put: 'bbb'.
	^dic