mapping - guild
collectionOfGuildMembersMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfGuildMembers customDo: [ :mapping |
			mapping listOfElementSchema: DSGuildMember ].
	self guildMemberMappingFor: aNeoJSONMapper.