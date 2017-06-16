tests
testText
	command := self newSendCommand.
	command text: self anyString.
	self assert: command text equals: self anyString.