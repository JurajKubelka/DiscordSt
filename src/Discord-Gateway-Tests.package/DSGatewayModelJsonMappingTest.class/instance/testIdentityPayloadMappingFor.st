tests - payload
testIdentityPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonIdentityPayload.
	result := self read: jsonString as: DSGatewayIdentityPayload mappedTo: #identityPayloadMappingFor:.
	self assert: result class equals: DSGatewayIdentityPayload.
	self assert: result code equals: 2.
	self assert: result eventData class equals: DSGatewayIdentityEvent.
	self assert: result sequenceNumber isNil.
	self assert: result eventName isNil.
	jsonResult := self write: result mappedTo: #identityPayloadMappingFor:.
	self assert: jsonResult equals: jsonString.