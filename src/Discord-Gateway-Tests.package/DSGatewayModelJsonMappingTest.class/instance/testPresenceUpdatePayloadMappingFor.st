tests - payload
testPresenceUpdatePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonPresenceUpdatePayload.
	result := self classToTest readPayload: jsonString.
	self assert: result class equals: DSGatewayDispatchPresenceUpdatePayload.
	self assert: result code equals: 0.
	self assert: result eventData class equals: DSPresenceUpdate.
	self assert: result sequenceNumber equals: 8.
	self assert: result eventName equals: 'PRESENCE_UPDATE'.
	jsonResult := self writePayload: result.
	self assert: jsonResult equals: '{"op":0,"d":{"user":{"id":"286153065164304880"},"roles":[],"guild_id":"289187121854545132","status":"idle"},"s":8,"t":"PRESENCE_UPDATE"}'.