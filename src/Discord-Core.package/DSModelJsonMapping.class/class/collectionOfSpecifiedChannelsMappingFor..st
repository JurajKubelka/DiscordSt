mapping - channel
collectionOfSpecifiedChannelsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfSpecifiedChannels customDo: [ :mapping |
			mapping reader: [ :jsonReader | | unspecifiedChannels |
					unspecifiedChannels := jsonReader nextAs: #CollectionOfUnspecifiedChannels.
					unspecifiedChannels collect: #asSpecifiedChannel ].
			mapping writer: [ :jsonWriter :anObject |
				jsonWriter nextPut: anObject ] ].
	self 
		collectionOfUnspecifiedChannelsMappingFor: aNeoJSONMapper;
		guildTextChannelMappingFor: aNeoJSONMapper;
		guildVoiceChannelMappingFor: aNeoJSONMapper;
		guildDMChannelMappingFor: aNeoJSONMapper;
		guildDMGroupChannelMappingFor: aNeoJSONMapper;
		guildCategoryChannelMappingFor: aNeoJSONMapper.