tests-accessing
testEncodedFuelId
	command := self newCommand.
	command encodedFuelId: self anyString.
	self assert: command encodedFuelId equals: self anyString.