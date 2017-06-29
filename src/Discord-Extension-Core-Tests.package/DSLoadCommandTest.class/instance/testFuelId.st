tests-accessing
testFuelId
	command := self newCommand.
	command fuelId: self anyString.
	self assert: command fuelId equals: self anyString.