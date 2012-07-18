writing
writeMap: aDictionary
	| size |
	size := aDictionary size.
	self writeMapSize: size.
	aDictionary keysAndValuesDo: [:key :value | self writeObject: key; writeObject: value].