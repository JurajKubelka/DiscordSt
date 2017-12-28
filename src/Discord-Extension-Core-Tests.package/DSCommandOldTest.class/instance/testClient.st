tests
testClient
	command := self newObjectToTest.
	command client: self anyString.
	self assert: command client equals: self anyString.