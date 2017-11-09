tests - event
testIdentityEventMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonIdentityEvent.
	result := self read: jsonString as: DSGatewayIdentityEvent mappedTo: #identityEventMappingFor:.
	self assert: result class equals: DSGatewayIdentityEvent.
	self assert: result token equals: 'a secret token'.
	self assert: result properties class equals: DSGatewayIdentityProperties.
	self assert: result compress.
	self assert: result largeThreshold equals: 72.
	self assert: result shard class equals: DSGatewayShard.
	self assert: result status class equals: DSGatewayStatusUpdate.
	jsonResult := self write: result mappedTo: #identityEventMappingFor:.
	self assert: jsonResult equals: jsonString.