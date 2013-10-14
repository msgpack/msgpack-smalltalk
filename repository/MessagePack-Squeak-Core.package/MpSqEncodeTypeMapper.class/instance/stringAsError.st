encode customization
stringAsError
	self actionMap at: ByteString put: #signalError:.
	self actionMap at: WideString put: #signalError:.
	self actionMap at: ByteSymbol put: #signalError:.
	self actionMap at: WideSymbol put: #signalError:.