tests-accessing
testNumberOfExpertsDefault
	package := self newInstanceToBeTested.
	self assert: package numberOfExperts equals: 0.