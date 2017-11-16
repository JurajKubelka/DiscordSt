tests
testFileSizeHumanString
	command := self newObjectToTest.
	command fileSize: 34.
	self assert: command fileSizeHumanString equals: '34 bytes'.