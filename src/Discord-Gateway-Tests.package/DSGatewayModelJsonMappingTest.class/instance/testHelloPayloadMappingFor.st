tests - payload
testHelloPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonHelloPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayHelloPayload.
	self assert: result code equals: 10.
	self assert: result eventData class equals: DSGatewayHelloEvent.
	self assert: result sequenceNumber equals: 1.
	self assert: result eventName equals: 'name'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.