encoding
encode: anObject setting: aBlock
	^self encode: anObject on: self writeStream setting: aBlock 