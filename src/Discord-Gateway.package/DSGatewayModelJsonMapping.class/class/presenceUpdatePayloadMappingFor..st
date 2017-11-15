mapping - payload
presenceUpdatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchPresenceUpdatePayload event: DSPresenceUpdate mappingFor: aNeoJSONMapper.
	self helloEventMappingFor: aNeoJSONMapper.