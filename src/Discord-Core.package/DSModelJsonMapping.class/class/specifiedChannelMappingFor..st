mapping - channel
specifiedChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #SpecifiedChannel customDo: [ :mapping |
			mapping reader: [ :jsonReader | | unspecifiedChannel |
				unspecifiedChannel := jsonReader nextAs: DSUnspecifiedChannel.
				unspecifiedChannel asSpecifiedChannel ].
			mapping writer: [ :jsonWriter :anObject |
				jsonWriter nextPut: anObject ] ].
	self 
		unspecifiedChannelMappingFor: aNeoJSONMapper;
		guildTextChannelMappingFor: aNeoJSONMapper;
		guildVoiceChannelMappingFor: aNeoJSONMapper;
		guildDMChannelMappingFor: aNeoJSONMapper;
		guildDMGroupChannelMappingFor: aNeoJSONMapper;
		guildCategoryChannelMappingFor: aNeoJSONMapper.