tests - message
testMessageMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonMessage.
	result := self read: jsonString as: DSMessage mappedTo: #messageMappingFor:.
	self assert: result class equals: DSMessage.
	jsonResult := self write: result mappedTo: #messageMappingFor:.
	self assert: jsonResult equals: jsonString.