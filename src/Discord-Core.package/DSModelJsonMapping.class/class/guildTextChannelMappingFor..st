mapping - channel
guildTextChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGuildTextChannel do: [ :mapping |
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
			(mapping mapAccessor: #topic).
			(mapping mapAccessor: #nsfw).
			(mapping mapAccessor: #lastMessageId to: #last_message_id).
			(mapping mapAccessor: #icon).
			(mapping mapAccessor: #parentId to: #parent_id) ].
	self 
		channelTypeMappingFor: aNeoJSONMapper;
		collectionOfOverwritesMappingFor: aNeoJSONMapper;
		collectionOfUsersMappingFor: aNeoJSONMapper.