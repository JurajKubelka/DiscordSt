tests - payload
testUnclassifiedPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := '{"op":342,"d":42,"s":21,"t":"UNKNOWN"}'.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayUnclassifiedPayload.
	self assert: result code equals: 342.
	self assert: result eventData equals: 42.
	self assert: result sequenceNumber equals: 21.
	self assert: result eventName equals: 'UNKNOWN'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.