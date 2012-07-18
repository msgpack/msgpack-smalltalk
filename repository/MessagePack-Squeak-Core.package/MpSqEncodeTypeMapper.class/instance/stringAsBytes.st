encode customization
stringAsBytes
	self actionMap at: ByteString put: #writeString:.
	self actionMap at: WideString put: #writeWideString:.
	self actionMap at: ByteSymbol put: #writeString:.
	self actionMap at: WideSymbol put: #writeWideString:.