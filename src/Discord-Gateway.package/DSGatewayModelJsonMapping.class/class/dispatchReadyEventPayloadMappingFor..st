mapping - payload
dispatchReadyEventPayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchReadyPayload event: DSGatewayReadyEvent mappingFor: aNeoJSONMapper.
	self readyEventMappingFor: aNeoJSONMapper.