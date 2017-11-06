mapping - channel
guildCategoryChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSCategoryChannel do: [ :mapping |
	      (mapping mapAccessor: #id).
			(mapping 
				mapProperty: #type 
				getter: [ :object | object type ] 
				setter: [ :object :value | "ignore" ]) valueSchema: DSChannelGuildTextType.
			(mapping mapAccessor: #guildId to: #guild_id).
			(mapping mapAccessor: #position).			
			(mapping mapAccessor: #permissionOverwrites to: #permission_overwrites) 
				valueSchema: #CollectionOfOverwrites.
			(mapping mapAccessor: #name).
			(mapping mapAccessor: #nsfw) ].
	self 
		channelTypeMappingFor: aNeoJSONMapper;
		collectionOfOverwritesMappingFor: aNeoJSONMapper;
		collectionOfUsersMappingFor: aNeoJSONMapper.