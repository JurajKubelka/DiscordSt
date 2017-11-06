mapping - channel
collectionOfSortedChannelsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfSortedChannels customDo: [ :mapping |
			mapping reader: [ :jsonReader | | specifiedChannels |
					specifiedChannels := jsonReader nextAs: #CollectionOfSpecifiedChannels.
					DSSortChannelsCommand new 
						channels: specifiedChannels;
						execute;
						sortedChannels ].
			mapping writer: [ :jsonWriter :anObject |
				self error: 'Currently not supported.'. 
				jsonWriter nextPut: anObject ] ].
	self 
		collectionOfSpecifiedChannelsMappingFor: aNeoJSONMapper.