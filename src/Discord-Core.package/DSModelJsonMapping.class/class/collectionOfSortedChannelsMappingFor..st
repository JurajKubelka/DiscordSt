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
			mapping writer: [ :jsonWriter :aCollection | | flattenedChannels |
				flattenedChannels := DSFlattenChannelsOrderByIdCommand new 
					channels: aCollection;
					execute;
					flattenedChannels.
				jsonWriter nextPut: flattenedChannels ] ].
	self 
		collectionOfSpecifiedChannelsMappingFor: aNeoJSONMapper.