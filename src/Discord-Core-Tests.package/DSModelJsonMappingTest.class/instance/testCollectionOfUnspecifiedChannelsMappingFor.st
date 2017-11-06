tests - channel
testCollectionOfUnspecifiedChannelsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfChannelsOne.
	result := self read: jsonString as: #CollectionOfUnspecifiedChannels mappedTo: #collectionOfUnspecifiedChannelsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSUnspecifiedChannel.
	jsonResult := self write: result mappedTo: #collectionOfUnspecifiedChannelsMappingFor:.
	self assert: jsonResult equals: jsonString.