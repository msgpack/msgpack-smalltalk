encode customization
stringAsBytes
	self actionMap at: ByteString put: #writeString:.
	self actionMap at: TwoByteString put: #writeWideString:.
	self actionMap at: FourByteString put: #writeWideString:.
	self actionMap at: ByteSymbol put: #writeString:.
	self actionMap at: TwoByteSymbol put: #writeWideString:.
	self actionMap at: FourByteString put: #writeWideString:.