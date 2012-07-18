factory
createWriteStream
	self settings fastBulkWrite ifTrue: [
		^MpMemoryWriteStream chunkSized: self settings defaultStreamSize.	
	].

	^WriteStream on: (ByteArray new: self settings defaultStreamSize).
	
	