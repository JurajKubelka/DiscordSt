mapping - payload
messageCreatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchMessageCreatePayload event: DSMessage mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping messageMappingFor: aNeoJSONMapper.