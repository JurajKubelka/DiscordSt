tests - payload
testDispatchReadyEventPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonReadyPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchReadyPayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGatewayReadyEvent.
	self assert: result sequenceNumber equals: '2'.
	self assert: result eventName equals: 'READY'.
	jsonResult := self write: result mappedTo: #payloadMappingFor:.
	self assert: jsonResult equals: jsonString.