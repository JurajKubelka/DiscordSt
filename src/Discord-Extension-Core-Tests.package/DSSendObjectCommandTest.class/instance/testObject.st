tests
testObject
	command := self newCommand.
	command object: self anyString.
	self assert: command object equals: self anyString.