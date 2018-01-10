tests - payload
testChannelDeletePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelDeletePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchChannelDeletePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuildTextChannel.
	self assert: result sequenceNumber equals: 6.
	self assert: result eventName equals: 'CHANNEL_DELETE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.