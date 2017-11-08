mapping - guild
collectionOfGuildsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfGuilds customDo: [ :mapping |
			mapping listOfType: DSGuilds andElementSchema: DSGuild ].
	self guildMappingFor: aNeoJSONMapper.