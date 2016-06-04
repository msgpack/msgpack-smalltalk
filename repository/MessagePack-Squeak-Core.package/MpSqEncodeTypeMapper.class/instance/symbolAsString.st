encode customization
symbolAsString
	self actionMap at: ByteSymbol put: #writeString:.
	self actionMap at: WideSymbol put: #writeWideString:.