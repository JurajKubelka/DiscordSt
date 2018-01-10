mapping - guild
guildMemberMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGuildMember
		do: [ :mapping | 
			(mapping mapAccessor: #user) valueSchema: DSUser.
			mapping mapAccessor: #nick.
			mapping mapAccessor: #roleIds to: #roles.
			(mapping mapAccessor: #joinedAt to: #joined_at) valueSchema: DateAndTime.
			mapping mapAccessor: #deaf.
			mapping mapAccessor: #mute.
			mapping mapAccessor: #guildId to: #guild_id ].
	self 
		userMappingFor: aNeoJSONMapper;
		dateAndTimeMappingFor: aNeoJSONMapper.