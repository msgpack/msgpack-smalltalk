actions for primitives
defineStrBytesActionTo: map
	map at: ByteString put: #writeString:.
	map at: WideString put: #writeWideString:.