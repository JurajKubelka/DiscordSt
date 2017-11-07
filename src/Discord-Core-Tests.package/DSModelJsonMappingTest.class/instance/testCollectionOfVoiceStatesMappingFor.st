tests - message
testCollectionOfVoiceStatesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfVoiceStatesOne.
	result := self read: jsonString as: #CollectionOfVoiceStates mappedTo: #collectionOfVoiceStatesMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSVoiceState.
	jsonResult := self write: result mappedTo: #collectionOfVoiceStatesMappingFor:.
	self assert: jsonResult equals: jsonString.