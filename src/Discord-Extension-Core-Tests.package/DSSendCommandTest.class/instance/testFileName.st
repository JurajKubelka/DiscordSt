tests
testFileName
	command := self newSendCommand.
	command fileName: self anyString.
	self assert: command fileName equals: self anyString.