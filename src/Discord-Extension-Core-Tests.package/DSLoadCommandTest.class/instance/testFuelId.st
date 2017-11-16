tests-accessing
testFuelId
	command := self newObjectToTest.
	command fuelId: self anyString.
	self assert: command fuelId equals: self anyString.