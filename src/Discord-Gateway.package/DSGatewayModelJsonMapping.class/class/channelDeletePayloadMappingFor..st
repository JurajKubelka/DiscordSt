mapping - payload
channelDeletePayloadMappingFor: aNeoJSONMapper
	self 
		payload: DSGatewayDispatchChannelDeletePayload 
		event: #SpecifiedChannel 
		mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping specifiedChannelMappingFor: aNeoJSONMapper.