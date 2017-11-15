mapping - channel
guildDMChannelMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSDirectMessageChannel do: [ :mapping |
	      (mapping mapAccessor: #id).
			(mapping 
				mapProperty: #type 
				getter: [ :object | object type ] 
				setter: [ :object :value | "ignore" ]) valueSchema: DSChannelGuildTextType.
			(mapping mapAccessor: #lastMessageId to: #last_message_id). 
			(mapping mapAccessor: #recipients) valueSchema: #CollectionOfUsers ].
	self 
		channelTypeMappingFor: aNeoJSONMapper;
		collectionOfUsersMappingFor: aNeoJSONMapper.