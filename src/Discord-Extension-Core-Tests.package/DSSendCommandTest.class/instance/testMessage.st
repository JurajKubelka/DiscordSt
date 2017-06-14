tests
testMessage
	command := self newSendCommand.
	command message: self anyString.
	self assert: command message equals: self anyString.