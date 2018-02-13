mapping - payload
guildDeletePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchGuildDeletePayload event: DSGuild mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping guildMappingFor: aNeoJSONMapper.