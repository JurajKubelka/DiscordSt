tests - message
testCollectionOfEmbedsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfEmbedsOne.
	result := self read: jsonString as: #CollectionOfEmbeds mappedTo: #collectionOfEmbedsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSEmbed.
	jsonResult := self write: result mappedTo: #collectionOfEmbedsMappingFor:.
	self assert: jsonResult equals: jsonString.