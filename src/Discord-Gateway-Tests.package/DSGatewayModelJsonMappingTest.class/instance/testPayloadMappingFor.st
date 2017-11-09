tests - payload
testPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonIdentityPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayIdentityPayload.
	self assert: result code equals: 2.
	self assert: result eventData class equals: DSGatewayIdentityEvent.
	self assert: result sequenceNumber isNil.
	self assert: result eventName isNil.
	jsonResult := self write: result mappedTo: #payloadMappingFor:.
	self assert: jsonResult equals: jsonString.