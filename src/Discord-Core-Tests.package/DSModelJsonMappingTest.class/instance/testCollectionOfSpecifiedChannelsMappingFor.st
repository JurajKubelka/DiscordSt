tests - channel
testCollectionOfSpecifiedChannelsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfChannelsTwo.
	result := self read: jsonString as: #CollectionOfSpecifiedChannels mappedTo: #collectionOfSpecifiedChannelsMappingFor:.
	self assert: result class equals: DSChannels.
	self assert: result size equals: 2.
	self assert: result first class equals: DSGuildTextChannel.
	self assert: result second class equals: DSGuildVoiceChannel.
	jsonResult := self write: result mappedTo: #collectionOfSpecifiedChannelsMappingFor:.
	self assert: jsonResult equals: jsonString.