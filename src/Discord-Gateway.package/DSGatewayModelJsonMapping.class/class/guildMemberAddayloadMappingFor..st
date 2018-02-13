mapping - payload
guildMemberAddayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchGuildMemberAddPayload event: DSGuildMember mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping guildMemberMappingFor: aNeoJSONMapper.