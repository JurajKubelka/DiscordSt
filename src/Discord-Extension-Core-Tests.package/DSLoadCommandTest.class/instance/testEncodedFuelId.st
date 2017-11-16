tests-accessing
testEncodedFuelId
	command := self newObjectToTest.
	command encodedFuelId: self anyString.
	self assert: command encodedFuelId equals: self anyString.