tests
testFileSize
	command := self newCommand.
	command fileSize: 34.
	self assert: command fileSize equals: 34.