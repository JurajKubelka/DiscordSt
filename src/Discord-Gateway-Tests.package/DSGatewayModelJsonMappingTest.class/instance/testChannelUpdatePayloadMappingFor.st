tests - payload
testChannelUpdatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelUpdatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchChannelUpdatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuildTextChannel.
	self assert: result sequenceNumber equals: 6.
	self assert: result eventName equals: 'CHANNEL_UPDATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.