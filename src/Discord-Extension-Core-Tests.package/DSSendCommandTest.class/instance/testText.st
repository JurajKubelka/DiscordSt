tests
testText
	command := self newCommand.
	command text: self anyString.
	self assert: command text equals: self anyString.