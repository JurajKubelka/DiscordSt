tests
testFileSize
	command := self newObjectToTest.
	command fileSize: 34.
	self assert: command fileSize equals: 34.