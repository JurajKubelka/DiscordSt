tests
testClient
	command := self newSendCommand.
	command client: self anyString.
	self assert: command client equals: self anyString.