tests - payload
testGuildCreatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonGuildCreatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchGuildCreatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuild.
	self assert: result sequenceNumber equals: 4.
	self assert: result eventName equals: 'GUILD_CREATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.