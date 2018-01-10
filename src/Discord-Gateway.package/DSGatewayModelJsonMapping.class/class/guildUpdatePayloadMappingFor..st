mapping - payload
guildUpdatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchGuildUpdatePayload event: DSGuild mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping guildMappingFor: aNeoJSONMapper.