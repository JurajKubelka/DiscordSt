tests - payload
testDispatchResumedPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonResumedPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchResumedPayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: Dictionary.
	self assert: result sequenceNumber equals: 2.
	self assert: result eventName equals: 'RESUMED'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.