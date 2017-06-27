tests
testChannel
	command := self newCommand.
	command channel: self anyString.
	self assert: command channel equals: self anyString.