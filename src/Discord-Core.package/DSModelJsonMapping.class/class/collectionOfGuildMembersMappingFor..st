mapping - guild
collectionOfGuildMembersMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfGuildMember customDo: [ :mapping |
			mapping listOfElementSchema: DSGuildMember ].
	self guildMemberMappingFor: aNeoJSONMapper.