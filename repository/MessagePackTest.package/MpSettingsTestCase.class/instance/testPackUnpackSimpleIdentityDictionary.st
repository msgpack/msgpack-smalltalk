testing
testPackUnpackSimpleIdentityDictionary
	"self debug: #testPackUnpackSimpleIdentityDictionary"
	| bytes convertedDic unpacked1 unpacked2 |
	self should: [self simpleIdentityDictionary messagePacked] raise: MpError.
	
	bytes := self simpleIdentityDictionary messagePacked: [:se | se stringAsBytes: true; encodeMode: #loose].
	
	convertedDic := Dictionary new.
	self simpleIdentityDictionary keysAndValuesDo: [:k :v | convertedDic at:  (MpPortableUtil default bytesFromString: k) put: (MpPortableUtil default bytesFromString: v)].
	
	unpacked1 := Object fromMessagePack:  bytes setting: [:se | se bytesAsString: true].
	unpacked2 := Object fromMessagePack:  convertedDic messagePacked setting: [:se | se bytesAsString: true].
	
	self should: [self collectionEquals: unpacked1 with: unpacked2]
			
		
