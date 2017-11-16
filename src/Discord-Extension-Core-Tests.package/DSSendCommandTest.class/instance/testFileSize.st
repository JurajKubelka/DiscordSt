tests
testFileSize
	command := self newObjectToTest.
	command serializedData: #[1 2 3 4].
	self assert: command fileSize equals: 4