tests
testChannel
	command := self newSendCommand.
	command channel: self anyString.
	self assert: command channel equals: self anyString.