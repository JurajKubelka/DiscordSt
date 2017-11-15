*Discord-Client-Tests
testClientSessionEmailAndPasswordMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonSessionEmailAndPassword.
	result := self read: jsonString as: DSSession mappedTo: #clientSessionEmailAndPasswordMappingFor:.
	self assert: result class equals: DSSession.
	self assert: result email equals: 'name@example.com'.
	self assert: result password equals: 'a secret password'.
	jsonResult := self write: result mappedTo: #clientSessionEmailAndPasswordMappingFor:.
	self assert: jsonResult equals: jsonString.