tests - payload
testMessageUpdatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonMessageUpdatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchMessageUpdatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSMessage.
	self assert: result sequenceNumber equals: 5.
	self assert: result eventName equals: 'MESSAGE_UPDATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.