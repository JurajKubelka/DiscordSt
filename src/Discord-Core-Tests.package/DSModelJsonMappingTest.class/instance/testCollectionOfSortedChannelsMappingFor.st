tests - channel
testCollectionOfSortedChannelsMappingFor
	| result jsonString jsonResult |
	jsonString := self classToTest jsonCollectionOfChannelsThree.
	result := self read: jsonString as: #CollectionOfSortedChannels mappedTo: #collectionOfSortedChannelsMappingFor:.
	self assert: result class equals: DSChannels.
	self assert: result size equals: 1.
	self assert: result first class equals: DSCategoryChannel.
	self assert: result first subordinateChannels size equals: 2.
	self assert: result first subordinateChannels first class equals: DSGuildVoiceChannel.
	self assert: result first subordinateChannels second class equals: DSGuildTextChannel.
	jsonResult := self write: result mappedTo: #collectionOfSortedChannelsMappingFor:.
	self assert: jsonResult equals: jsonString.