testing
testPackUnknownContainedDictionary
	"self debug: #testPackUnknownContainedDictionary"
	| bytes |
	self should: [self dictionaryWithUnknown messagePacked] raise: MpError.
	
	bytes := self dictionaryWithUnknown messagePacked: [:settings | settings stringAsBytes: true; encodeMode: #unknownAsNil].
		
	self assert: (bytes = (self dictionaryWithNil messagePacked: [:settings | settings stringAsBytes: true]))