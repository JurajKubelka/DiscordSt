mapping - channel
guildDMGroupChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSDirectMessageGroupChannel do: [ :mapping |
			mapping mapAccessor: #id.
			(mapping 
				mapProperty: #type 
				getter: [ :object | object type ] 
				setter: [ :object :value | "ignore" ]) valueSchema: DSChannelGuildTextType.
			mapping mapAccessor: #name.
			mapping mapAccessor: #lastMessageId to: #last_message_id. 
			(mapping mapAccessor: #recipients) valueSchema: #CollectionOfUsers.
			mapping mapAccessor: #icon.
			mapping mapAccessor: #ownerId to: #owner_id ].
	self 
		channelTypeMappingFor: aNeoJSONMapper;
		collectionOfUsersMappingFor: aNeoJSONMapper.