fixtures
complexDictionaryAfterConverted
	| dic dicIn|
	dic := Dictionary new.
	dicIn := Dictionary new.
	
	self simpleIdentityDictionary keysAndValuesDo: [:k :v | dicIn at:  (MpPortableUtil default bytesFromString: k) put: (MpPortableUtil default bytesFromString: v)].
	
	dic at: (MpPortableUtil default bytesFromString: #key1) put: (MpPortableUtil default bytesFromString: 'aaa').
	dic at: (MpPortableUtil default bytesFromString: #key2) put: dicIn.
	^dic