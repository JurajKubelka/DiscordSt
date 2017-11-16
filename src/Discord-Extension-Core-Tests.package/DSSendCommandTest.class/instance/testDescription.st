tests-accessing - wrapper
testDescription
	command := self newObjectToTest.
	command description: self anyString.
	self assert: command description equals: self anyString.