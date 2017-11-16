tests
testObject
	command := self newObjectToTest.
	command object: self anyString.
	self assert: command object equals: self anyString.