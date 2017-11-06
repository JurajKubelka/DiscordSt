mapping - channel
unspecifiedChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSUnspecifiedChannel do: [ :mapping |
	      (mapping mapAccessor: #id).
			(mapping mapAccessor: #type) valueSchema: DSChannelType.
			(mapping mapAccessor: #guildId to: #guild_id).
			(mapping mapAccessor: #position).			
			(mapping mapAccessor: #permissionOverwrites to: #permission_overwrites) 
				valueSchema: #CollectionOfOverwrites.
			(mapping mapAccessor: #name).
			(mapping mapAccessor: #topic).
			(mapping mapAccessor: #nsfw).
			(mapping mapAccessor: #lastMessageId to: #last_message_id).
			(mapping mapAccessor: #bitrate).
			(mapping mapAccessor: #userLimit to: #user_limit).
			(mapping mapAccessor: #recipients) valueSchema: #CollectionOfUsers.
			(mapping mapAccessor: #icon).
			(mapping mapAccessor: #ownerId to: #owner_id).
			(mapping mapAccessor: #applicationId to: #application_id).
			(mapping mapAccessor: #parentId to: #parent_id) ].
	self 
		channelTypeMappingFor: aNeoJSONMapper;
		collectionOfOverwritesMappingFor: aNeoJSONMapper;
		collectionOfUsersMappingFor: aNeoJSONMapper.