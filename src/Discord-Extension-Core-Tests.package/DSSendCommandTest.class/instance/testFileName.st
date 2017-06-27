tests
testFileName
	command := self newCommand.
	command fileName: self anyString.
	self assert: command fileName equals: self anyString.