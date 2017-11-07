mapping - guild
collectionOfGuildsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfGuilds customDo: [ :mapping |
			mapping listOfElementSchema: DSGuild ].
	self guildMappingFor: aNeoJSONMapper.