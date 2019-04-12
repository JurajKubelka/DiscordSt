public
readMessages: aJSON
	^ self read: #CollectionOfMessages withMapping: #collectionOfMessagesMappingFor: on: aJSON readStream