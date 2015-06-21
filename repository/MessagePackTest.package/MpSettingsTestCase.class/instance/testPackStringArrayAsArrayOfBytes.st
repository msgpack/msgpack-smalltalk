testing
testPackStringArrayAsArrayOfBytes
	"self debug: #testPackStringArrayAsArrayOfBytes"
	| bytes |
	self should: [self simpleStringContainedArray messagePacked: [:settings | settings legacyFormat]] raise: MpError.
	
	bytes := self simpleStringContainedArray messagePacked: [:settings | settings 
				legacyFormat;
				stringAsBytes: true].
	
	self assert: (bytes = ((self simpleStringContainedArray 	collect: [:each | each asByteArray]) 
									messagePacked: [:settings | settings legacyFormat]))
			
		
