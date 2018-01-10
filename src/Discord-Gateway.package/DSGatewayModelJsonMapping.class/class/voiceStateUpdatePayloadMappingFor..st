mapping - payload
voiceStateUpdatePayloadMappingFor: aNeoJSONMapper
	self payload: DSGatewayDispatchVoiceStateUpdatePayload event: DSVoiceState mappingFor: aNeoJSONMapper.
	self coreModelJsonMapping voiceStateMappingFor: aNeoJSONMapper.