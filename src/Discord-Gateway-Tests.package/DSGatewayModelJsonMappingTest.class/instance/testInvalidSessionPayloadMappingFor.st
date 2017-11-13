tests - payload
testInvalidSessionPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonInvalidSessionPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayInvalidSessionPayload.
	self assert: result code equals: 9.
	self deny: result eventData.
	self assert: result sequenceNumber isNil.
	self assert: result eventName isNil.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.