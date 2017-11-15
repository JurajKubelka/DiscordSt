mapping - payload
identityPayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayIdentityPayload event: DSGatewayIdentityEvent mappingFor: aNeoJSONMapper.
	self identityEventMappingFor: aNeoJSONMapper.