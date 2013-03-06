decoding
decode: byteArray setting: settingBlock 
	settingBlock value: self settings.
	^self decodeFrom: byteArray readStream