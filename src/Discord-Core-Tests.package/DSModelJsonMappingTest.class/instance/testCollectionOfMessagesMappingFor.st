tests - message
testCollectionOfMessagesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfMessagesOne.
	result := self read: jsonString as: #CollectionOfMessages mappedTo: #collectionOfMessagesMappingFor:.
	self assert: result class equals: DSMessages.
	self assert: result size equals: 1.
	self assert: result first class equals: DSMessage.
	jsonResult := self write: result mappedTo: #collectionOfMessagesMappingFor:.
	self assert: jsonResult equals: jsonString.