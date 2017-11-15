tests
testFileName
	command := self newObject.
	command fileName: self anyString.
	self assert: command fileName equals: self anyString.