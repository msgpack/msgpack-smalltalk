testing
testPackUnknownContainedArray
	"self debug: #testPackUnknownContainedArray"
	| bytes |
	self should: [self arrayWithUnknown messagePacked] raise: MpError.
	
	bytes := self arrayWithUnknown messagePacked: [:settings | settings encodeMode: #unknownAsNil].
		
	self assert: (bytes = self arrayWithNil messagePacked)