tests-accessing - wrapper
testDescription
	command := self newCommand.
	command description: self anyString.
	self assert: command description equals: self anyString.