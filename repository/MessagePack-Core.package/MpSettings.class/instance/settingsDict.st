accessing-private
settingsDict
	^ settingsDict ifNil: [settingsDict := IdentityDictionary new]