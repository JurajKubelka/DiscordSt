tests
testObject
	command := self newObject.
	command object: self anyString.
	self assert: command object equals: self anyString.