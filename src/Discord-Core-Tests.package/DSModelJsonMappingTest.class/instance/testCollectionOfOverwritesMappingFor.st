tests - channel
testCollectionOfOverwritesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfOverwritesOne.
	result := self read: jsonString as: #CollectionOfOverwrites mappedTo: #collectionOfOverwritesMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSOverwrite.
	jsonResult := self write: result mappedTo: #collectionOfOverwritesMappingFor:.
	self assert: jsonResult equals: jsonString.