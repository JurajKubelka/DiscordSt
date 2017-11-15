mapping - payload
messageUpdatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchMessageUpdatePayload event: DSMessage mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping messageMappingFor: aNeoJSONMapper.