tests
testClientDefault
	command := self newObjectToTest.
	self assert: command client isNil.