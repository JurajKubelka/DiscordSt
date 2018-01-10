mapping - payload
channelCreatePayloadMappingFor: aNeoJSONMapper
	self 
		payload: DSGatewayDispatchChannelCreatePayload 
		event: #SpecifiedChannel 
		mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping specifiedChannelMappingFor: aNeoJSONMapper.