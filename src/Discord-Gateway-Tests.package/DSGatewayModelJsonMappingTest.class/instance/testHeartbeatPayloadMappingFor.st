tests - payload
testHeartbeatPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonHeartbeatPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayHeartbeatPayload.
	self assert: result code equals: 1.
	self assert: result eventData equals: 42.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.