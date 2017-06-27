tests
testClient
	command := self newCommand.
	command client: self anyString.
	self assert: command client equals: self anyString.