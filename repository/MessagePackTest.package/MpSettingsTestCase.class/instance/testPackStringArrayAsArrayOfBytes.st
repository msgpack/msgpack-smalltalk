testing
testPackStringArrayAsArrayOfBytes
	"self debug: #testPackStringArrayAsArrayOfBytes"
	| bytes |
	self should: [self simpleStringContainedArray messagePacked] raise: MpError.
	
	bytes := self simpleStringContainedArray messagePacked: [:settings | settings stringAsBytes: true].
	
	self assert: (bytes = (self simpleStringContainedArray collect: [:each | (MpPortableUtil default bytesFromString: each)]) messagePacked)
			
		
