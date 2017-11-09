mapping - payload
resumePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayResumePayload event: DSGatewayResumeEvent mappingFor: aNeoJSONMapper.
	self resumeEventMappingFor: aNeoJSONMapper.