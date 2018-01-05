tests - message
testRecipientMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonRecipient.
	result := self read: jsonString as: DSUser mappedTo: #recipientMappingFor:.
	self assert: result class equals: DSUser.
	self assert: result id equals: '80351110224678912'.
	jsonResult := self write: result mappedTo: #recipientMappingFor:.
	self assert: jsonResult equals: jsonString.