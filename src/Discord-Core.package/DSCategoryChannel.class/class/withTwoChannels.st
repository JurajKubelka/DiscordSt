examples
withTwoChannels
	<gtExample>
	^ DSModelJsonMapping 
		read: #CollectionOfSortedChannels 
		withMapping: #collectionOfSortedChannelsMappingFor: 
		on: DSModelJsonMapping jsonCollectionOfChannelsThree readStream.