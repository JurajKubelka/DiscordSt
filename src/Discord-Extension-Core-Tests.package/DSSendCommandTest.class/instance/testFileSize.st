tests
testFileSize
	command := self newCommand.
	command serializedData: #[ 1 2 3 4 ].
	self assert: command fileSize = 4.