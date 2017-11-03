tests - embed
testCollectionOfFieldsMappingForTwo
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedFieldsTwo.
	result := self read: jsonString as: #CollectionOfFields mappedTo: #collectionOfFieldsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 2.
	self assert: result first class equals: DSEmbedField.
	self assert: result second class equals: DSEmbedField.
	jsonResult := self write: result mappedTo: #collectionOfFieldsMappingFor:.
	self assert: jsonResult equals: jsonString.