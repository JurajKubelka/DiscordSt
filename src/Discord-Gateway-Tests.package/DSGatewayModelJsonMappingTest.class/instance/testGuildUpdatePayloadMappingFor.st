tests - payload
testGuildUpdatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonGuildUpdatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchGuildUpdatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuild.
	self assert: result sequenceNumber equals: 4.
	self assert: result eventName equals: 'GUILD_UPDATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.