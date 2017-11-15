tests
testFileSize
	command := self newObject.
	command serializedData: #[1 2 3 4].
	self assert: command fileSize equals: 4