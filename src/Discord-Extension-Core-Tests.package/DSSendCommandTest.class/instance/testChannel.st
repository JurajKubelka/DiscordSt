tests
testChannel
	command := self newObjectToTest.
	command channel: self anyString.
	self assert: command channel equals: self anyString.