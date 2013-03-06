testing
testPackUnpackComplexIdentityDictionary
	"self debug: #testPackUnpackComplexIdentityDictionary"
	| bytes convertedDic unpacked1 unpacked2 |
	self should: [self complexIdentityDictionary messagePacked] raise: MpError.
	
	bytes := self complexIdentityDictionary messagePacked: [:se | se stringAsBytes: true; encodeMode: #loose].
	
	convertedDic := self complexDictionaryAfterConverted.
	
	unpacked1 := Object fromMessagePack:  bytes setting: [:se | se bytesAsString: true].
	unpacked2 := Object fromMessagePack:  convertedDic messagePacked setting: [:se | se bytesAsString: true].
	
	self should: [self collectionEquals: unpacked1 with: unpacked2]
			
		
