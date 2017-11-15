mapping - guild
presenceUpdateMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSPresenceUpdate
		do: [ :mapping | 
			(mapping mapAccessor: #user) valueSchema: DSUser.
			mapping mapAccessor: #roleIds to: #roles.
			(mapping mapAccessor: #game) valueSchema: DSGame.
			mapping mapAccessor: #guildId to: #guild_id.
			(mapping mapAccessor: #status) valueSchema: DSConnectionStatus ].
	self 
		userMappingFor: aNeoJSONMapper;
		gameMappingFor: aNeoJSONMapper;
		connectionStatusMappingFor: aNeoJSONMapper.