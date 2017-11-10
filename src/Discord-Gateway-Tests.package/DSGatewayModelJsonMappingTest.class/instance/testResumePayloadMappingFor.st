tests - payload
testResumePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonResumePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayResumePayload.
	self assert: result code equals: 6.
	self assert: result eventData class equals: DSGatewayResumeEvent.
	self assert: result sequenceNumber isNil.
	self assert: result eventName isNil.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.