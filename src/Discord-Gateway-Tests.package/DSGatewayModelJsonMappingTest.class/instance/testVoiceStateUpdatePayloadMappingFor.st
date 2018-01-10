tests - payload
testVoiceStateUpdatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonVoiceStateUpdatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchVoiceStateUpdatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSVoiceState.
	self assert: result sequenceNumber equals: 3.
	self assert: result eventName equals: 'VOICE_STATE_UPDATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.