mapping - event
readyEventMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayReadyEvent do: [ :mapping |
	      mapping mapAccessor: #version to: #v.
			(mapping mapAccessor: #user) valueSchema: DSUser.
			(mapping mapAccessor: #privateChannels to: #private_channels) valueSchema: #CollectionOfSpecifiedChannels.
			(mapping mapAccessor: #guilds) valueSchema: #CollectionOfGuilds.
	      mapping mapAccessor: #sessionId to: #session_id.
			mapping mapAccessor: #traces to: #_trace ].
	DSModelJsonMapping
		userMappingFor: aNeoJSONMapper;
		collectionOfSpecifiedChannelsMappingFor: aNeoJSONMapper;
		collectionOfGuildsMappingFor: aNeoJSONMapper.