tests
testFileSizeDefault
	command := self newCommand.
	self assert: command fileSize equals: 0.