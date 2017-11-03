tests - message
testCollectionOfReactionsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfReactionsOne.
	result := self read: jsonString as: #CollectionOfReactions mappedTo: #collectionOfReactionsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSReaction.
	jsonResult := self write: result mappedTo: #collectionOfReactionsMappingFor:.
	self assert: jsonResult equals: jsonString.