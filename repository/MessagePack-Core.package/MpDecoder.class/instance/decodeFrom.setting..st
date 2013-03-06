decoding
decodeFrom: aStream setting: settingBlock
	settingBlock value: self settings.
	self readStream: aStream "binary".
	^self decode