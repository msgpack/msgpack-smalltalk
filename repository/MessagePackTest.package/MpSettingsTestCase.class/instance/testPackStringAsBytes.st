testing
testPackStringAsBytes
	"self debug: #testPackStringAsBytes"
	| bytes |
	self should: [self simpleString messagePacked:[:se | se legacyFormat]] raise: MpError.
	
	bytes := self simpleString messagePacked: [:settings | settings legacyFormat; stringAsBytes: true].
	
	self assert: (bytes = (self simpleString asByteArray messagePacked:[:se | se legacyFormat])).
	
	self deny: (bytes = (self simpleString asByteArray messagePacked))
			
		
