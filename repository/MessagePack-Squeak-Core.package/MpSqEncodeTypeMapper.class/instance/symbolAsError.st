encode customization
symbolAsError
	self actionMap at: ByteSymbol put: #signalError:.
	self actionMap at: WideSymbol put: #signalError:.