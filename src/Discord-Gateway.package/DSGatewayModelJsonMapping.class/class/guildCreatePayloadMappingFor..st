mapping - payload
guildCreatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchGuildCreatePayload event: DSGuild mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping guildMappingFor: aNeoJSONMapper.