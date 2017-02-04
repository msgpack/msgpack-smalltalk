actions for primitives
defineSymbolActionTo: map
	map at: ByteSymbol put: #writeString:.
	map at: WideSymbol put: #writeWideString:.