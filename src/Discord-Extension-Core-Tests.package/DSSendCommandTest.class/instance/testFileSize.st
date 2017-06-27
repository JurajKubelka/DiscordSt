tests
testFileSize
	command := self newCommand.
	self setSerializedBytes.
	self assert: command fileSize > 4.