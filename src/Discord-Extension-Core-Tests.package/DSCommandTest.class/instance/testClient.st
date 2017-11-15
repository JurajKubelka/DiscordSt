tests
testClient
	command := self newObject.
	command client: self anyString.
	self assert: command client equals: self anyString.