*Discord-Client-Tests
testSessionTokenMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonSessionToken.
	result := self read: jsonString as: DSSession mappedTo: #clientSessionTokenMappingFor:.
	self assert: result class equals: DSSession.
	self assert: result token equals: 'a secret token'.
	jsonResult := self write: result mappedTo: #clientSessionTokenMappingFor:.
	self assert: jsonResult equals: jsonString.