tests - payload
testMessageCreatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonMessageCreatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchMessageCreatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSMessage.
	self assert: result sequenceNumber equals: 4.
	self assert: result eventName equals: 'MESSAGE_CREATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.