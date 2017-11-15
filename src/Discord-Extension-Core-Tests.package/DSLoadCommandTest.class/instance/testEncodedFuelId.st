tests-accessing
testEncodedFuelId
	command := self newObject.
	command encodedFuelId: self anyString.
	self assert: command encodedFuelId equals: self anyString.