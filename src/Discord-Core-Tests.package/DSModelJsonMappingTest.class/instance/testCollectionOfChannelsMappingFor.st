tests - channel
testCollectionOfChannelsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfChannelsOne.
	result := self read: jsonString as: #CollectionOfChannels mappedTo: #collectionOfChannelsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSNewChannel.
	jsonResult := self write: result mappedTo: #collectionOfChannelsMappingFor:.
	self assert: jsonResult equals: jsonString.