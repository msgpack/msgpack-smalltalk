accessing
fastBulkWrite
	^self at: #fastBulkWrite ifAbsentPut: [MpPortableUtil default useFastBulkWrite]