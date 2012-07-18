*MessagePack-Core-unpacking
fromMessagePack: bytes
	^ MpDecoder decode: bytes