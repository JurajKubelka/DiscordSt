tests
testFileSize
	command := self newObject.
	command fileSize: 34.
	self assert: command fileSize equals: 34.