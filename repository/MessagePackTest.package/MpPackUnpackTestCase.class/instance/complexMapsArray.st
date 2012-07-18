fixtures
complexMapsArray
	^ self complexCollectionSizes collect: [:each | self createComplexMapSized: each]