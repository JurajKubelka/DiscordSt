mapping - payload
channelUpdatePayloadMappingFor: aNeoJSONMapper
	self 
		payload: DSGatewayDispatchChannelUpdatePayload 
		event: #SpecifiedChannel 
		mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping specifiedChannelMappingFor: aNeoJSONMapper.