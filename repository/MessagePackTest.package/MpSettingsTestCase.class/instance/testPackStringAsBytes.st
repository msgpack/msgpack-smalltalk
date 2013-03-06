testing
testPackStringAsBytes
	"self debug: #testPackStringAsBytes"
	| bytes |
	self should: [self simpleString messagePacked] raise: MpError.
	
	bytes := self simpleString messagePacked: [:settings | settings stringAsBytes: true].
	
	self assert: (bytes = (MpPortableUtil default bytesFromString: self simpleString) messagePacked)
			
		
