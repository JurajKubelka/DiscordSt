tests - payload
testGuildMemberAddPayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonGuildMemberAddPayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchGuildMemberAddPayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSGuildMember.
	self assert: result eventData guildId equals: '80351110214675910'.
	self assert: result sequenceNumber equals: 4.
	self assert: result eventName equals: 'GUILD_MEMBER_ADD'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: jsonString.