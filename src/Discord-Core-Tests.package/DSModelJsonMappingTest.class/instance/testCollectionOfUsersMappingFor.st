tests - message
testCollectionOfUsersMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfUsersOne.
	result := self read: jsonString as: #CollectionOfUsers mappedTo: #collectionOfUsersMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSUser.
	jsonResult := self write: result mappedTo: #collectionOfUsersMappingFor:.
	self assert: jsonResult equals: jsonString.