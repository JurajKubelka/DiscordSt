tests
testChannel
	command := self newObject.
	command channel: self anyString.
	self assert: command channel equals: self anyString.