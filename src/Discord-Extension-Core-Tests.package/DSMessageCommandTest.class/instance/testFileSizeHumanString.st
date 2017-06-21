tests
testFileSizeHumanString
	command := self newCommand.
	command fileSize: 34.
	self assert: command fileSizeHumanString equals: '34 bytes'.