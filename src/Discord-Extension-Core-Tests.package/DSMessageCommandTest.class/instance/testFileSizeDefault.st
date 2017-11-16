tests
testFileSizeDefault
	command := self newObjectToTest.
	self assert: command fileSize equals: 0.