tests - event
testHelloEventMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonHelloEvent.
	result := self read: jsonString as: DSGatewayHelloEvent mappedTo: #helloEventMappingFor:.
	self assert: result class equals: DSGatewayHelloEvent.
	self assert: result heartbeatInterval equals: 41250.
	self assert: result traces class equals: Array.
	self assert: result traces size equals: 1.
	self assert: result traces first equals: 'discord-gateway-prd-1-2'.
	jsonResult := self write: result mappedTo: #helloEventMappingFor:.
	self assert: jsonResult equals: jsonString.