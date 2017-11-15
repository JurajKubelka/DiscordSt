tests - payload
testHeartbeatAckPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonHeartbeatAckPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayHeartbeatAckPayload.
	self assert: result code equals: 11.
	self assert: result eventData isNil.
	self assert: result sequenceNumber isNil.
	self assert: result eventName isNil.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.