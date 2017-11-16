tests
testFileName
	command := self newObjectToTest.
	command fileName: self anyString.
	self assert: command fileName equals: self anyString.