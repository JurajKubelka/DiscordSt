tests - embed
testCollectionOfFieldsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedFieldsOne.
	result := self read: jsonString as: #CollectionOfFields mappedTo: #collectionOfFieldsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSEmbedField.
	jsonResult := self write: result mappedTo: #collectionOfFieldsMappingFor:.
	self assert: jsonResult equals: jsonString.