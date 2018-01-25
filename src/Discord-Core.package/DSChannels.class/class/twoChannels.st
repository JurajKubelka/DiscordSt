examples
twoChannels
	<gtExample>
	<label: 'Two channels in one category'>
	^ self jsonMappingClass 
		read: #CollectionOfSortedChannels 
		withMapping: #collectionOfSortedChannelsMappingFor:
		on: self jsonMappingClass jsonCollectionOfChannelsThree readStream