tests
testFileSizeDefault
	command := self newObject.
	self assert: command fileSize equals: 0.