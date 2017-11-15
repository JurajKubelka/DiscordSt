tests - event
testReadyEventMappingFor
	| result jsonString jsonResult |
	jsonString := self classToTest jsonReadyEvent.
	result := self read: jsonString as: DSGatewayReadyEvent mappedTo: #readyEventMappingFor:.
	self assert: result class equals: DSGatewayReadyEvent.
	self assert: result version equals: 6.
	self assert: result user class equals: DSUser.
	self assert: result privateChannels class equals: DSChannels.
	self assert: result guilds class equals: DSGuilds.
	self assert: result sessionId equals: 21.
	self assert: result traces class equals: Array.
	self assert: result traces size equals: 2.
	self assert: result traces first equals: 'discord-gateway-prd-1-16'.
	self assert: result traces second equals: 'discord-sessions-prd-1-2'.
	jsonResult := self write: result mappedTo: #readyEventMappingFor:.
	self assert: jsonResult equals: jsonString.