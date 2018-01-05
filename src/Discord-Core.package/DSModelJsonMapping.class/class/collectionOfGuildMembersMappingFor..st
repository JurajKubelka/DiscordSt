mapping - guild
collectionOfGuildMembersMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfGuildMembers customDo: [ :mapping |
			mapping listOfType: DSGuildMembers andElementSchema: DSGuildMember ].
	self guildMemberMappingFor: aNeoJSONMapper.