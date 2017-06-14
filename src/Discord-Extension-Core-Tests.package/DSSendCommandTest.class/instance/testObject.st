tests
testObject
	command := self newSendCommand.
	command object: self anyString.
	self assert: command object equals: self anyString.