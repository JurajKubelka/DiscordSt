tests - message
testCollectionOfPresenceUpdatesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfPresenceUpdatesOne.
	result := self read: jsonString as: #CollectionOfPresenceUpdates mappedTo: #collectionOfPresenceUpdatesMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSPresenceUpdate.
	jsonResult := self write: result mappedTo: #collectionOfPresenceUpdatesMappingFor:.
	self assert: jsonResult equals: jsonString.