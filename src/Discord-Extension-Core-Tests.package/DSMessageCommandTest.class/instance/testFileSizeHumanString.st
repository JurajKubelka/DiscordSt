tests
testFileSizeHumanString
	command := self newObject.
	command fileSize: 34.
	self assert: command fileSizeHumanString equals: '34 bytes'.