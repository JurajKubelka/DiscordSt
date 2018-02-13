tests - payload
testChannelCreatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelCreatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchChannelCreatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuildTextChannel.
	self assert: result sequenceNumber equals: 6.
	self assert: result eventName equals: 'CHANNEL_CREATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.