tests-accessing
testFuelId
	command := self newObject.
	command fuelId: self anyString.
	self assert: command fuelId equals: self anyString.