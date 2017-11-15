mapping - payload
helloPayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayHelloPayload event: DSGatewayHelloEvent mappingFor: aNeoJSONMapper.
	self helloEventMappingFor: aNeoJSONMapper.